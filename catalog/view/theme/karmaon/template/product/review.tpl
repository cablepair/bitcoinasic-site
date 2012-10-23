<?php if ($reviews) { ?>
  <ul>
    <?php foreach ($reviews as $review) { ?>
      <li>
        <h3><?php echo $review['author']; ?></h3>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></div>
        <div class="text"><?php echo $review['text']; ?></div>
        <div class="date"><?php echo $text_on; ?> <?php echo $review['date_added']; ?></div>
      </li>
    <?php } ?>
  </ul>
  <div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
  <div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>