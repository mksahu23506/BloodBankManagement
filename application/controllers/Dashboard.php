<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	private $loginData;
	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');	
		$this->loginData = $this->session->userdata("loginData");
		if($this->loginData == NULL)
		{
			redirect(site_url());
		}
	}

	public function index()
	{
		if($this->loginData['Role_Id'] == 2)
		{
			redirect('dashboard/hospital_dashboard');
		}
		elseif($this->loginData['Role_Id'] == 3)
		{
			redirect('dashboard/receiver_dashboard');
		}
		else
		{
			redirect(site_url());
		}
	}
	public function hospital_dashboard()
	{
		if($this->loginData['Role_Id'] == 3)
		{
			redirect('dashboard/receiver_dashboard');
		}
		// write code here for hospital
		$RequestMethod = $this->input->server('REQUEST_METHOD');

		if($RequestMethod == 'POST')
		{
			$this->db->trans_start();
			$Blood_sample = $this->input->post('Blood_Group');
			$this->db->where('Hospital_Id', $this->session->loginData['Resource_Id']);
			$this->db->delete('tblhospital_bloodgroup_mapping');
			// echo "<pre>"; print_r($Blood_sample); exit;
			if(count($Blood_sample) > 0)
			{
				foreach ($Blood_sample as $row)
				{
					$this->db->insert('tblhospital_bloodgroup_mapping', array('Hospital_Id'=>$this->session->loginData['Resource_Id'], 'BloodGroup_Id'=>$row, 'Is_Deleted'=>0));
				}
			}

			$this->db->trans_complete();
			if($this->db->trans_status() === FALSE)
			{
				$this->session->set_flashdata('er_msg','Something went wrong with the Database Connection');
			}
			else
			{
				$this->session->set_flashdata('tr_msg','Blood Group records updated successfully');
			}
		}

		if($this->loginData != NULL)
		{
			$content['type']             = 'Dashboard';
			$content['hospital_details'] = $this->db->get_where('tblhospital_users',array('Email' => $this->session->loginData['Email']))->result();
			
			$content['Blood_Group']      = $this->User_model->hospital_dashboard();
			$content['notification']     = $this->User_model->hospital_notification();
			$content['subview']          = 'hospital_dashboard';
			$this->load->view('dashboard_layout',$content);
		}

		else
		{
			$content['subview'] = 'home_page';
			$this->load->view('_main_layout',$content);
		}
	}

	public function receiver_dashboard()
	{
		if($this->session->loginData['Role_Id'] == 2)
		{
			// hospial
			redirect('dashboard/hospital_dashboard');
			die('error');
		}
		else
		{
			$content['notification'] = $this->User_model->receiver_notification();
			$content['subview']      = 'dashboard';
			$this->load->view('dashboard_layout',$content);
		}
	}

	public function get_bloodBank_detail()
	{
		$searchPhrase = $this->input->post('searchPhrase');

		$query = "SELECT
		a.BloodGroup_Id,
		a.Hospital_Id,
		a.Blood_Group,
		h.Name,
		h.Email,
		h.Mobile,
		h.Address
		FROM
		(
		SELECT
		m.BloodGroup_Id,
		m.Hospital_Id,
		b.Blood_Group
		FROM
		tblhospital_bloodgroup_mapping m
		INNER JOIN tblblood_group b ON
		m.BloodGroup_Id = b.ID
		GROUP BY
		m.Hospital_Id,
		m.BloodGroup_Id
		) a
		INNER JOIN tblhospital_users h ON
		a.Hospital_Id = h.ID
		WHERE
		h.Is_Deleted != 1";

		$extraQuery   = " and (h.Name like '%".$searchPhrase."%'
		or h.Email like '%".$searchPhrase."%'
		or h.Mobile like '%".$searchPhrase."%'
		or h.Address like '%".$searchPhrase."%')";

		if($searchPhrase != "") $query .= $extraQuery;
		// die($query);

		$bloodBank_details = $this->db->query($query)->result();
		$total    = count($bloodBank_details);

		$current  = (int)$this->input->post('current');
		$rowCount = (int)$this->input->post('rowCount');

		//limit conditions
		$limitQuery = " limit ".($current - 1)*($rowCount).",".$rowCount;
		$query      .= $limitQuery;

		// echo $query; die();
		$bloodBank_details = $this->db->query($query)->result();

		$returnArray = array(
			"current"  =>	$this->input->post('current'),
			"rowCount" =>	$this->input->post('rowCount'),
			"total"    =>	$total,
			"rows"     =>	$bloodBank_details,
		);
		echo json_encode($returnArray);
	}

	public function request_blood($hospital_id=NULL,$bloodGroup_Id=NULL)
	{
		// echo $id."<br>".$bloodGroup_Id; exit; 
		// print_r($this->loginData); exit; 
		if($this->loginData != NULL)
		{
			if(empty($hospital_id) && empty($bloodGroup_Id))
			{
				$this->session->set_flashdata('er_msg', 'Please select hospital and blood group');
				redirect('dashboard/receiver_dashboard');
			}

			if($this->loginData['Role_Id'] == 2)
			{
				redirect('dashboard/hospital_dashboard');
			}

			$this->db->trans_start();
			// checking for requesting blood group and user blood group
			if($this->loginData['Blood_Group'] == $bloodGroup_Id)
			{
				$this->session->set_flashdata('er_msg',"You can't request for the same blood group");
				redirect('dashboard/receiver_dashboard');
			}

			// fetching blood group and hospital name as per user request
			$this->db->select('Blood_Group');
			$result      = $this->db->get_where('tblblood_group',array('ID' => $bloodGroup_Id))->result();
			$Blood_Group = $result[0]->Blood_Group;

			$result        = $this->db->get_where('tblhospital_users',array('ID' => $hospital_id))->result();
			$hospital_name = $result[0]->Name;

			$message = strtoupper($this->loginData['Name'])." is requesting for <b>".$Blood_Group." </b>blood group. Please contact user on <b>".$this->loginData['Email']." or ".$this->loginData['Mobile']."</b>";
			$info = "You requested <b>".$hospital_name."</b> for <b>".$Blood_Group."</b> on ".date('d-m-Y');
			// die($message);
			// check here for duplicate notification
			$notificationArr = array(
				'Notify_From' => $this->loginData['Resource_Id'],
				'Notify_To'   => $hospital_id,
				'Message'     => $message,
				'info'        => $info,
				'Is_Viewed'   => 0,
				'Created_By'  => $this->loginData['Resource_Id'],
				'Created_On'  => date('Y-m-d H:i:s'),
				'Is_Deleted'  => 0,
			);

			$this->db->insert('tblnotification',$notificationArr);
			$this->db->trans_complete();
			if($this->db->trans_status() === FALSE){
				$this->session->set_flashdata('er_msg',"Something went wrong with database connection");
			}
			else{
				$this->session->set_flashdata('tr_msg',"Your request has been successfully send to the hospital");
			}
			redirect(site_url('dashboard/receiver_dashboard'));
		}
		else
		{
			redirect(site_url());
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(site_url());
	}

}
