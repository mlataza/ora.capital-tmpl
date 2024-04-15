        
		{loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}		
		<section class="news" ng-controller="HomeNewsCtrl as vm">
            <div class="container__app container__app_px-15">
                <div class="news__box">
                    <div class="news__box-head d-flex flex-column flex-sm-row align-items-center justify-content-sm-between">
                        <h4 class="news__box-head-title wow animate__fadeInLeft">News:</h4>
                        <a href="?a=news" class="news__box-head-link d-flex align-items-center">
                            <span>All news</span>
                            <svg width="25px" height="25px">
                                <use xlink:href="#arrorw_right_link"></use>
                            </svg>
                        </a>
                    </div>
                   <div class="news__box-list">
                        <div class="row">
						    {if $news}
		                    {counter name=rex_mini start=0 print=0}
                            {foreach from=$news item=n}
							{if $n@iteration > 4}{break}{/if}
                            <article class="col-12 col-sm-6 col-lg-4 col-xl-3 ng-scope ng-isolate-scope">
                                <a class="news__box-list-item pointer js-read_more" href="{" ?a=news&id=`$n.id`"|encurl}" target="_blank">
                                    <picture class="news__box-list-item-picture">
                                        <img alt="" src="{if !empty($n.image_url)}{$n.image_url}{else}styles/assets/app/img/News-{counter name=rex_28}-eng.png{/if}">
                                    </picture>
                                </a>
                            </article>
							{/foreach}
							
							{else}
							<article class="col-12 col-sm-6 col-lg-4 col-xl-3 ng-scope ng-isolate-scope">
                                <a class="news__box-list-item pointer js-read_more">
                                    <picture class="news__box-list-item-picture">
                                        <img alt="" src="styles/assets/app/img/News-1-eng.png">
                                    </picture>
                                </a>
                            </article>
							<article class="col-12 col-sm-6 col-lg-4 col-xl-3 ng-scope ng-isolate-scope">
                                <a class="news__box-list-item pointer js-read_more">
                                    <picture class="news__box-list-item-picture">
                                        <img alt="" src="styles/assets/app/img/News-2-eng.png">
                                    </picture>
                                </a>
                            </article>
							{/if}
							
                        </div>
                    </div>
                </div>
            </div>
        </section>