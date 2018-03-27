<?php 
class User_model extends CI_Model 
{
	private $loginData;

	function __construct()
	{
		parent::__construct();
		$this->loginData = $this->session->userdata('loginData');
	}

	public function hospital_dashboard()
	{
		$query = "SELECT
								    (
								        CASE WHEN gm.Hospital_Id IS NULL THEN 0 ELSE 1
								    END
								) AS Has_Blood,
								bg.ID,
								bg.Blood_Group
								FROM
								    tblblood_group AS bg
								LEFT JOIN tblhospital_bloodgroup_mapping AS gm
								ON
								    gm.BloodGroup_Id = bg.ID AND gm.Hospital_Id = ".$this->loginData['Resource_Id']."
								GROUP BY
								    bg.ID";

		$result = $this->db->query($query)->result();

		return $result;
	}

	public function hospital_notification()
	{
		$query = "SELECT
								    *
								FROM
								    `tblnotification`
								WHERE
								    Is_Viewed = 0 AND Is_Deleted = 0 AND Notify_To = ".$this->loginData['Resource_Id']."
								GROUP BY
								    ID";

		$result = $this->db->query($query)->result();

		return $result;
	}

	public function receiver_notification()
	{
		$query = "SELECT
								    *
								FROM
								    `tblnotification`
								WHERE
								    Is_Viewed = 0 AND Is_Deleted = 0 AND Notify_From = ".$this->loginData['Resource_Id']."
								GROUP BY
								    ID";

		$result = $this->db->query($query)->result();

		return $result;
	}

	public function edit_hospital()
	{
		$query  = "SELECT
								    *
								FROM
								    `tblnotification`
								WHERE
								    Is_Viewed = 0 AND Is_Deleted = 0 AND Notify_From = ".$this->loginData['Resource_Id']."
								GROUP BY
								    ID";

		$result = $this->db->query($query)->result();

		return $result;
	}
}