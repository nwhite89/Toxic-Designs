<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Publish_labs extends CI_Migration {

	public function __construct()
	{
		$this->load->dbforge();
	}

	public function up() {
		$fields = array (
			'published' => array (
				'type' => 'TINYINT',
				'constraint' => 1,
			),
		);
		$this->dbforge->add_column('td_lab', $fields);
	}

	public function down() {
		$this->dbforge->drop_column('td_lab', 'published');	
	}

}

/* End of file 003_publish_labs.php */
/* Location: ./application/migrations/003_publish_labs.php */