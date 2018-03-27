<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notification extends CI_Controller {

	private $loginData;

	public function __construct(){
		parent::__construct();

		$this->loginData = $this->session->userdata('loginData');
		if($this->loginData == NULL){
			redirect(site_url());
		}
	}

	public function index($role_id=NULL, $id = NULL) 
	{

		if($this->session->loginData['Role_Id'] == 3)
		{
			$content['notification'] = $this->User_model->receiver_notification();
		}

		if($this->session->loginData['Role_Id'] == 2)
		{
			$content['notification'] = $this->User_model->hospital_notification();
		}

		$content['subview'] = "list_notifications";
		$this->load->view('dashboard_layout',$content);
	}

	public function get_notification()
	{

		$searchPhrase = $this->input->post('searchPhrase');

		// getting notification records for user and hospitals
		if($this->loginData['Role_Id'] == 3)
		{
			$query = "SELECT ID,Info AS notification_details, date(Created_On) as 'date', if(Is_Viewed=1,'Seen','Not Seen') AS 'status' FROM `tblnotification` WHERE Is_Deleted = 0 and Notify_From =".$this->loginData['Resource_Id'];
			$extraQuery   = " and Info like '%".$searchPhrase."%'";
		}

		if($this->loginData['Role_Id'] == 2)
		{
			$query = " SELECT ID, Message as notification_details, if(Is_Viewed=1,'Seen','Not Seen') as 'status', date(Created_On) as 'date'  FROM `tblnotification` WHERE Is_Deleted = 0 and Notify_To = ".$this->loginData['Resource_Id']." GROUP BY ID Order By ID";
			$extraQuery   = " and Message like '%".$searchPhrase."%'";
		}

		if($searchPhrase != "") $query .= $extraQuery;

		$notification_details = $this->db->query($query)->result();
		$total    = count($notification_details);

		$current  = (int)$this->input->post('current');
		$rowCount = (int)$this->input->post('rowCount');

		//limit conditions
		$limitQuery = " limit ".($current - 1)*($rowCount).",".$rowCount;
		$query      .= $limitQuery;

		// echo $query; die();
		$notification_details = $this->db->query($query)->result();

		$returnArray = array(
			"current"  =>	$this->input->post('current'),
			"rowCount" =>	$this->input->post('rowCount'),
			"total"    =>	$total,
			"rows"     =>	$notification_details,
		);
		echo json_encode($returnArray);
	}

	function open_notification($id = null)
	{

		// Mark the notification as read 
		$query = "update tblnotification
		set Is_Viewed = 1
		where Id= $id";

		$this->db->query($query);

		// Redirect to the section
		$query = "select * from tblnotification
		where Is_Deleted = 0
		and Id= $id";

		$Notification_details = $this->db->query($query)->result();

		if(count($Notification_details) < 1)
		{
			$this->session->set_flashdata('er_msg', 'The record does not exist / permission denied. Please contact your system administrator.');
			redirect(current_url());
		}

		$hospital_notification = $Notification_details[0]->Message;
		$user_notification     = $Notification_details[0]->Info;

		if($this->loginData['Role_Id'] == 3){
			$this->session->set_flashdata('tr_msg',$user_notification);
		}
		if($this->loginData['Role_Id'] == 2){
			$this->session->set_flashdata('tr_msg',$hospital_notification);
		}

		redirect(site_url('notification/index'));
	}

}