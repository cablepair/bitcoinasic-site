<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/site.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/product.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/home.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/about.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/checkout.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/account.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/karmaon/stylesheet/affiliate.css" />
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
</head>
<body<?php if ($body_id) { echo ' id="'.$body_id.'"'; } ?>>
  <header id="header">
    <div class="container clearfix">
        <h1><a href="/">BTCFPGA</a></h1>
        <nav id="main">
          <a href="<?php echo $products; ?>">Products</a>
          <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
          <? if ($logged) { ?>
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
          <?php } else { ?>
            <a href="<?php echo $login; ?>">Log In</a>
            <a href="<?php echo $register; ?>">Register</a>
          <?php } ?>
        </nav>
    </div>
  </header>