<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends CI_Controller {

	private $loginData;
	public function __construct()
	{
		parent::__construct();
		$this->loginData = $this->session->userdata("loginData");
	}
	public function index($id=NULL,$hospital_Id=NULL,$bloodGroup_Id=NULL)
	{

		if($this->loginData != NULL)
		{
			redirect('Dashboard/index');
		}
		else
		{
			$content['subview'] = 'home_page';
			$this->load->view('_main_layout',$content);
		}
	}

	public function get_bloodBank_detail()
	{
		// getting records for available bloodgroup with hospitals for home page
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
		
		// adding extra query for seraching
		$extraQuery   = " and (h.Name like '%".$searchPhrase."%'
		or h.Email like '%".$searchPhrase."%'
		or h.Mobile like '%".$searchPhrase."%'
		or h.Address like '%".$searchPhrase."%')";

		if($searchPhrase != "") $query .= $extraQuery;

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
		// die($query);
		echo json_encode($returnArray);
	}

	public function request_blood($hospital_Id=NULL,$bloodGroup_Id=NULL)
	{
		
		if($this->loginData != NULL)
		{

			$this->db->where('Role_Id', $this->loginData['Role_Id']);
			$this->db->where('Is_Home', 1);
			$this->db->limit(1);

			$result = $this->db->get('tblpermissions')->result();

			if (count($result) > 0)
			{
				redirect($result[0]->Controller . '/' . $result[0]->Action) . '/' . $hospital_Id . '/' . $bloodGroup_Id;
			}
		}
		else
		{
			redirect(site_url('/receiver/index/?returnUrl=dashboard/request_blood/'.$hospital_Id.'/'.$bloodGroup_Id));
		}
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect(site_url());
	}

}
