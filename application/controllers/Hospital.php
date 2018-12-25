<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hospital extends CI_Controller {

	private $loginData;
	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');	
		$this->loginData = $this->session->userdata("loginData");
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
			$RequestMethod       = $this->input->server('REQUEST_METHOD');
			$hasValidationErrors = false;
		// for hospital signup
			if($RequestMethod == 'POST')
			{
				$this->db->trans_start();

				$name     = $this->input->post('name');
				$email    = $this->input->post('email');
				$mobile   = $this->input->post('mobile');
				$address  = $this->input->post('address');
				$password = $this->input->post('pass');

			// check duplicate records
				$this->db->where('Email', $email);
				$this->db->or_where('Mobile', $mobile);
				$check_records = $this->db->get('tblhospital_users')->num_rows();
				if($check_records > 0)
				{
					$this->session->set_flashdata('er_msg','Records already exist for this Email or Mobile no');
					redirect(current_url());
				}

				$this->form_validation->set_rules('name','Hospital Name','required|min_length[5]');
				$this->form_validation->set_rules('email','Email','required|valid_emails');
				$this->form_validation->set_rules('mobile' ,'Mobile No','required|is_natural|exact_length[10]');
				$this->form_validation->set_rules('address' ,'Address' ,'required');
				$this->form_validation->set_rules('pass' ,'Password' ,'required|min_length[6]');
				$this->form_validation->set_rules('repeat-pass' ,'Password Confirmation' ,'required|matches[pass]');

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
					'Role_Id'    => 2,
					'Name'       => $name,
					'Email'      => $email,
					'Password'   => md5($password),
					'Mobile'     => $mobile,
					'Created_On' => date('Y-m-d H:i:s'),
					'Is_Deleted' => 0,
					'Address'    => $address,
				);

				$this->db->insert('tblhospital_users',$insertArr);
				$this->db->trans_complete();

				if($this->db->trans_status() === FALSE){
					$this->session->set_flashdata('er_msg', 'Error adding details');
				}
				else{
					$this->session->set_flashdata('tr_msg','Details saved, Registration Successfull');
				}

				redirect('hospital/');
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

			$content['subview'] = 'hospital_signup';
			$this->load->view('hospital_layout',$content);
		}
	}

	public function hospital_login()
	{
		if($this->loginData != NULL)
		{
			redirect(site_url());
		}
		
		$RequestMethod = $this->input->server('REQUEST_METHOD');

		if($RequestMethod == 'POST')
		{
			$username = $this->security->xss_clean($this->input->post('email'));
			$password = $this->security->xss_clean($this->input->post('pass'));
			
			if($username == "" or $password == "")
			{
				$this->session->set_flashdata('er_msg', 'Please Enter valid login details');
				redirect(current_url());
			}
			else
			{
				$this->db->where('Email', $username);
				$this->db->where('Password', md5($password));
				$query = $this->db->get('tblhospital_users');
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
						);

						$this->session->set_userdata('loginData',$data);
						redirect('dashboard/hospital_dashboard');
					}
					else
					{
						$this->session->set_flashdata('er_msg', 'Username or Password doesn\'t matched, Plase try again');
						redirect(current_url('/'.$id));
					}
				}
			}
		}

		$content['subview'] = 'hospital_login';
		$this->load->view('login_layout',$content);
	}

	public function edit_hospital($id=NULL)
	{
		if($this->loginData == NULL)
		{
			redirect(site_url('hospital/hospital_login'));
		}

		if($this->session->loginData['Role_Id'] == 3)
		{
			redirect('dashboard/receiver_dashboard');
			$content['notification'] = $this->User_model->edit_hospital();
		}
		if($this->session->loginData['Role_Id'] == 2)
		{
			$content['notification'] = $this->User_model->hospital_notification();
		}

		$RequestMethod       = $this->input->server('REQUEST_METHOD');
		$hasValidationErrors = false;

		if($RequestMethod == 'POST')
		{
			$this->db->trans_start();

			$name     = $this->input->post('name');
			$email    = $this->input->post('email');
			$mobile   = $this->input->post('mobile');
			$address  = $this->input->post('address');

			$this->form_validation->set_rules('name','Hospital Name','required|min_length[5]');
			$this->form_validation->set_rules('email','Email','required|valid_emails');
			$this->form_validation->set_rules('mobile' ,'Mobile No','required|is_natural|exact_length[10]');
			$this->form_validation->set_rules('address' ,'Address' ,'required');

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
				'Address'     => $address,
			);

			$this->db->where('ID', $id);
			$this->db->update('tblhospital_users', $updateArr);
			$this->db->trans_complete();

			if($this->db->trans_status() === FALSE)
			{
				$this->session->set_flashdata('er_msg', 'Error updating details');
			}
			else
			{
				$this->session->set_flashdata('tr_msg','Details Updated Successfull');
			}
			redirect(site_url('dashboard'));
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
		$result = $this->db->get_where('tblhospital_users',array('Email'=> $this->session->loginData['Email']))->result();
		$content['hospital_details'] = $result[0];
		$content['subview'] = 'hospital_edit';
		$this->load->view('dashboard_layout',$content);
	}

}
