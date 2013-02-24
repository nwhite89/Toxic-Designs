<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Publish_projects extends CI_Migration {

	public function up()
	{
		$fields = (array(
			'published' => array(
				'type' => 'TINYINT',
				'constraint' => 1
			),
		));
		
		$this->dbforge->add_column('td_development', $fields);
	}

	public function down()
	{
		$this->dbforge->drop_column('td_development', 'published');
	}
}
?>