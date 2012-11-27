    <div id="about-accordion">
        <div class="eight columns about-section">
            <span class="label about bio">Bio</span>
            <p>
                I am a recent graduate of the University of Portsmouth, graduating with a First Class (Hons) 
                in Business Information Systems. I have since started working at a Digital Agency called Content Formula LTD,
                as a Website Developer working mainly on PHP, SharePoint 2007 &amp; 2010 development. My job role also consists
                of working with Project and Account Managers to provide Written Requirements for other developers to use to complete
                build work.
            </p>
            <span class="label about instagram">My Instagram Photos</span>
            <div class="instagram-photos">
                <?php
                foreach ($instagram as $key => $value) {
                    echo '<div class="photo" style="background-image: url('. $value .')"></div>';
                    //echo '<img src="' . $value . '" />';
                }
                ?>
            </div>
        </div>

        <div class="eight columns about-section">
            <span class="label about experience">Coding Skills</span>
            <ul>
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
    <div class="accordion" id="accordion2">
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                      Collapsible Group Item #1
                    </a>
                  </div>
                  <div id="collapseOne" class="accordion-body in collapse" style="height: auto;">
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                      Collapsible Group Item #2
                    </a>
                  </div>
                  <div id="collapseTwo" class="accordion-body collapse" style="height: 0px;">
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                      Collapsible Group Item #3
                    </a>
                  </div>
                  <div id="collapseThree" class="accordion-body collapse" style="height: 0px;">
                    <div class="accordion-inner">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                  </div>
                </div>
              </div>
</div><!--#container-->