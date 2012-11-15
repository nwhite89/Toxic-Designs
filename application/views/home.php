<div class="container">
            <div class="sixteen columns header">
                <h1>nick white</h1>
                <h4><span>&lt;&#47;</span> front-end web developer <span>&gt;</span></h4>
            </div>
            <div class="sixteen columns navi">
                <ul>
                    <li>
                        <a class="home" href="#">home</a>
                    </li>
                    <li>
                        <a class="labs" href="#">labs</a>
                    </li>
                    <li>
                        <a class="development" href="#">development</a>
                    </li>
                    <li>
                        <a class="blog" href="#">blog</a>
                    </li>
                    <li>
                        <a class="about-me" href="#">about me</a>
                    </li>
                </ul>
            </div>
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
                                        #nodejs
                                    </p>
                                    <div class="posted clearfix">
                                        <span class="by"><a href="http://twitter.com/<?php echo $tweet->from_user;?>" target="_blank">@<?php echo $tweet->from_user;?></a></span><span class="date"><?php echo date("d/m/Y", strtotime($tweet->created_at));?></span>
                                    </div>
                                    <div class="tweet">
                                        <?php echo $tweet->text;?>
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
                            foreach ($tweets as $tweet) 
                            {
                                ?>
                                <li>
                                    <p class="hashtag">
                                        #nodejs
                                    </p>
                                    <p class="tweet">
                                        <?php echo $tweet->text; ?>
                                    </p>
                                    <p class="footer clearfix">
                                        <span class="date"><?php echo date("d/m/Y", strtotime($tweet->created_at));?></span>
                                        <span class="user"><a href="http://twitter.com/<?php echo $tweet->from_user;?>" target="_blank">@<?php echo $tweet->from_user;?></a></span>
                                    </p>
                                </li>
                                <?php
                                }
                            ?>
                    </ul>
                </div>
            </div>
            <div class="one-third column">
                <h3>About Skeleton?</h3>
                <p>Skeleton is a small collection of well-organized CSS files that can help you rapidly develop sites that look beautiful at any size, be it a 17" laptop screen or an iPhone. It's based on a responsive grid, but also provides very basic CSS for typography, buttons, forms and media queries. Go ahead, resize this super basic page to see the grid in action.</p>
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
                <h3>Docs &amp; Support</h3>
                <p>The easiest way to really get started with Skeleton is to check out the full docs and info at <a href="http://www.getskeleton.com">www.getskeleton.com.</a>. Skeleton is also open-source and has a <a href="https://github.com/dhgamache/skeleton">project on git</a>, so check that out if you want to report bugs or create a pull request. If you have any questions, thoughts, concerns or feedback, please don't hesitate to email me at <a href="mailto:hi@getskeleton.com">hi@getskeleton.com</a>.</p>
            </div>

        </div><!-- container -->