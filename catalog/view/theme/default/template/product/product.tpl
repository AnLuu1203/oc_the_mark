<?php echo $header; ?>

<div>

  <section id="basic_information">
    <div class="container">

      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>

      <div class="row product-detail-holder">

        <div class="col-lg-6 product-image-holder">
          <div class="product-image">
            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
          </div>
        </div>

        <div class="col-lg-6">

          <div class="text-info">

            <h2 class="product-name"><?php echo $heading_title; ?></h2>

            <h2 class="product-price"><?php echo $price; ?></h2>

            <div class="product-color">
              <span class="group">
                <input type=radio name="color" id="color-grey" checked>
                <label for="color-grey" class="background-grey"></label>
              </span>

              <span class="group">
                <input type=radio name="color" id="color-black">
                <label for="color-black" class="background-black"></label>
              </span>

              <span class="group">
                <input type=radio name="color" id="color-gold">
                <label for="color-gold" class="background-gold"></label>
              </span>

              <span class="group">
                <input type=radio name="color" id="color-rose">
                <label for="color-rose" class="background-rose"></label>
              </span>
            </div>

             <div class="add-to-bag" id="product">
              <label class="control-label hidden" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control hidden" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />

              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn-submit btn-add-bag">Add to Bag</button>
            </div>

            <div class="product-configuration">
              <table class="text-left">
                <tbody class="product-info-table">
                  <tr>
                    <td class="title">Dimensions</td>
                    <td class="description">32 GB</td>
                  </tr>

                  <tr>
                    <td class="title">Weight</td>
                    <td class="description">5.04 ounces (143 grams)</td>
                  </tr>

                  <tr>
                    <td class="title">SIM</td>
                    <td class="description">Nano-SIM</td>
                  </tr>

                  <tr>
                    <td class="title">Screen</td>
                    <td class="description">Type  LED-backlit IPS LCD, capacitive touchscreen, 16M colors</td>
                  </tr>

                  <tr>
                    <td class="title">Size</td>
                    <td class="description">4.7 inches</td>
                  </tr>

                  <tr>
                    <td class="title">Resolution</td>
                    <td class="description">138.3 x 67.1 x 7.1 mm</td>
                  </tr>

                  <tr>
                    <td class="title">OS</td>
                    <td class="description">iOS 9</td>
                  </tr>

                  <tr>
                    <td class="title">Chipset</td>
                    <td class="description">Apple A9</td>
                  </tr>

                  <tr>
                    <td class="title">CPU</td>
                    <td class="description">Dual-core 1.84 GHz Twister</td>
                  </tr>

                  <tr>
                    <td class="title">GPU</td>
                    <td class="description">PowerVR GT7600 (six-core graphics)</td>
                  </tr>

                  <tr>
                    <td class="title">RAM</td>
                    <td class="description">2 GB</td>
                  </tr>

                  <tr>
                    <td class="title">Storage</td>
                    <td class="description">64GB</td>
                  </tr>

                  <tr>
                    <td class="title">Camera Primary</td>
                    <td class="description">12 MP</td>
                  </tr>

                  <tr>
                    <td class="title">Camera Secondary</td>
                    <td class="description">5 MP</td>
                  </tr>

                  <tr>
                    <td class="title">Battery</td>
                    <td class="description">1715 mAh</td>
                  </tr>

                </tbody>
              </table>
            </div>

            <div class="sales-promotion">
              <p> KHUYẾN MÃI ÁP DỤNG ĐẾN 01/04 </p>

              <ul class="promotion-list">
                <li>Trả góp 0%</li>
                <li>Tặng phiếu mua Phụ Kiện 400.000đ</li>
                <li>Tặng phiếu mua phụ kiện 50.000đ – 10 triệu khi trả góp</li>
              </ul>
            </div>

          </div>
        </div>

      </div>
    </div>
  </section>

  <section id="product_more_description" class="text-center">
    <div class="box-article" style="height: 200px;">
      <div class="container">

        <p class="detail-title">Paul Higgins</p>

        <div class="small-break-line"></div>

        <div>
          <?php echo $description; ?>
        </div>

      </div>
    </div>

    <div>
      <p class="btn-show-more">
        <button class="btn-submit" onClick="showFullArticle();">Show more</button>
      </p>
    </div>
  </section>

  <section id="product_comment">
    <div class="container">
      <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <p class="text-title">Comments</p>
        </div>
        <div class="col-lg-2"></div>
      </div>

      <div id="review">
        
      </div>

      <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <p class="text-title">Leave Comment</p>

            <div class="comment-form">
              <form  id="form-review">
                <table class="">
                  <tr >
                    <td style="width: 120px"><label for="name" class="form-title-content">Your Name:</label></td>
                    <td><input type="text" name="name" id="name" class="form-control"></td>
                  </tr>

                  <tr >
                    <td style="width: 120px"><label for="name" class="form-title-content">Rating:</label></td>
                    <td>
                      <div class="rate-holder">
                        <span>
                          <label class="rate-bullet rate-bullet-uncheck" id="rate_1" onclick="handleRating(1);"></label>
                        </span>
                        <span>
                          <label class="rate-bullet rate-bullet-uncheck" id="rate_2" onclick="handleRating(2);"></label>
                        </span>
                        <span>
                          <label class="rate-bullet rate-bullet-uncheck" id="rate_3" onclick="handleRating(3);"></label>
                        </span>
                        <span>
                          <label class="rate-bullet rate-bullet-uncheck" id="rate_4" onclick="handleRating(4);"></label>
                        </span>
                        <span>
                          <label class="rate-bullet rate-bullet-uncheck" id="rate_5" onclick="handleRating(5);"></label>
                        </span>
                      </div>
                    </td>
                  </tr>

                  <tr>
                    <td valign="top" id = "cmt-label"><label for="comment" class="form-title-content">Comment:</label></td>
                    <td><textarea id="comment" name="text" class="form-control"></textarea></td>
                  </tr>
                </table>
                <input type="hidden" name="rating" id="rating">

                <div class="text-center">
                  <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn-more btn-submit" >Submit Comment</button>
                </div>
              </form>
            </div>

        </div>
        <div class="col-lg-2"></div>
      </div>

    </div>
  </section>
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button .cart-item-total').html(json['total_item']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

function showFullArticle() {
  $('.box-article').attr('style', "height: ''");
  $('.btn-show-more').addClass('hidden');
}

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

function handleRating(rate) {
  // Clear rating
  for (i = 1; i <= 5; i++) {
    $('#rate_' + i).removeClass('rate-bullet-checked');
    $('#rate_' + i).addClass('rate-bullet-uncheck');
  }

  for (i = 1; i <= rate; i++) {
    $('#rate_' + i).removeClass('rate-bullet-uncheck');
    $('#rate_' + i).addClass('rate-bullet-checked');
    $('#rating').val(rate);
  }
}

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
