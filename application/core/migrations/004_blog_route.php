<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Blog_route extends CI_Migration {

	public function __construct() {
		$this->load->dbforge();
		$this->load->database();
	}

	public function up() {
		$fields = array(
			'route' => array(
				'type' => 'VARCHAR',
				'constraint' => 255,
			),
		);

		$this->dbforge->add_column('td_blog_posts', $fields);
	}

	public function down() {
		$this->dbforge->drop_column('td_blog_posts', 'published');
	}

}

/* End of file 001_blog_route.php */
/* Location: ./application/migrations/001_blog_route.php */