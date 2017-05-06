<?php
$count = 1;
foreach ($modules as $module) { ?>
<?php
echo $module;
if ($count == 1)
{?>
<div class="main-contain">
<ul class="nav nav-pills nav-justified category">
      <li><a href="#Apple">Apple</a></li>

      <li><a href="#Samsung">Samsung</a></li>

      <li><a href="#Sony">Sony</a></li>

      <li class="dropdown">
        <a href="#Brand" class="dropdown-toggle" data-toggle="dropdown">
          Brand
          <span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
          <li><a href="#brand1">Brand 1</a></li>
          <li><a href="#brand1">Brand 2</a></li>
          <li><a href="#brand1">Brand 3</a></li>
        </ul>
      </li>

      <li><a href="#10-100">$10-$100</a></li>

      <li><a href="#101-200">$101-$200</a></li>

      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          Other Price
          <span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
          <li><a href="#">Price 1</a></li>
          <li><a href="#">Price 2</a></li>
          <li><a href="#">Price 3</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          Order
          <span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
          <li><a href="#">Date release</a></li>
          <li><a href="#">Price high to low</a></li>
          <li><a href="#">Price love to high</a></li>
        </ul>
      </li>

    </ul>

<?php
}
$count = $count + 1;
?>

<?php } ?>

</div>