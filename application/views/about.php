    <div class="eight columns about-section">
        <?php
        foreach ($content as $value)
        {
            echo '<span class="label about ' . $value->class . '">' . $value->heading . '</span>';
            echo $value->content;
        }
        ?>
    </div>
    <div class="eight columns about-section">
        <span class="label about social">Social Media</span>
        <div class="clearfix">
            <?php
            foreach ($social as $value) {
                echo '<p><span class="socialLabel">' . $value->label . '</span><a class="social" target="_blank" href="' . $value->url .'">' . $value->username . '</a></p>';
            }
            ?>
        </div>
        <span class="label about instagram">My Instagram</span>
        <div class="instagram-photos">
            <?php
            foreach ($instagram as $key => $value) {
                echo '<div class="photo" style="background-image: url('. $value['thumbnail_url'] .')"></div>';
            }
            ?>
        </div>
    </div>
</div><!--#container-->