<?php
class ControllerProductAll extends Controller {

	public function index() {
		$this->language->load('product/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image'); 
		$this->document->setBodyId('product');

		$this->data['heading_title'] = 'All Products';
		
		$results = $this->model_catalog_product->getProducts(array());
				
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], 443, 300);
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