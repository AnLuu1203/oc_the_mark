<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
  <div class="comments">
    <div class="row comment">
      <div class="col-lg-2"></div>
      <div class="col-lg-1">
        <div class="comment-avatar-holder"><img class="comment-avatar" src="https://dhqbrvplips7x.cloudfront.net/webchat/1.0.23/agent-e202505f.png"></div>
      </div>
      <div class="col-lg-7">
        <p class="comment-name"><?php echo $review['author']; ?></p>
        <div class="rate-holder">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($review['rating'] < $i) { ?>
               <span>
                <label class="rate-bullet rate-bullet-uncheck"></label>
              </span>
            <?php } else { ?>
              <span>
                <label class="rate-bullet rate-bullet-checked"></label>
              </span>
            <?php } ?>
          <?php } ?>
        </div>
        <p class="comment-content"><?php echo $review['text']; ?></p>
      </div>
      <div class="col-lg-2"></div>
    </div>
  </div>

<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
