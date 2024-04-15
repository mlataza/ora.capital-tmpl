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

                <a href="/" class="navbar-brand">
                    {literal}
                     <img src="styles/img/csc_logo.png" style="width: 150px;">
                    {/literal}
                </a>

                <button class="navbar-toggler collapsed" data-toggle="collapse" data-target="#MainNav">
                    <span class="navbar-toggler-icon"></span>
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

                <div class="row align-items-center justify-content-center" style="min-height:32vh;">

                    <div class="col-lg-7 text-center d-flex flex-column pt-5">
                        <div>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                            <i class="icon icon-star color-yellow"></i>
                        </div>
                        <h3 style="font-size:3.1rem;line-height:1;padding-top:1rem;"><b>Experts, Talents & Pioneers.</b></h3>
                        <h3 style="font-size:2.0rem;line-height:1;padding-top:1rem;">Those who love to seek, learn and apply.</h3>
                        <p class="pb-4 pt-4">The investment team has a unique mixture of technology and operating expertise in the distributed ledger systems as well as financial and capital markets experience – this unique skill set allows for sophisticated technical and valuation analysis within the portfolio construction process. With team located all around the world, {$settings.site_name} has 24-hour coverage of the constantly trading digital asset.</p>
                        <div class=" pb-4">
                            <a class="btn btn-outline m-1" href="https://find-and-update.company-information.service.gov.uk/company/14669000/filing-history/MzM2OTQ3NTIwOWFkaXF6a2N4/document?format=pdf&download=0" target="_blank" role="button"><span><i class="fas fa-file-alt"></i> Company Certification</span></a>
                        </div>
                    </div>

                    <div class="col-md-8 col-lg-10 text-center d-flex pb-lg-5 ">
                        <div class="row flex-fill">
                            <div class="col-lg-3 col-6 ">
                                <div class="site-stats d-flex flex-column justify-content-lg-center align-items-lg-center">
                                    <p class="d-flex align-items-center"><i class="icon icon-star3"></i>Online for</p>
                                    <b>{$settings.site_days_online_generated}<span> DAYS</span></b>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 ">
                                <div class="site-stats d-flex flex-column justify-content-lg-center align-items-lg-center">
                                    <p class="d-flex align-items-center"><i class="icon icon-pricing-table5"></i>Active Users</p>
                                    <b id="activeusersx">&nbsp;</b>
                                </div>
                            </div>
                            <div class="col-lg-3 mt-3 mt-lg-0 col-6 ">
                                <div class="site-stats d-flex flex-column justify-content-lg-center align-items-lg-center">
                                    <p class="d-flex align-items-center"><i class="icon icon-user"></i>Visitors Online</p>
                                    <b id="onlineusersx">&nbsp;</b>
                                </div>
                            </div>
                            <div class="col-lg-3 mt-3 mt-lg-0 col-6 ">
                                <div class="site-stats d-flex flex-column justify-content-lg-center align-items-lg-center">
                                    <p class="d-flex align-items-center"><i class="icon icon-chart2"></i>Total Deposits</p>
                                    <b id="totaldepositsx">&nbsp;<span>USD</span></b>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </section>



        <section id="about-tabs">

            <div class="container">
                <div class="row dark our-team">

                    <div class="col-md-6">
                        <div class="">
                            <div class="d-flex">
                                <i class="icon icon-chart2 head-icon" style="background:#fff;"></i>
                            </div>

                            <h4 class="pb-2"><b>Meet The CEO - Oliver Roha Anwar</b></h4>
                            <p class="pb-2">
                                Oliver has been a driving force in the management and development of ORA HOLDINGS LTD organization. With executive roles as Chief Marketing Officer, Chief Operations Officer, and President, he helped steer the company through a prolonged period of triple-digit growth running up to its earlier stages, investor strategy making & team construction. He has extensive experience in growing and managing regulated businesses. He has held senior, including C-Suite level, management positions across a number of sectors including banking, insurance and finance.
                            </p>

                            <div>
                                <a class="btn" href="/signup" role="button"><span>Open a {$settings.site_name} Account </span></a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6 mt-4 mt-md-0 member-info d-flex">
                        <img src="styles/img/1.jpg" class="our-boss">

                        <div class="social d-flex flex-column">
                            
                            <div class="ceo-info">
                                <h6>
                                    Oliver Roha Anwar / CEO
                                </h6>
                                <p>
                                    "Technology is the best investment. We pursue what we believe in with strong and safe returns and for those who believe in the same thing as us will get the same."
                                </p>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="row our-members">
                    <div class="col-md-6 member-info2 d-flex align-items-center">
                        <img src="styles/img/2.jpg" class="us">
                        <div class="social d-flex flex-column ml-4">
                            <div class="ceo-info">
                                <h6>Michael P. Lynch / Head of Investment Strategy</h6>
                                <p class="m-0">
                                    Head of Investment Strategy of The Start-up Loans Company. He directs and manages the execution of the company’s overall investment strategy, maintains the firm's global economic forecast and advises its portfolio managers on key themes and risks.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-4 mt-md-0 member-info2 d-flex align-items-center">
                        <img src="styles/img/3.jpg" class="us">
                        <div class="social d-flex flex-column ml-4">
                            <div class="ceo-info">
                                <h6>Richard Bourque / Chief Technology Officer</h6>
                                <p class="m-0">
                                    Richard Bourque is the Chief Technology Officer of The Start-up Loans Company. With extensive past experience as a technology executive, product leader, and architect who has built innovative technology at-scale for the world’s largest financial institutions.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>



        <section id="affiliate-home">

            <div class="container">
                <div class="row align-items-center">

                    <div class="col-md-6 col-lg-8 pb-5 pt-5 pr-lg-5 d-flex flex-column justify-content-center">
                        <div class="d-flex">
                            <i class="icon icon-marketing head-icon"></i>
                        </div>
                        <h4 class="pb-2">Why Us?</h4>
                        <p class="mb-5">
                            {$settings.site_name} is a product of The Start-up Loans Company and the first registered digital asset investment company that provides services with a secure and fast transaction infrastructure developed by world standards, in governence of the expert team and experienced advisory board.
                        </p>

                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4">
                                <i class="icon icon-todo head-icon-small"></i>
                            </div>
                            <div class="pr-5">
                                <h6 class="pb-0">Reinvent Investing.</h6>
                                <p class="mb-0">
                                    We are a startup incubator and an investment company built on the belief that innovative, creative solutions deliver more value and a better experience.
                                </p>
                            </div>
                        </div>

                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4">
                                <i class="icon icon-reviews head-icon-small"></i>
                            </div>
                            <div class="pr-5">
                                <h6 class="pb-0">World-class experience.</h6>
                                <p class="mb-0">
                                    Accessing investment should be seamless. We’re committed to making the process simple and accessible for everyone.
                                </p>
                            </div>
                        </div>


                    </div>

                    <div class="col-md-6 col-lg-4 pb-5 pt-5">
                        <div class="row">
                            <div class="col-sm-12 d-flex align-items-stretch">
                                <div class="ref-box common-ref d-flex flex-column text-center align-items-center" style="background:#E8F1EB;">
                                    <h6 class="mb-0">Company Certification</h6>
                                    {literal}
                                    <div class="daf d-flex pb-4 pt-5 flex-column all-center">
                                        <svg id="Layer_35" viewBox="-7 0 495 495.648" height="72" width="72" xmlns="http://www.w3.org/2000/svg">
                                            <path d="m144.324219 136h192v80h-192zm0 0" fill="#f0bc5e" />
                                            <path d="m259.988281 495.648438-19.425781-77.703126 15.523438-3.890624 12.574218 50.296874 18.085938-18.085937 20.59375 10.292969-18.679688-62.261719 15.328125-4.59375 29.320313 97.738281-43.410156-21.707031zm0 0" />
                                            <path d="m304.324219 112h-128v-48h128zm0 0" fill="#f0bc5e" />
                                            <path d="m144.324219 136h88v16h-88zm0 0" fill="#353448" />
                                            <path d="m248.324219 136h88v16h-88zm0 0" fill="#353448" />
                                            <path d="m144.324219 200h88v16h-88zm0 0" fill="#353448" />
                                            <path d="m320.324219 200h16v16h-16zm0 0" fill="#353448" />
                                            <path d="m248.324219 200h56v16h-56zm0 0" fill="#353448" />
                                            <path d="m144.324219 168h192v16h-192zm0 0" fill="#353448" />
                                            <path d="m.324219 0v384h166.75v-16h-150.75v-352h448v352h-150.746094v16h166.746094v-384zm0 0" fill="#353448" />
                                            <path d="m95.683594 48h289.28125c3.527344 24.472656 22.886718 43.839844 47.359375 47.359375v193.28125c-24.472657 3.527344-43.839844 22.886719-47.359375 47.359375h-62.898438v16h126.257813v-320h-416v320h126.246093v-16h-62.886718c-3.527344-24.472656-22.886719-43.839844-47.359375-47.359375v-193.28125c24.472656-3.519531 43.839843-22.886719 47.359375-47.359375zm336.640625 288h-31.191407c3.191407-15.648438 15.542969-28 31.191407-31.191406zm0-288v31.191406c-15.648438-3.191406-28-15.542968-31.191407-31.191406zm-352.808594 0c-3.191406 15.648438-15.542969 28-31.191406 31.191406v-31.191406zm0 288h-31.191406v-31.191406c15.648437 3.191406 28 15.542968 31.191406 31.191406zm0 0" fill="#353448" />
                                            <path d="m220.660156 495.648438-29.914062-29.914063-43.40625 21.707031 29.320312-97.738281 15.328125 4.59375-18.679687 62.261719 20.589844-10.292969 18.089843 18.085937 12.574219-50.296874 15.523438 3.890624zm0 0" fill="#353448" />
                                            <path d="m240.324219 424c-8.863281 0-17.113281-3.617188-23.070313-9.910156-8.296875 2.460937-17.242187 1.484375-24.929687-2.945313-7.679688-4.441406-13.007813-11.679687-15.023438-20.121093-8.441406-2.015626-15.679687-7.34375-20.121093-15.023438-4.433594-7.679688-5.421876-16.617188-2.945313-24.929688-6.292969-5.957031-9.910156-14.207031-9.910156-23.070312s3.617187-17.113281 9.910156-23.070312c-2.476563-8.3125-1.488281-17.25 2.945313-24.929688 4.441406-7.679688 11.679687-13.007812 20.121093-15.023438 2.015625-8.441406 7.34375-15.679687 15.023438-20.121093 7.6875-4.429688 16.632812-5.414063 24.929687-2.945313 5.957032-6.292968 14.207032-9.910156 23.070313-9.910156s17.113281 3.617188 23.070312 9.910156c8.296875-2.46875 17.234375-1.484375 24.929688 2.945313 7.679687 4.441406 13.007812 11.679687 15.023437 20.121093 8.441406 2.015626 15.679688 7.34375 20.121094 15.023438 4.429688 7.679688 5.421875 16.617188 2.941406 24.929688 6.296875 5.957031 9.914063 14.207031 9.914063 23.070312s-3.617188 17.113281-9.914063 23.070312c2.480469 8.3125 1.488282 17.25-2.941406 24.929688-4.441406 7.679688-11.679688 13.007812-20.121094 15.023438-2.015625 8.441406-7.34375 15.679687-15.023437 20.121093-7.695313 4.429688-16.632813 5.40625-24.929688 2.945313-5.957031 6.292968-14.207031 9.910156-23.070312 9.910156zm0 0" fill="#f0bc5e" />
                                            <path d="m240.324219 256c-39.695313 0-72 32.304688-72 72s32.304687 72 72 72c39.695312 0 72-32.304688 72-72s-32.304688-72-72-72zm0 128c-30.878907 0-56-25.121094-56-56s25.121093-56 56-56c30.878906 0 56 25.121094 56 56s-25.121094 56-56 56zm0 0" fill="#353448" />
                                            <path d="m240.324219 304c4.40625 0 8 3.59375 8 8h16c0-10.414062-6.710938-19.214844-16-22.527344v-9.472656h-16v9.472656c-9.289063 3.3125-16 12.113282-16 22.527344 0 13.230469 10.769531 24 24 24 4.40625 0 8 3.59375 8 8s-3.59375 8-8 8c-4.410157 0-8-3.59375-8-8h-16c0 10.414062 6.710937 19.214844 16 22.527344v9.472656h16v-9.472656c9.289062-3.3125 16-12.113282 16-22.527344 0-13.230469-10.769531-24-24-24-4.410157 0-8-3.59375-8-8s3.589843-8 8-8zm0 0" fill="#353448" />
                                        </svg>

                                    </div>
                                    {/literal}
                                    <a class="btn btn-outline ml-0" target="blank" href="https://find-and-update.company-information.service.gov.uk/company/14669000" role="button"><span><i class="fas fa-file-alt"></i>Company# 14669000; Verify</span></a>
                                    <p class="mt-3 mb-0">ORA HOLDINGS LTD is a certificated & registered finance company that started its work in February 2023 in England.</p>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>


            </div>
        </section>

    </main>
	 
	<span id="activeusers" style="display:none!important;">{$settings.info_box_total_accounts_generated}</span>
    <span id="onlineusers" style="display:none!important;">{$settings.show_info_box_members_online_generated}</span>
    <span id="totaldeposits" style="display:none!important;">{$settings.info_box_deposit_funds_generated}</span>


    {include file="footerb.tpl"}
