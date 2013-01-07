            <div id="tweets" class="sixteen columns clearfix">
                <?php
                    $x=0;
                    foreach ($tweets as $tweet)
                    {
                        $x++;
                        ?>
                            <div class="tweet-cont clearfix<?php if($x==1) { echo ' active';} ?>">
                                <div class="tweet-card">
                                    <p class="tag">
                                        #<?php echo $tweet['hashtag']; ?>
                                    </p>
                                    <div class="posted clearfix">
                                        <span class="by"><a href="http://twitter.com/<?php echo $tweet['user'];?>" target="_blank">@<?php echo $tweet['user'];?></a></span><span class="date"><?php echo $tweet['date'];?></span>
                                    </div>
                                    <div class="tweet">
                                        <?php echo $tweet['text'];?>
                                    </div>
                                </div>
                            </div>
                        <?php
                    }
                ?>
            </div>
            <div class="sixteen columns clearfix">
                <div id="tweet3d">
                    <ul>
                        <?php
                            $y = 0;
                            foreach ($tweets as $tweet) 
                            {
                                $y++;
                                if ($y < 7) {
                                ?>
                                <li>
                                    <p class="hashtag">
                                         #<?php echo $tweet['hashtag']; ?>
                                    </p>
                                    <p class="tweet">
                                        <?php echo $tweet['text']; ?>
                                    </p>
                                    <p class="footer clearfix">
                                        <span class="date"><?php echo $tweet['date']; ?></span>
                                        <span class="user"><a href="http://twitter.com/<?php echo $tweet['user'];?>" target="_blank" title="I love weener - ooorah!">@<?php echo $tweet['user'];?></a></span>
                                    </p>
                                </li>
                                <?php
                                }
                                }
                            ?>
                    </ul>
                </div>
            </div>
            <div class="one-third column development" id="home-projects">
                <h3 class="development">Development</h3>
                <?php
                    $x=0;
                    foreach ($devprojects as $project)
                    {
                        $x++;
                        if ($x < 4) {
                            echo "<div class=\"five columns";
                            if ($x == 1) { echo " active"; } 
                            echo "\">";
                                echo "<div class=\"project\" rel=" . $project->id . ">";
                                    echo "<p>" . $project->title . "</p>";
                                    echo "<div style=\"background-image: url(" . base_url() . $project->thumbnail . ")\">&nbsp;</div>";
                                echo "</div>";
                            echo "</div>";
                        }
                    }
                ?>
            </div>
            <div class="one-third column">
                <h3>Three Core Principles</h3>
                <p>Skeleton is built on three core principles:</p>
                <ul class="square">
                    <li><strong>A Responsive Grid Down To Mobile</strong>: Elegant scaling from a browser to tablets to mobile.</li>
                    <li><strong>Fast to Start</strong>: It's a tool for rapid development with best practices</li>
                    <li><strong>Style Agnostic</strong>: It provides the most basic, beautiful styles, but is meant to be overwritten.</li>
                </ul>
            </div>
            <div class="one-third column">
                <h3 class="blog">Blog</h3>
                <?php
                foreach ($posts as $post) {
                    $postDate = strtotime($post->blog_date);
                    ?>
                    <div class="clearfix blog-posts">
                        <div class="cal-container fl">
                            <div class="cal-icon-mon">
                                <?php
                                    echo date('M', $postDate);
                                ?>
                            </div>
                            <div class="cal-icon-day">
                                <?php
                                    echo date('d', $postDate);
                                ?>
                            </div>
                        </div>
                        <div class="fl text">
                            <p class="blog-title">
                                <a href="<?php echo base_url(); ?>blog/posts/<?php echo $post->id; ?>" title="<?php echo $post->blog_title; ?>">
                                    <?php
                                        echo $post->blog_title;
                                    ?>
                                </a>
                            </p>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>

        </div><!-- container -->