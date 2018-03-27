<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Receiver extends CI_Controller {

	private $loginData;
	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');	
		$this->loginData = $this->session->userdata("loginData");
	}
	public function index($hospital_Id=NULL, $bloodGroup_Id=NULL)
	{
		$returnUrl           = $this->input->get('returnUrl');
		$RequestMethod       = $this->input->server('REQUEST_METHOD');
		$hasValidationErrors = false;

		if($RequestMethod == 'POST')
		{
			$this->db->trans_start();

			$name        = $this->input->post('name');
			$email       = $this->input->post('email');
			$mobile      = $this->input->post('mobile');
			$password    = $this->input->post('pass');
			$Blood_Group = $this->input->post('Blood_Group');

				// check duplicate records
			$this->db->where('Email', $email);
			$this->db->or_where('Mobile', $mobile);
			$check_records = $this->db->get('tblusers')->num_rows();
			if($check_records > 0)
			{
				$this->session->set_flashdata('er_msg','Records already exist for this Email or Mobile no');
				redirect(site_url('receiver/index/?returnUrl=').$returnUrl);
			}

			$this->form_validation->set_rules('name','Hospital Name','required|min_length[5]');
			$this->form_validation->set_rules('email','Email','required|valid_emails');
			$this->form_validation->set_rules('mobile' ,'Mobile No','required|is_natural|exact_length[10]');
			$this->form_validation->set_rules('pass' ,'Password' ,'required|min_length[6]');
			$this->form_validation->set_rules('repeat-pass' ,'Password Confirmation' ,'required|matches[pass]');
			$this->form_validation->set_rules('Blood_Group' ,'Blood Group' ,'required');

			if($this->form_validation->run() == FALSE)
			{
				$this->form_validation->set_error_delimiters('<div class="alert alert-danger alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>',
					'</div>');

				$this->session->set_flashdata('er_msg', 'There have been validation error(s), please check the error messages');

				$hasValidationErrors = true;
				goto prepareview;
			}

			$insertArr = array(
				'Role_Id'     => 3,
				'Name'        => $name,
				'Email'       => $email,
				'Password'    => md5($password),
				'Mobile'      => $mobile,
				'Blood_Group' => $Blood_Group,
				'Created_On'  => date('Y-m-d H:i:s'),
				'Is_Deleted'  => 0,
			);

			$this->db->insert('tblusers',$insertArr);

			$this->db->trans_complete();

			if($this->db->trans_status() === FALSE)
			{
				$this->session->set_flashdata('er_msg', 'Error adding details');
			}
			else
			{
				$this->session->set_flashdata('tr_msg','Details saved, Registration Successfull');
			}

			redirect('receiver/?returnUrl='.$returnUrl);
		}

		prepareview:
		if($hasValidationErrors)
		{
			$content['hasValidationErrors'] = true;
		}
		else
		{
			$content['hasValidationErrors'] = false;                
		}

		$content['Blood_Group'] = $this->db->get('tblblood_group')->result();
		$content['returnUrl']   = $returnUrl;
		$content['subview']     = 'receiver_signup';
		$this->load->view('receiver_layout',$content);
	}

	public function receiver_login()
	{
		$returnUrl     = $this->input->get('returnUrl');
		$RequestMethod = $this->input->server('REQUEST_METHOD');

		if($RequestMethod == 'POST')
		{
			$username = $this->security->xss_clean($this->input->post('email'));
			$password = $this->security->xss_clean($this->input->post('pass'));
			$submit   = $this->input->post('submit');
			
			if($username == "" or $password == "")
			{
				$this->session->set_flashdata('er_msg', 'Please Enter valid login details');
				redirect(current_url());
			}
			else
			{
				$this->db->where('Email', $username);
				$this->db->where('Password', md5($password));
				$query = $this->db->get('tblusers');
				
				if(!$query)
				{
					$errNo   = $this->db->_error_number();
					$errMess = $this->db->_error_message();

					$this->session->set_flashdata('er_msg',  $errNo .' : '.$errMess );
					redirect(current_url());
				}
				else
				{
					if($query->num_rows() == 1)
					{

						$row  = $query->row();
						$data = array(
							'Email'       => $row->Email,
							'Role_Id'     => $row->Role_Id,
							'Name'        => $row->Name,
							'Mobile'      => $row->Mobile,
							'Resource_Id' => $row->ID,
							'isLoggedIn'  => true,
							'Blood_Group' => $row->Blood_Group,
						);
						
						$this->db->select('b.Blood_Group');
						$this->db->from('tblblood_group as b');
						$this->db->join('tblusers as u','u.Blood_Group = b.ID','inner');
						$this->db->where('u.ID',$data['Resource_Id']);
						$result = $this->db->get()->result();
						$data['Blood_Type']  = $result[0]->Blood_Group;
						// echo "<pre>"; print_r($result); exit;
						$this->session->set_userdata('loginData',$data);

						$returnUrl = $this->input->get('returnUrl');
						if ($returnUrl != NULL) {
							redirect($returnUrl);
						}
						redirect('dashboard/receiver_dashboard');
					}
					else
					{
						$this->session->set_flashdata('er_msg', 'Username or Password doesn\'t matched, Plase try again');
						redirect(current_url('/'.$id));
					}
				}
			}
		}
		$content['returnUrl'] = $returnUrl;
		$content['subview']   = 'receiver_login';
		$this->load->view('login_layout',$content);
	}

	public function edit_receiver($id=NULL)
	{

		if($this->loginData == NULL)
		{
			redirect(site_url('receiver/receiver_login'));
		}

		$content['notification'] = $this->User_model->receiver_notification();
		$RequestMethod           = $this->input->server('REQUEST_METHOD');
		$hasValidationErrors     = false;

		if($RequestMethod == 'POST')
		{

			$this->db->trans_start();

			$name   = $this->input->post('name');
			$email  = $this->input->post('email');
			$mobile = $this->input->post('mobile');

			$this->form_validation->set_rules('name','Name','required|min_length[5]');
			$this->form_validation->set_rules('email','Email','required|valid_emails');
			$this->form_validation->set_rules('mobile' ,'Mobile No','required|is_natural|exact_length[10]');

			if($this->form_validation->run() == FALSE)
			{
				$this->form_validation->set_error_delimiters('<div class="alert alert-danger alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>',
					'</div>');

				$this->session->set_flashdata('er_msg', 'There have been validation error(s), please check the error messages');

				$hasValidationErrors = true;
				goto prepareview;
			}

			$updateArr = array(
				'Name'        => $name,
				'Email'       => $email,
				'Mobile'      => $mobile,
				'Modified_On' => date('Y-m-d H:i:s'),
			);

			// $this->db->insert('tblhospital_users',$insertArr);
			$this->db->where('ID', $id);
			$this->db->update('tblusers', $updateArr);
			$this->db->trans_complete();

			if($this->db->trans_status() === FALSE)
			{
				$this->session->set_flashdata('er_msg', 'Error updating details');
			}
			else
			{
				$this->session->set_flashdata('tr_msg','Details Updated Successfull');
			}
			redirect(site_url('dashboard/receiver_dashboard'));
		}
		prepareview:
		if($hasValidationErrors)
		{
			$content['hasValidationErrors'] = true;
		}
		else
		{
			$content['hasValidationErrors'] = false;                
		}
		$result = $this->db->get_where('tblusers',array('Email'=> $this->session->loginData['Email']))->result();
		$content['receiver_details'] = $result[0];
		$content['subview']          = 'receiver_edit';
		$this->load->view('dashboard_layout',$content);
	}

}