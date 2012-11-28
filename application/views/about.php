    <div class="eight columns about-section">
        <span class="label about bio">Bio</span>
        <p>
            I am a recent graduate of the University of Portsmouth, graduating with a First Class (Hons) 
            in Business Information Systems. I have since started working at a Digital Agency called Content Formula LTD,
            as a Website Developer working mainly on PHP, SharePoint 2007 &amp; 2010 development. My job role also consists
            of working with Project and Account Managers to provide Written Requirements for other developers to use to complete
            build work.
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
        <span class="label about social">Social Media</span>
        <div class="clearfix">
            <p><span class="socialLabel">Twitter</span>@ToxicD89</p>
            <p><span class="socialLabel">LinkedIn</span>Nick White</p>
            <p><span class="socialLabel">Github</span>nwhite89</p>
            <p><span class="socialLabel">Instagram</span>nwhite89</p>
        </div>
    </div>
    <div class="eight columns about-section">
        <span class="label about instagram">My Instagram</span>
        <div class="instagram-photos">
            <?php
            foreach ($instagram as $key => $value) {
                echo '<div class="photo" style="background-image: url('. $value .')"></div>';
            }
            ?>
        </div>
    </div>
</div><!--#container-->