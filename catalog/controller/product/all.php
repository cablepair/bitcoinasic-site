<?php
class ControllerProductAll extends Controller {

	public function index() {
		$this->language->load('product/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image'); 
		$this->document->setBodyId('product');

		$this->data['heading_title'] = 'All Products';

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('product/all', '', 'SSL'),
			'separator' => false
		);
		$this->data['breadcrumbs'][] = array(
			'text'      => 'All',
			'href'      => $this->url->link('product/all', '', 'SSL'),
			'separator' => $this->language->get('text_separator')
		);

		$results = $this->model_catalog_product->getProducts(array());
				
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], 445, 445);
			} else {
				$image = false;
			}
				
			$this->data['products'][] = array(
				'thumb'       => $image,
				'name'        => $result['name'],
				'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id'], 'SSL')
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/all.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/all.tpl';
		} else {
			$this->template = 'default/template/product/all.tpl';
		}
		
		$this->children = array(
			'common/footer',
			'common/header'
		);

		$this->response->setOutput($this->render());
	}
}