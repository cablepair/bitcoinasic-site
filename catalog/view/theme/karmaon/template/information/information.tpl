<?php echo $header; ?>
<div id="breadcrumbs">
  <div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="normal">
  <header>
    <h1 class="header"><?php echo $heading_title; ?></h1>
  </header>
  <?php echo $description; ?>
</div>
<?php echo $footer; ?>