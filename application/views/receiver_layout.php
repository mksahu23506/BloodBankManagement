<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<?php $this->load->view('include/receiver_header'); ?>
<?php $this->load->view('components/'.$subview); ?>
<?php $this->load->view('include/receiver_footer'); ?>