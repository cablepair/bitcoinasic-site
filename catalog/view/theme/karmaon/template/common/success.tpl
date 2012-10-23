<?php echo $header; ?>
<div id="breadcrumbs">
  <div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
</div>
<div class="page">
  <div class="container clearfix">
    <div class="banner clearfix">
      <div class="check">✓</div>
      <h1 class="title"><?php echo $heading_title; ?></h1>
    </div>
    <div class="summary">
      <?php echo $text_message; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>