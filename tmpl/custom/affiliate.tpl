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
                        <h1 style="font-size:2.75rem;line-height:1;padding-top:1rem;">It Takes Friends</h1>
                        <h1 style="font-size:2.75rem;line-height:1;padding-top:0.5rem;"><b>To Earn Even More!</b></h1>
                        <h6 class="pb-0 pt-2">Earn up to 10% commission every time your friends invest.</h6>
                    </div>
                    <div class="col-md-12 pb-5 pt-5 d-flex ref-table-detail">
                        <div class="row m-0" style="width:100%;">
                            <div class="col-12 p-0 afflixx">
                                <div class="owl-carousel affece owl-loaded">
                                    <div class="owl-stage-outer">
                                        {literal}
                                        <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1180px;">
                                            <div class="owl-item active" style="width: 590px;">
                                                <div class="d-flex align-items-stretch flex-column comm-n p-3 pt-4 pb-4 p-lg-5">
                                                    <h3>Regular Referral Program</h3>
                                                    <div class="ref-box common-ref d-flex flex-column text-center align-items-center mb-4 mt-4">
                                                        <div class="daf d-flex pb-4 pt-4 flex-column all-center">
                                                            <svg id="Layer_35" viewBox="0 0 64 64" height="72" width="72" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="m25.649 48.937-2.623 2.624c-.662.66-1.026 1.539-1.026 2.474v6.965h-4.351c.218-.456.351-.961.351-1.5 0-1.93-1.57-3.5-3.5-3.5h-8.5v2h8.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5h-3.5-6.5c-.827 0-1.5-.673-1.5-1.5v-3.5c0-4.963 4.038-9 9-9h3.488c3.149 0 6.199-.924 8.82-2.671l2.246-1.497-1.109-1.664-2.246 1.497c-.54.36-1.102.676-1.68.955.929-1.307 1.481-2.899 1.481-4.62 0-4.411-3.589-8-8-8s-8 3.589-8 8c0 2.498 1.152 4.73 2.951 6.199-5.088.963-8.951 5.436-8.951 10.801v3.5c0 1.93 1.57 3.5 3.5 3.5h6.5 3.5 9.5v-8.965c0-.4.156-.777.439-1.061l2.624-2.624zm-16.649-9.937c0-3.309 2.691-6 6-6s6 2.691 6 6-2.691 6-6 6-6-2.691-6-6z" fill="#353448"></path>
                                                                <path d="m58 27h-28c-2.757 0-5 2.243-5 5v16c0 2.757 2.243 5 5 5h9l1-5h8l1 5h9c2.757 0 5-2.243 5-5v-16c0-2.757-2.243-5-5-5z" fill="#f0bc5e"></path>
                                                                <g fill="#353448">
                                                                    <path d="m54 5h-18c0-2.206-1.794-4-4-4h-18c-2.206 0-4 1.794-4 4v12c0 2.206 1.794 4 4 4h5.734l8.266 4.723v-4.723h4c0 2.206 1.794 4 4 4h3v4.723l8.266-4.723h6.734c2.206 0 4-1.794 4-4v-12c0-2.206-1.794-4-4-4zm-28 14v3.277l-5.734-3.277h-3.96c.89-2.373 3.154-4 5.777-4h1.835c2.622 0 4.887 1.627 5.777 4zm-3-6c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm9-4v10h-.202c-.724-2.635-2.692-4.682-5.198-5.547.863-.898 1.4-2.112 1.4-3.453 0-2.757-2.243-5-5-5s-5 2.243-5 5c0 1.341.537 2.555 1.4 3.453-2.507.865-4.474 2.911-5.198 5.547h-.202c-1.103 0-2-.897-2-2v-12c0-1.103.897-2 2-2h18c1.103 0 2 .897 2 2v.556c-1.19.694-2 1.97-2 3.444zm14.734 14-5.734 3.277v-3.277h-2.694c.89-2.373 3.154-4 5.777-4h1.835c2.622 0 4.887 1.627 5.777 4zm-1.734-6c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm11 4c0 1.103-.897 2-2 2h-.202c-.724-2.635-2.692-4.682-5.198-5.547.863-.898 1.4-2.112 1.4-3.453 0-2.757-2.243-5-5-5s-5 2.243-5 5c0 1.341.537 2.555 1.4 3.453-2.507.865-4.474 2.911-5.198 5.547h-.202c-1.103 0-2-.897-2-2v-12c0-1.103.897-2 2-2h18c1.103 0 2 .897 2 2z"></path>
                                                                    <path d="m55 57h-4.18l-2-10h-9.64l-2 10h-4.18c-2.757 0-5 2.243-5 5v1h32v-1c0-2.757-2.243-5-5-5zm-14.18-8h6.36l1.6 8h-9.56zm-10.649 12c.413-1.164 1.525-2 2.829-2h22c1.304 0 2.416.836 2.829 2z"></path>
                                                                    <path d="m57 31h2v2h-2z"></path>
                                                                    <path d="m57 35h2v2h-2z"></path>
                                                                    <path d="m57 39h2v2h-2z"></path>
                                                                </g>
                                                            </svg>
                                                            <div class="multiLevel d-flex all-center pt-4">
                                                                <div class="level-1 d-flex flex-column text-left">
                                                                    <h5 class="m-0">5%</h5>
                                                                    <span class="p-0">Level 1 Commission</span>
                                                                </div>
                                                                <div class="level-2 d-flex flex-column text-left">
                                                                    <h5 class="m-0">0.5%</h5>
                                                                    <span class="p-0">Level 2 Commission</span>
                                                                </div>
                                                                <div class="level-3 d-flex flex-column text-left">
                                                                    <h5 class="m-0">0.5%</h5>
                                                                    <span class="p-0">Level 3 Commission</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="mb-0">Refer us to your friends to earn more income as they make investments.</p>
                                                    </div>
                                                    <p class="mt-2 mb-0">A layered plan is presented in the entry level referral program. In this way, you will not only earn from your invited friends but also from the people they invite. Let's make it even more clear.</p>
                                                </div>
                                            </div>
                                            <div class="owl-item active" style="width: 590px;">
                                                <div class="d-flex align-items-stretch flex-column comm-m pre-shadow p-3 pt-4 pb-4 p-lg-5">
                                                    <h3>Representative Commission</h3>
                                                    <div class="ref-box presen-ref d-flex flex-column text-center align-items-center mb-4 mt-4 ">
                                                        <div class="daf d-flex pb-4 pt-4 flex-column all-center">
                                                            <svg viewBox="0 0 496 496" height="72" width="72" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="m449.574219 170.398438-14.925781 5.753906c8.855468 23 13.351562 47.167968 13.351562 71.847656s-4.496094 48.847656-13.351562 71.847656l14.925781 5.753906c9.578125-24.839843 14.425781-50.945312 14.425781-77.601562s-4.847656-52.761719-14.425781-77.601562zm0 0" fill="#353448"></path>
                                                                <g fill="#f0bc5e">
                                                                    <path d="m213.40625 200.6875c-2.855469 4.390625-7.78125 7.3125-13.40625 7.3125-8.839844 0-16-7.160156-16-16 0-8.128906 6.078125-14.769531 13.929688-15.792969-20.546876-24.558593-51.402344-40.207031-85.929688-40.207031-61.855469 0-112 50.144531-112 112s50.144531 112 112 112 112-50.144531 112-112c0-16.929688-3.863281-32.929688-10.59375-47.3125zm0 0"></path>
                                                                    <path d="m400 0c-53.015625 0-96 42.984375-96 96 0 45.039062 31.0625 82.726562 72.902344 93.089844-.542969-1.609375-.902344-3.296875-.902344-5.089844 0-8.839844 7.160156-16 16-16s16 7.160156 16 16c0 2.808594-.785156 5.40625-2.054688 7.695312 50.230469-3.078124 90.054688-44.679687 90.054688-95.695312 0-53.015625-42.984375-96-96-96zm0 0"></path>
                                                                    <path d="m400 304c-32.183594 0-60.601562 15.894531-78.015625 40.199219 7.886719.984375 14.015625 7.640625 14.015625 15.800781 0 8.839844-7.160156 16-16 16-4.542969 0-8.625-1.910156-11.535156-4.953125-2.890625 9.136719-4.464844 18.855469-4.464844 28.953125 0 53.015625 42.984375 96 96 96s96-42.984375 96-96-42.984375-96-96-96zm0 0"></path>
                                                                </g>
                                                                <g fill="#353448">
                                                                    <path d="m376 240h16v16h-16zm0 0"></path>
                                                                    <path d="m408 240h16v16h-16zm0 0"></path>
                                                                    <path d="m344 240h16v16h-16zm0 0"></path>
                                                                    <path d="m176 296c0-26.742188-16.503906-49.679688-39.855469-59.230469 4.832031-5.609375 7.855469-12.808593 7.855469-20.769531v-16c0-17.648438-14.351562-32-32-32s-32 14.351562-32 32v16c0 7.960938 3.023438 15.160156 7.855469 20.769531-23.351563 9.550781-39.855469 32.488281-39.855469 59.230469v16h128zm-80-96c0-8.824219 7.175781-16 16-16s16 7.175781 16 16v16c0 8.824219-7.175781 16-16 16s-16-7.175781-16-16zm-32 96c0-26.472656 21.527344-48 48-48s48 21.527344 48 48zm0 0"></path>
                                                                    <path d="m448 128c0-18.078125-10.054688-33.839844-24.855469-42.023438 5.457031-5.746093 8.855469-13.457031 8.855469-21.976562 0-17.648438-14.351562-32-32-32s-32 14.351562-32 32c0 8.519531 3.398438 16.230469 8.855469 21.976562-14.800781 8.183594-24.855469 23.945313-24.855469 42.023438v16h96zm-48-80c8.824219 0 16 7.175781 16 16s-7.175781 16-16 16-16-7.175781-16-16 7.175781-16 16-16zm-32 80c0-17.648438 14.351562-32 32-32s32 14.351562 32 32zm0 0"></path>
                                                                    <path d="m423.144531 389.976562c5.457031-5.746093 8.855469-13.457031 8.855469-21.976562 0-17.648438-14.351562-32-32-32s-32 14.351562-32 32c0 8.519531 3.398438 16.230469 8.855469 21.976562-14.800781 8.183594-24.855469 23.945313-24.855469 42.023438v16h96v-16c0-18.078125-10.054688-33.839844-24.855469-42.023438zm-23.144531-37.976562c8.824219 0 16 7.175781 16 16s-7.175781 16-16 16-16-7.175781-16-16 7.175781-16 16-16zm-32 80c0-17.648438 14.351562-32 32-32s32 14.351562 32 32zm0 0"></path>
                                                                    <path d="m324.175781 336.425781-16.582031-99.546875c7.230469-4.03125 12.191406-11.613281 12.359375-20.429687l53.222656-17.746094c4.390625 5.617187 11.160157 9.296875 18.824219 9.296875 13.230469 0 24-10.769531 24-24s-10.769531-24-24-24c-13.078125 0-23.710938 10.527344-23.953125 23.550781l-53.222656 17.746094c-4.390625-5.617187-11.160157-9.296875-18.824219-9.296875-1.753906 0-3.449219.214844-5.097656.566406l-80.253906-129.636718c2.726562-3.441407 4.550781-7.625 5.070312-12.21875 31.875-5.167969 65.050781-2.527344 95.882812 7.785156 2.132813-5.03125 4.75-9.800782 7.671876-14.34375-22.921876-8.03125-46.867188-12.152344-71.273438-12.152344-12.039062 0-24.070312 1.054688-35.863281 3.03125-4.28125-6.617188-11.6875-11.03125-20.136719-11.03125-13.007812 0-23.574219 10.425781-23.9375 23.34375-48.949219 19.558594-89.917969 57.3125-113.46875 104.617188 7.710938-4.617188 15.957031-8.417969 24.726562-11.089844 22.351563-34.902344 55.390626-62.582032 93.847657-78.167969 4.398437 5.617187 11.167969 9.296875 18.832031 9.296875 1.753906 0 3.441406-.230469 5.078125-.59375l80.273437 129.671875c-.449218.5625-.945312 1.082031-1.335937 1.683594l-52.246094-13.066407c-1.183593-12.144531-11.320312-21.695312-23.769531-21.695312-13.230469 0-24 10.769531-24 24s10.769531 24 24 24c8.335938 0 15.679688-4.28125 19.984375-10.761719l52.246094 13.066407c.488281 5.054687 2.511719 9.617187 5.65625 13.261718l-105.628907 184.867188c-1.386718-.25-2.800781-.433594-4.257812-.433594-6.527344 0-12.441406 2.640625-16.777344 6.878906-29.191406-16.207031-54-39.703125-71.933594-67.757812-8.769531-2.671875-17.015624-6.472656-24.730468-11.097656 19.578125 39.328124 51.210937 72.128906 89.707031 93.289062-.097656.894531-.265625 1.765625-.265625 2.6875 0 13.230469 10.769531 24 24 24 7.542969 0 14.199219-3.566406 18.601562-9.023438 19.871094 5.886719 40.46875 9.023438 61.398438 9.023438 24.40625 0 48.351562-4.121094 71.289062-12.152344-2.9375-4.566406-5.5625-9.351562-7.703124-14.40625-38.625 12.910156-80.753907 13.71875-119.59375 2.421875-.03125-5.910156-2.28125-11.261719-5.871094-15.4375l105.632812-184.859375c.023438.007813.046875 0 .078125.007813l16.582031 99.539062c-7.367187 4.101563-12.414062 11.878907-12.414062 20.886719 0 13.230469 10.769531 24 24 24s24-10.769531 24-24c0-11.800781-8.585938-21.585938-19.824219-23.574219zm-156.175781 111.574219c-4.40625 0-8-3.59375-8-8s3.59375-8 8-8 8 3.59375 8 8-3.59375 8-8 8zm224-272c4.40625 0 8 3.59375 8 8s-3.59375 8-8 8-8-3.59375-8-8 3.59375-8 8-8zm-88 40c0 4.40625-3.59375 8-8 8s-8-3.59375-8-8 3.59375-8 8-8 8 3.59375 8 8zm-120-168c0-4.40625 3.59375-8 8-8s8 3.59375 8 8-3.59375 8-8 8-8-3.59375-8-8zm16 152c-4.40625 0-8-3.59375-8-8s3.59375-8 8-8 8 3.59375 8 8-3.59375 8-8 8zm120 168c-4.40625 0-8-3.59375-8-8s3.59375-8 8-8 8 3.59375 8 8-3.59375 8-8 8zm0 0"></path>
                                                                </g>
                                                            </svg>
                                                            <div class="multiLevel d-flex all-center pt-4">
                                                                <div class="level-1 d-flex flex-column text-left" style="background:#FFC059;box-shadow: 0 0 24px -6px #FF8C00;">
                                                                    <h5 class="m-0">10%</h5>
                                                                    <span class="p-0">Level 1 Commission</span>
                                                                </div>
                                                                <div class="level-2 d-flex flex-column text-left">
                                                                    <h5 class="m-0">4%</h5>
                                                                    <span class="p-0">Level 2 Commission</span>
                                                                </div>
                                                                <div class="level-3 d-flex flex-column text-left">
                                                                    <h5 class="m-0">1%</h5>
                                                                    <span class="p-0">Level 3 Commission</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="mb-0">Double up on your earnings by joining representatives.</p>
                                                    </div>
                                                    {/literal}
                                                    <p class="mt-2 mb-0">If you think you can do more for {$settings.site_name}, you can contact us immediately and become one of our global representatives. By doing so, higher comission return is claimable from each new participiant you invite. <a href="/representatives" class="btn mt-3" style="font-size:12px;color:#fff;"><i class="icon icon-todo"></i>&nbsp;&nbsp;Submit a Form</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="affiliate-banners">
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
                        <div> <a class="btn" href="/bounty" role="button"><span>Bounties Available </span></a>
                            <a class="btn btn-outline" nohref data-toggle="modal" data-target="#bannersModal" role="button"><span><i class="fas fa-file-alt"></i> Get Banners</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="affiliate-banners">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12 d-flex flex-column mb-5">
                        <h2>Here Are <b>More Ways</b> To Expand your Network:</h2>
                    </div>
                    <div class="col-lg-10 d-flex flex-column">
                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4"> <i class="fas fa-circle color-yellow"></i>
                            </div>
                            <div>
                                <h5 style="line-height:1;">Telegram Group</h5>
                                <p class="mt-0 mb-0"> <i> One of the best way for the team to interact with the community. Active use of this frequently preferred communication channel is crucial for building loyal followers. Volunteers who announce platform developments and limited time deals as well as answering questions, are always welcome to earn with our bounty program. </i>
                                    <p>
                            </div>
                        </div>
                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4"> <i class="fas fa-circle color-yellow"></i>
                            </div>
                            <div>
                                <h5 style="line-height:1;">Write Article & Blog</h5>
                                <p class="mt-0 mb-0"><i>Help us have a louder voice! We love your helpful reviews, research on digital asset and investment strategies, technology reviews, and generated content related to the {$settings.site_name} platform. You can either share your articles with us or post them on platforms you have access to. Helping us build the ecosystem and educate the community is a great way to earn from bounty. </i>
                                </p>
                            </div>
                        </div>
                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4"> <i class="fas fa-circle color-yellow"></i>
                            </div>
                            <div>
                                <h5 style="line-height:1;">Translate Website Contents</h5>
                                <p class="mt-0 mb-0"><i>Introduce us with new places & more people! Contribute to the development of language support for our Website and contents, and give your region a new investment opportunity. Let us achieve growing together, advancing the idea of innovation and future finance together by unlocking new languages, new cultures, new approaches.</i>
                                </p>
                            </div>
                        </div>
                        <div class="d-flex aff-list">
                            <div class="d-flex pr-4"> <i class="fas fa-circle color-yellow"></i>
                            </div>
                            <div>
                                <h5 style="line-height:1;">Create Memes & Gigs</h5>
                                <p class="mt-0 mb-0"><i>Humor is a great art! We follow with great interest the creative gig and memes created by community members. Do not be afraid to make fun of the platform, we support you to the end :) In fact, if possible, do your best!</i>
                                </p>
                            </div>
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
