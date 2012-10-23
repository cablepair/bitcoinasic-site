<?php  
class ControllerCommonAbout extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setBodyId('about');

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/about.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/about.tpl';
		} else {
			$this->template = 'default/template/common/about.tpl';
		}
		
		$this->children = array(
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>