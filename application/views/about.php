    <div id="about-accordion">
        <div class="eight columns about-section">
            <span class="label about bio" data-toggle="collapse" data-parent="#about-accordion" href="#collapseOne">Bio</span>
            <p id="collapseOne">
                I am a recent graduate of the University of Portsmouth, graduating with a First Class (Hons) 
                in Business Information Systems. I have since started working at a Digital Agency called Content Formula LTD,
                as a Website Developer working mainly on PHP, SharePoint 2007 &amp; 2010 development. My job role also consists
                of working with Project and Account Managers to provide Written Requirements for other developers to use to complete
                build work.
            </p>
            <span class="label about instagram" data-toggle="collapse" data-parent="#about-accordion" href="#collapseTwo">My Instagram Photos</span>
            <div class="instagram-photos" id="collapseTwo">
                <?php
                foreach ($instagram as $key => $value) {
                    echo '<div class="photo" style="background-image: url('. $value .')"></div>';
                    //echo '<img src="' . $value . '" />';
                }
                ?>
            </div>
        </div>
        <div class="eight columns about-section">
            <span class="label about experience" data-toggle="collapse" data-parent="#about-accordion" href="#collapseThree">Coding Skills</span>
            <ul id="collapseThree">
                <li>HTML5</li>
                <li>CSS3</li>
                <li>Node.js</li>
                <li>PHP</li>
                <li>Git</li>
                <li>JavaScript</li>
                <li>jQuery</li>
                <li>MySQL</li>
                <li>SharePoint 2007 / 2010</li>
                <li>XML</li>
                <li>XSLT</li>
                <li>Oracle SQL</li>
            </ul>
        </div>
    </div><!--#about-acccordion-->
</div><!--#container-->