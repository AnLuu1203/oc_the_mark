<div class="row product">
<ul>
  <?php foreach ($products as $product) { ?>
    <li class="product-detail col-lg-4 col-md-4 col-sm-6 col-xs-12">
      <div class="phone-image">
        <img src="<?php echo $product['thumb'] ?>" class="Apple-iPhone-5c-Blue">
      </div>
      <div class="phone-detail">
        <p class="phone-name"><?php echo $product['name']; ?></p>
        <p class="phone-price"><?php echo $product['price']; ?></p>
        <table>
          <tr>
            <td class="feature">Screen</td>
            <td class="feature-info"> LED-backlit IPS LCD, 4.7", HD</td>
          </tr>
          <tr>
            <td class="feature">OS</td>
            <td class="feature-info">iOS</td>
          </tr>
          <tr>
            <td class="feature">Camera</td>
            <td class="feature-info">8mpx back, 1.2mpx front</td>
          </tr>
          <tr>
            <td class="feature">CPU</td>
            <td class="feature-info">Apple A8 2 core 64-bit</td>
          </tr>
          <tr>
            <td class="feature">Storage</td>
            <td class="feature-info">16 - 32 GB</td>
          </tr>
          <tr>
            <td class="feature">Size</td>
            <td class="feature-info">138.1 mm - 67 mm - 6.9 mm</td>
          </tr>
        </table>

        <button type="button" class="btn-more"><a href="<?php echo $product['href']; ?>">More Detail</a></button>
        <!-- 
        <button type="button" class="btn-more" style="border-color:red; color:red;" onclick="cart.add('<?php echo $product['product_id']; ?>');" >Add To Bag</button>
        -->
      </div>
    </li>

  <?php } ?>

</ul>

</div>


