    <div class="eight columns about-section">
        <span class="label about bio">Bio</span>
        <p>
            I recently graduated with a First Class (Hons) in Business Information Systems whilst attending the University of Portsmouth. Since which I have returned working at a 
            digital agency called Content Formula LTD, that I completed a sandwich course during my third year of study.
            <br /><br />
            My current job roles is Website Developer which I work mainly with PHP, SharePoint 2007 and 2010. 
            Using different skills whether it is jQuery, CSS3, HTML5 or XSLT to meet the clients desired end result. 
            Other than development I also work largely with Project and Account Managers to provide written requirements for other developers to build from as well as working on IA 
            and checking wireframes to ensure what is proposed is possible.
        </p>
        <span class="label about skills">Coding Skills</span>
        <ul>
            <li>HTML5</li>
            <li>CSS3</li>
            <li>Node.js</li>
            <li>PHP</li>
            <li>Codeigniter</li>
            <li>Git</li>
            <li>JavaScript</li>
            <li>jQuery</li>
            <li>MySQL</li>
            <li>SharePoint 2007 / 2010</li>
            <li>XML</li>
            <li>XSLT</li>
        </ul>
    </div>
    <div class="eight columns about-section">
        <span class="label about social">Social Media</span>
        <div class="clearfix">
            <?php
            foreach ($social as $value) {
                echo '<p><span class="socialLabel">' . $value->label . '</span><a target="_blank" href="' . $value->url .'">' . $value->username . '</a></p>';
            }
            ?>
            <!--p><span class="socialLabel">Twitter</span>@ToxicD89</p>
            <p><span class="socialLabel">LinkedIn</span>Nick White</p>
            <p><span class="socialLabel">Github</span>nwhite89</p>
            <p><span class="socialLabel">Instagram</span>nwhite89</p-->
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