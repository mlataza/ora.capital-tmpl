<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>{$settings.site_name}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="styles/img/Asset1@4x-8.png" type="image/x-icon" />
    <link rel="stylesheet" href="styles/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles/css/owl.carousel.min.css">
    <link rel="stylesheet" href="styles/css/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="styles/css/animate.css">
    {literal}
    <script>
        document.write("<link rel='stylesheet' type='text/css' href='styles/css/main.css?v=" + Date.now() + "'>")

    </script>
    {/literal}
</head>

<body>
    <header class="header fixed-top smalex" id="header-main-menu">
        <nav class="navbar navbar-expand-lg navbar-light main-nav">
            <div class="container-fluid">
                {literal}
                <a href="/" class="navbar-brand">
                     <img src="styles/img/csc_logo.png" style="width: 150px;">
                </a>
                {/literal}
                <button class="navbar-toggler collapsed" data-toggle="collapse" data-target="#MainNav"> <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="MainNav">
                    <ul class="navbar-nav mr-auto mt-sms-3">
                        <li class="nav-item">
                            <a class="nav-link text-center" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-center" href="/aboutus">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-center" href="/invest">Invest</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-center" href="/affiliate">Affiliate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-center" href="/faq">FAQ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-center" href="/loans">Loans</a>
                        </li>
                    </ul>

                    {if $userinfo.logged != 1}
                    <ul class="navbar-nav navbar-nav--right ml-auto d-flex">
                        <li class="nav-item right-navi d-flex">
                            <a href="/login" class="login nav-btn">Sign In</a>
                        </li>
                        <li class="nav-item right-navi d-flex">
                            <a href="/signup" class="register nav-btn">Sign Up</a>
                        </li>
                    </ul>
                    {else}
                    <ul class="navbar-nav navbar-nav--right ml-auto d-flex">
                        <li class="nav-item right-navi d-flex">
                            <a href="/account" class="register nav-btn">Dashboard</a>
                        </li>
                    </ul>
                    {/if}


                </div>
            </div>
        </nav>
    </header>
    <main>
        <section id="hero" class="about-us-page">
            <div class="container ">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-7 text-center d-flex flex-column pt-0 pt-md-3 pt-lg-5 pb-0 pb-md-3 pb-lg-5">
                        <div> <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                        </div>
                        <h1 style="font-size:2.75rem;line-height:1;padding-top:0.5rem;"><b>To Earn Even More!</b></h1>
                        <h1 style="font-size:2.75rem;line-height:1;padding-top:0.5rem;"><b>Bounty Program</b></h1>
                        <h6 class="pb-0 pt-2">General Bounty Campaign Rules.</h6>
                    </div>

                </div>
                <div class="col-md-12 text-center d-flex flex-column pb-4 pt-4">
                    <div class="row  m-0 bounty-border">



                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-2">
                                <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Facebook Bounty</h5>
                                    <p class="mt-3 mb-0">
                                        Post about {$settings.site_name} on Facebook and earn rewards!
                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$0.50 <small>in BTC per post/share</small></h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-3">
                                <a href="https://twitter.com" target="_blank"> <i class="fab fa-twitter"></i> </a>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Twitter Bounty</h5>
                                    <p class="mt-3 mb-0">
                                        Tweet about {$settings.site_name} on Twitter, share your throughts and be rewarded!
                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$0.50 <small>in BTC per tweet</small></h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-4">
                                <a href="https://youtube.com" target="_blank"> <i class="fab fa-youtube"></i> </a>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Youtube</h5>
                                    <p class="mt-3 mb-0">
                                        Make a video review about {$settings.site_name} on your Youtube Channel and earn rewards!
                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$2 - $20</h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>

                                </div>
                            </div>
                        </div>


                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-6">
                                <a href="https://uk.trustpilot.com" target="_blank" class="d-flex"><i class="fas fa-star"></i></a>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Trustpilot Bounty</h5>
                                    <p class="mt-3 mb-0">
                                        Write a review about {$settings.site_name} on TrustPilot and get rewarded.
                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$0.5 <small>in BTC per review</small></h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>

                                </div>
                            </div>
                        </div>


                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-6">
                                <i class="fab fa-microblog"></i>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Blog Bounty</h5>
                                    <p class="mt-3 mb-0">
                                        Write a blog post or an article about {$settings.site_name} on on steemit or medium and get rewarded.
                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$2 - $20 <small>in BTC</small></h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 text-center d-flex flex-column mb-3 mt-3">
                            <div class="flex-fill d-flex text-left bounty-detail b-6">
                                <i class="fas fa-ad"></i>
                                <div class="flex-fill d-flex flex-column text-left pl-4">
                                    <h5 class="mt-1 mb-1">Google Ads</h5>
                                    <p class="mt-3 mb-0">
                                        Advertise {$settings.site_name} via google ads and get rewarded!


                                    </p>
                                    <div class="multiLevel d-flex pt-4 pb-4">
                                        <div class="level-1 d-flex flex-fill flex-column text-left">
                                            <span class="p-0">Reward</span>
                                            <h5 class="m-0 p-0">$100 - $500 <small>in BTC</small></h5>
                                        </div>
                                    </div>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Submit your entry to <a target="blank" href="mailto:rewards@communitysavers.club">rewards@communitysavers.club</a>
                                    </p>
                                    <p class="mb-2 list">
                                        <i class="fas fa-minus"></i> Apply to the rule available on application!
                                    </p>

                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
            </div>
        </section>
        <section id="affiliate-banners" style="padding-top: 0px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 d-flex justify-content-center flex-column align-items-center mb-5  text-center">
                        <div> <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                        </div>
                        <h1 class="mu34"><b>Your Creativity Makes A Difference.</b></h1>
                        <h6 class="pb-0 pt-2">There are thousands of ways to make an impact. Discover yours with {$settings.site_name} Bounty program.</h6>
                    </div>
                    <div class="col-lg-3 col-6 d-flex flex-column align-items-center text-center"> <i class="icon icon-rr-7-1 head-icon"></i>
                        <h4 class="d4j20">Prepare Videos.</h4>
                        <p class="pb-0 pt-2">Promote the platform, try and tell us about the experience, show how to use it or announce the latest campaigns. You're all free, show your talent.</p>
                    </div>
                    <div class="col-lg-3 col-6 d-flex flex-column align-items-center text-center"> <i class="icon icon-rr-7-2 head-icon"></i>
                        <h4 class="d4j20">Report Bugs.</h4>
                        <p class="pb-0 pt-2">Try the platform. Report to us your problems, any errors you find, anything you see missing and things you wish to improve. We appreciate your feedbacks.</p>
                    </div>
                    <div class="col-lg-3 col-6 mt-4 mt-lg-0 d-flex flex-column align-items-center text-center"> <i class="icon icon-rr-7-3 head-icon"></i>
                        <h4 class="d4j20">Organize An Event.</h4>
                        <p class="pb-0 pt-2">Are you an influencer? Take an action to create an ecosystem on behalf of our team and inform people on a topic of your choice. We are here to help!</p>
                    </div>
                    <div class="col-lg-3 col-6 mt-4 mt-lg-0 d-flex flex-column align-items-center text-center"> <i class="icon icon-rr-4-4 head-icon"></i>
                        <h4 class="d4j20">Design & Share.</h4>
                        <p class="pb-0 pt-2">As {$settings.site_name} team, we love your insightful & unique creations. Banners, logos, tshirts, gigs or a campaign can be more meaningful and effective with your design.</p>
                    </div>
                    <div class="col-lg-12 d-flex justify-content-center flex-column align-items-center text-center mt-5">
                        <div>
                            <a class="btn btn-outline" nohref data-toggle="modal" data-target="#bannersModal" role="button"><span><i class="fas fa-file-alt"></i> Get Banners</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>






    <!-- Modal -->
    <div class="modal fade" id="bannersModal" tabindex="-1" role="dialog" aria-labelledby="bannersModalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="bannersModalTitle">{$settings.site_name} Banners</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row m-0">
                        <div class="col-12 d-flex flex-column p-0">
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">970x90.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/970x90.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/970x90.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">728x90.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/728x90.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/728x90.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">468x60.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/468x60.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/468x60.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">320x100.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/320x100.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/320x100.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">320x50.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/320x50.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/320x50.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">234x60.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/234x60.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/234x60.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">250x250.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/250x250.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/250x250.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">200x200.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/200x200.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/200x200.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">125x125.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/125x125.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/125x125.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">336x280.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/336x280.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/336x280.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">300x250.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/300x250.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/300x250.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">180x150.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/180x150.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/180x150.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">300x600.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/300x600.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/300x600.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">160x600.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/160x600.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/160x600.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                            <div class="banner-list d-flex flex-column">
                                <label class="fl1">120x600.gif</label>
                                <label class="fl1">
                                    <img src="styles/banners/120x600.gif">
                                </label>
                                <label class="fl1">
                                    <input readonly value="&#60;a href=&#34;{$settings.site_url}/?ref={$userinfo.username}&#34; target=&#34;_blank&#34;&#62;&#60;img src=&#34;{$settings.site_url}/styles/banners/120x600.gif&#34; /&#62;&#60;/a&#62;">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





    {include file="footera.tpl"}
