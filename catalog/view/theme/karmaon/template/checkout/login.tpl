<div id="login-section" class="clearfix">
  <div class="register">
    <h2>Don't have an account?</h2>
    <a class="button green" href="<? echo $register; ?>">Register Account</a>
  </div>
  <div id="login" class="login">
    <fieldset>
      <legend><?php echo $text_returning_customer; ?></legend>
      <input type="text" id="email" name="email" class="text" placeholder="Email">
      <input type="password" id="password" name="password" class="text" placeholder="Password">
    </fieldset>
    <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="green button">
  </div>
  <script type="text/javascript">

  </script>
</div>