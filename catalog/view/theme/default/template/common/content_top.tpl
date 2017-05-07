<?php
$count = 1;
foreach ($modules as $module) { ?>
<?php
echo $module;
if ($count == 1)
{?>
<div class="main-contain">


<?php
}
$count = $count + 1;
?>

<?php } ?>

</div>