        </div>
        <footer id="footer">
          <div class="container clearfix">
            <nav>
              <h3><?php echo $text_service; ?></h3>
              <ul>
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              </ul>
            </nav>
            <nav>
              <ul>
                <h3><?php echo $text_account; ?></h3>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
              </ul>
            </nav>
            <nav>
              <h3><?php echo $text_information; ?></h3>
              <ul>
                <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>
              </ul>
            </nav>
            <div class="brand">
              <h1>BTCFPGA</h1>
            </div>
          </div>
        </footer>
    </body>
</html>