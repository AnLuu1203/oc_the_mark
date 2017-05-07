<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<style type="text/css">
  .menu-list li:hover{
    background-color: rgba(165, 165, 165, 0.26) !important;
  }

  .btn-inverse {
    color: #ffffff;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    background-color: #363636;
    background-image: linear-gradient(to bottom, #000, #000);
    background-repeat: repeat-x;
    border-color: #222222 #222222 #000000;
  }
  .btn-inverse:hover, .btn-inverse:active, .btn-inverse.active, .btn-inverse.disabled, .btn-inverse[disabled] {
    background-color: #222222;
    color: #ffffff;
    background-image: linear-gradient(to bottom, #333333, #111111);
  }
</style>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header>
<nav id="top" style="background-color: #000; height: 52px;">
  <div class="container">
    <!-- <?php echo $currency; ?>
    <?php echo $language; ?> -->

    <div class="row">
      <div class="col-sm-1" style="padding-left: 0px; padding-right: 0px;">
        <div id="logo" style="height: 48px;">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" style="width: 100%;"/>
          </a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>

      <div class="col-sm-6">
        <?php if ($categories) { ?>
        <div style="position: relative;" style="background-color: black; border-width: 0px;">

          <nav id="menu" class="navbar" style="position: relative; float: left; border-width: 0px;">

            <div class="collapse navbar-collapse navbar-ex1-collapse" style="background-color: black; border-width: 0px;">

              <ul class="nav navbar-nav menu-list" style="background-color: black; border-width: 0px; height: 46px;">

                <?php foreach ($categories as $category) { ?>
                <?php if ($category['children']) { ?>

                <li >
                  <a class="menu" href="<?php echo $category['href']; ?>" style="padding-top: 2px !important; padding-bottom: 2px !important; text-align: center; font-size: 11px; color: #fff !important;">
                    <div class="icon">
                      <img src="<?php echo $category['image']; ?>">
                    </div>
                    <div class="text"><?php echo $category['name']; ?></div>
                  </a>
                </li>

                <!-- <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                </li> -->

                <?php } else { ?>
                <!-- <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li> -->

                <li>
                  <a class="menu" href="<?php echo $category['href']; ?>" style="padding-top: 2px !important; padding-bottom: 2px !important; text-align: center; font-size: 11px; color: #fff !important;">
                    <div class="icon">
                      <img src="<?php echo $category['image']; ?>">
                    </div>
                    <div class="text"><?php echo $category['name']; ?></div>
                  </a>
                </li>

                <?php } ?>
                <?php } ?>
              </ul>
            </div>
          </nav>
        </div>
        <?php } ?>

      </div>

      <div class="col-sm-1">

        <?php echo $cart; ?>

      </div>

      <div class="col-sm-3">

        <?php echo $search; ?>

      </div>

      <div class="col-sm-1">

        <div id="top-links" class="nav">

        <ul class="list-inline">

          <li class="dropdown">
            <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown" style="color: #FFF; text-shadow: 0 1px 0 #000; text-decoration: none; line-height: 32px;">
              <!-- <i class="fa fa-user"></i> -->
              <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span>
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
              <?php if ($logged) { ?>
              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
              <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
              <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
              <?php } else { ?>
              <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
              <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
              <?php } ?>
            </ul>
          </li>

          <!-- <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li> -->

          <!-- <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li> -->

          <!-- <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li> -->
        </ul>
      </div>
      </div>
    </div>
  </div>
</nav>
</header>
