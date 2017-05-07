<style>
  .feature-head {
    display: inline-block;
    width: 100%;
    height: 50px;
    line-height:50px;
    background-color: #efefef;
    font-size: 24px;
    font-weight: bold;
    letter-spacing: 0px;
    color: rgba(72, 72, 72, 0.85);
    vertical-align:midle;
    padding-left:50px;
  }
</style>


<?php
$count = 1;
foreach ($modules as $module) { ?>
<?php
echo $module;
if ($count == 1)
{?>
<div class="main-contain">
<p class="feature-head">Feature</p>

<?php
}
$count = $count + 1;
?>

<?php } ?>

</div>