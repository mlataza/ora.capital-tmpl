<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en" ng-app="templaterex">

<head>
    <!-- base -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta name="google" content="notranslate">
    <title>Authorization in account - {$settings.site_name}</title>
    <meta name="title" content="Authorization in account - {$settings.site_name}">
    <meta name="description" content="">
    <!-- //base -->

    <!-- opengraph -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Authorization in account - {$settings.site_name}">
    <meta property="og:description" content="">
    <meta property="og:site_name" content="{$settings.site_name}">
    <meta property="og:url" content="{$settings.site_url}">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="styles/assets/app/img/preview.png">
    <link rel="image_src" href="styles/assets/app/img/preview.png">
    <meta name="twitter:image" content="styles/assets/app/img/preview.png">
    <!-- //opengraph -->

    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="styles/assets/app/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="styles/assets/app/favicons/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="styles/assets/app/favicons/favicon-32x32.png">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="styles/assets/app/favicons/mstile-150x150.png">
    <meta name="msapplication-config" content="styles/assets/app/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <link rel="shortcut icon" href="favicon.ico">
    <!-- //favicons -->

    {literal}
    <!-- styles -->
    <link rel="stylesheet" href="styles/assets/app/facade-614a255648.css">
    <!-- //styles -->

    <!-- scripts -->
    <script src="styles/assets/app/vendor-3fd0c81b98.js"></script>
    <script src="styles/assets/app/app-e047933581.js"></script>
     <script>
        app.value('Global', {
            "currencies": [{
                "code": "usd",
                "name": "US Dollar"
            }, ],
        });

    </script>


    <script language=javascript>
        function checkform() {
            return true;
        }

    </script>
    <!-- //scripts -->
    {/literal}

</head>

<body ng-cloak>


    <section class="login d-grid">
        <video width="100%" height="962px" class=" login__video " playsinline autoplay muted loop preload="metadata">
            <source src="styles/assets/app/video/videobg1.mp4" type="video/mp4">
            <source src="styles/assets/app/video/videobg1.webm" type="video/webm">
            <source src="styles/assets/app/video/videobg1.ogg" type="video/ogg">
        </video>
        <div class="login__header d-flex align-items-center justify-content-center justify-content-xl-start">
            <a class="header__logo d-flex align-items-center justify-content-lg-start" href="/">
                <img class="header__logo-svg" src="styles/assets/app/img/18.png" srcset="styles/assets/app/img/18.png 1x, styles/assets/app/img/18@2x.png 2x" alt="">
            </a>
            <div class="header__lang order-2 order-lg-0">
                <i class="ico ico-[[ ::global.language.code ]]"></i>
                <span class="notranslate" ng-switch="::global.language.code === 'zh-CN'">
                    <span ng-switch-when="true">CN</span>
                    <span ng-switch-default ng-bind="::global.language.code"></span>
                </span>
                <div class="header__lang-hide">
                    <a class="header__lang-link pointer" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="[[ ::lang.name ]]">
                        <i class="ico ico-[[ ::lang.code ]]"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <span ng-switch-when="true">CN</span>
                            <span ng-switch-default ng-bind="::lang.code"></span>
                        </span>
                    </a>
                </div>
            </div>
        </div>

        <div class="login__help d-none d-xl-flex flex-column">
            <div class="login__help-item darkSection__stat-item d-flex align-items-center mb-3 ">
                <div class="darkSection__stat-item-ico me-3">
                    <svg width="50px" height="50px">
                        <use xlink:href="#internat"></use>
                    </svg>
                </div>
                <div class="darkSection__stat-item-info ms-1 d-flex flex-column-reverse">
                    <span>Check URL-address in address line of your browser</span>
                    <span class="fw-normal">Make sure that you visit correct URL address</span>
                </div>
            </div>
            <div class="login__help-item darkSection__stat-item d-flex align-items-center mt-4 mb-3">
                <div class="darkSection__stat-item-ico me-3">
                    <svg width="50px" height="50px">
                        <use xlink:href="#author"></use>
                    </svg>
                </div>
                <div class="darkSection__stat-item-info ms-1 d-flex flex-column-reverse">
                    <span>Your personal login indicated when you registered your account</span>
                    <span class="fw-normal">Enter your login</span>
                </div>
            </div>
            <div class="login__help-item darkSection__stat-item d-flex align-items-center mt-4">
                <div class="darkSection__stat-item-ico me-3">
                    <svg width="50px" height="50px">
                        <use xlink:href="#password"></use>
                    </svg>
                </div>
                <div class="darkSection__stat-item-info ms-1 d-flex flex-column-reverse">
                    <span>Your unique password that we generated for you</span>
                    <span class="fw-normal">Enter your password</span>
                </div>
            </div>
        </div>



        <div class="modal-js rex fade active animated-fast fadeIn" tabindex="-1">
            <div class="modal-dialog modal-sm modal-dialog-centered animated-fast pulse">
                <div class="modal-content">
                    <div class="modal-header justify-content-center d-flex flex-column align-items-center">
                        <h5 class="modal-title">Security check</h5>						
                        <p class="modal-subtext">Execute the following check to enter the account</p>
						{if $say == 'invalid_code'}
						<p class="modal-subtext" style="color:#e50b3d;">You have entered invalid code.</p>                        
                        {/if}
                        <button type="button" class="btn btn_close sx-close" data-bs-dismiss="modal">
                            <svg width="25px" height="25px">
                                <use xlink:href="#close"></use>
                            </svg>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form method=post name=mainform onsubmit="return checkform()" class="ng-pristine ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength">
                            <input type=hidden name=a value='do_login_tfa'>
                            <input type=hidden name=follow value='{$frm.follow}'>
                            <input type=hidden name=follow_id value='{$frm.follow_id}'>
                            <input type=hidden name=time>
                            <div class="modal__form d-flex flex-column">
                                <div class="modal__form-input mb-3">
                                    <label for="code" class="form-label">Enter 2 FA code:</label>
                                    <input type="text" id="code"  name=code value="" class="form-control modal__form-input-control ng-pristine ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched" ng-minlength="6" ng-maxlength="6" maxlength="6" placeholder="6 digits" sx-autofocus="300" required="required">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect width="40" height="40" rx="8" fill="#F8CC3D"></rect>
                                        <path d="M21.9058 23.6522C23.5753 23.6522 24.696 22.2122 24.696 20.0694V15.8261C24.696 15.5375 24.4629 15.3044 24.1743 15.3044H23.6526V12.0456C23.6526 9.62571 21.9751 8 19.4786 8H18.4352C15.9387 8 14.2613 9.62571 14.2613 12.0456V15.3044H13.7395C13.451 15.3044 13.2178 15.5375 13.2178 15.8261V20.0694C13.2178 21.8308 14.3886 23.6522 16.3482 23.6522H21.9058ZM15.3047 12.0456C15.3047 10.1939 16.5042 9.04348 18.4352 9.04348H19.4786C21.4096 9.04348 22.6091 10.1939 22.6091 12.0456V15.3044H15.3047V12.0456ZM14.2613 20.0694V16.3478H23.6526V20.0694C23.6526 20.493 23.5685 22.6087 21.9058 22.6087H16.3482C15.0418 22.6087 14.2613 21.318 14.2613 20.0694Z" fill="white"></path>
                                        <path d="M12.6957 30.9565H8.52174C8.23318 30.9565 8 31.1897 8 31.4783C8 31.7668 8.23318 32 8.52174 32H12.6957C12.9842 32 13.2174 31.7668 13.2174 31.4783C13.2174 31.1897 12.9842 30.9565 12.6957 30.9565Z" fill="white"></path>
                                        <path d="M8.67447 28.7166C8.77617 28.8183 8.90981 28.8694 9.04336 28.8694C9.17692 28.8694 9.31047 28.8183 9.41226 28.7166L10.3477 27.7811L11.2832 28.7166C11.3849 28.8183 11.5184 28.8694 11.6521 28.8694C11.7857 28.8694 11.9192 28.8183 12.021 28.7166C12.2249 28.5126 12.2249 28.1829 12.021 27.9789L11.0855 27.0434L12.021 26.108C12.2249 25.904 12.2249 25.5742 12.021 25.3703C11.817 25.1663 11.4872 25.1663 11.2832 25.3703L10.3478 26.3057L9.41234 25.3703C9.20837 25.1663 8.8786 25.1663 8.67463 25.3703C8.47065 25.5742 8.47065 25.904 8.67463 26.108L9.61007 27.0434L8.67447 27.9788C8.47049 28.1829 8.47049 28.5125 8.67447 28.7166Z" fill="white"></path>
                                        <path d="M18.9564 30.9565H14.7825C14.4939 30.9565 14.2607 31.1897 14.2607 31.4783C14.2607 31.7668 14.4939 32 14.7825 32H18.9564C19.2449 32 19.4781 31.7668 19.4781 31.4783C19.4781 31.1897 19.2449 30.9565 18.9564 30.9565Z" fill="white"></path>
                                        <path d="M14.9352 28.7166C15.0369 28.8183 15.1705 28.8694 15.3041 28.8694C15.4377 28.8694 15.5712 28.8183 15.673 28.7166L16.6084 27.7811L17.5439 28.7166C17.6456 28.8183 17.7792 28.8694 17.9128 28.8694C18.0464 28.8694 18.1799 28.8183 18.2817 28.7166C18.4857 28.5126 18.4857 28.1829 18.2817 27.9789L17.3462 27.0434L18.2817 26.108C18.4857 25.904 18.4857 25.5742 18.2817 25.3703C18.0777 25.1663 17.7479 25.1663 17.544 25.3703L16.6085 26.3057L15.6731 25.3703C15.4691 25.1663 15.1393 25.1663 14.9353 25.3703C14.7314 25.5742 14.7314 25.904 14.9353 26.108L15.8708 27.0434L14.9353 27.9789C14.7312 28.1829 14.7312 28.5125 14.9352 28.7166Z" fill="white"></path>
                                        <path d="M25.2171 30.9565H21.0432C20.7547 30.9565 20.5215 31.1897 20.5215 31.4783C20.5215 31.7668 20.7547 32 21.0432 32H25.2171C25.5057 32 25.7389 31.7668 25.7389 31.4783C25.7389 31.1897 25.5057 30.9565 25.2171 30.9565Z" fill="white"></path>
                                        <path d="M24.5423 25.3703C24.3383 25.1663 24.0085 25.1663 23.8046 25.3703L22.8691 26.3057L21.9337 25.3703C21.7297 25.1663 21.3999 25.1663 21.1959 25.3703C20.992 25.5742 20.992 25.904 21.1959 26.108L22.1314 27.0434L21.1959 27.9789C20.992 28.1829 20.992 28.5126 21.1959 28.7166C21.2977 28.8183 21.4312 28.8694 21.5648 28.8694C21.6985 28.8694 21.832 28.8183 21.9337 28.7166L22.8692 27.7812L23.8046 28.7166C23.9064 28.8183 24.04 28.8694 24.1735 28.8694C24.3071 28.8694 24.4407 28.8183 24.5424 28.7166C24.7464 28.5126 24.7464 28.1829 24.5424 27.9789L23.607 27.0434L24.5424 26.108C24.7463 25.904 24.7463 25.5743 24.5423 25.3703Z" fill="white"></path>
                                        <path d="M31.4779 30.9565H27.304C27.0154 30.9565 26.7822 31.1897 26.7822 31.4783C26.7822 31.7668 27.0154 32 27.304 32H31.4779C31.7664 32 31.9996 31.7668 31.9996 31.4783C31.9996 31.1897 31.7664 30.9565 31.4779 30.9565Z" fill="white"></path>
                                    </svg>
                                </div>
                                <p class="modal__form-text">Enter 6-unit code from Google Authenticator application.</p>
                                <button class="btn btn-primary" type="submit" ng-disabled="busy" sx-submit="">Send</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <div class="login__form ">
            <div class="login__form-scroll">

                <div class="login__form-scroll">
                    <div class="login__form-title d-flex flex-column">
                        <p class="app__box-subtitle">
                            <svg width="7px" height="8px">
                                <use xlink:href="#circle"></use>
                            </svg>
                            <span>Welcome</span>
                        </p>
                        <h2 class="app__box-title">Authorization in account</h2>
                    </div>
                    <div class="login-form__box d-flex flex-column">
                        <div class="login__form-input mb-3">
                            <svg width="25px" height="25px">
                                <use xlink:href="#form_lock"></use>
                            </svg>
                            <label for="url" class="form-label">Make sure that you visit correct URL address:</label>
                            <input type="url" id="url" class="form-control" value="{$settings.site_url}" size="30" disabled>
                        </div>
                        <div class="login__form-input mb-3">
                            <svg width="25px" height="25px">
                                <use xlink:href="#form_user"></use>
                            </svg>
                            <label for="username" class="form-label">Username:</label>
                            <input type="text" class="form-control" id="username" placeholder="**********">
                        </div>
                        <div class="login__form-input mb-3">
                            <svg width="25px" height="25px">
                                <use xlink:href="#form_key"></use>
                            </svg>
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" id="password" class="form-control" placeholder="**********">
                        </div>
                    </div>
                    <div class="login__form-forgot d-flex mb-3">
                        <span>Forgot password?</span>
                        <a href="?a=forgot_password">Recover password</a>
                    </div>
                    <!-- <div class="module__captcha mb-3" ng-if="::global.captcha">
            <sx-captcha ng-if="!vm.gaRequired" ng-model="vm.data.captcha"></sx-captcha>
         </div> -->
                    <button class="btn btn-primary mb-3" type="submit">Enter account</button>
                    <div class="login__form-links d-flex justify-content-center">
                        <span>Not registered yet?</span>
                        <a href="?a=signup">Create account</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="login__bottom d-flex justify-content-center justify-content-xl-start align-items-end">
            <a class="btn btn-secondary btn_ico" href="/">
                <svg width="25px" height="25px">
                    <use xlink:href="#back"></use>
                </svg>
                <span>Return to website</span>
            </a>
        </div>
        <svg class="login__arrow" width="1226" height="560" viewBox="0 0 1226 560" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1011 1L1219.92 367.095C1225.55 376.949 1225.53 389.043 1219.88 398.883L1062 674M1004 1L1212.92 367.095C1218.55 376.949 1218.53 389.043 1212.88 398.883L1055 674M997 1L1205.92 367.095C1211.55 376.949 1211.53 389.043 1205.88 398.883L1048 674M990 1L1198.92 367.095C1204.55 376.949 1204.53 389.043 1198.88 398.883L1041 674M983 1L1191.92 367.095C1197.55 376.949 1197.53 389.043 1191.88 398.883L1034 674M976 1L1184.92 367.095C1190.55 376.949 1190.53 389.043 1184.88 398.883L1027 674M969 1L1177.92 367.095C1183.55 376.949 1183.53 389.043 1177.88 398.883L1020 674M962 1L1170.92 367.095C1176.55 376.949 1176.53 389.043 1170.88 398.883L1013 674M955 1L1163.92 367.095C1169.55 376.949 1169.53 389.043 1163.88 398.883L1006 674M948 1L1156.92 367.095C1162.55 376.949 1162.53 389.043 1156.88 398.883L999 674M941 1L1149.92 367.095C1155.55 376.949 1155.53 389.043 1149.88 398.883L992 674M934 1L1142.92 367.095C1148.55 376.949 1148.53 389.043 1142.88 398.883L985 674M927 1L1135.92 367.095C1141.55 376.949 1141.53 389.043 1135.88 398.883L978 674M920 1L1128.92 367.095C1134.55 376.949 1134.53 389.043 1128.88 398.883L971 674M913 1L1121.92 367.095C1127.55 376.949 1127.53 389.043 1121.88 398.883L964 674M906 1L1114.92 367.095C1120.55 376.949 1120.53 389.043 1114.88 398.883L957 674M899 1L1107.92 367.095C1113.55 376.949 1113.53 389.043 1107.88 398.883L950 674M892 1L1100.92 367.095C1106.55 376.949 1106.53 389.043 1100.88 398.883L943 674M885 1L1093.92 367.095C1099.55 376.949 1099.53 389.043 1093.88 398.883L936 674M878 1L1086.92 367.095C1092.55 376.949 1092.53 389.043 1086.88 398.883L929 674M871 1L1079.92 367.095C1085.55 376.949 1085.53 389.043 1079.88 398.883L922 674M864 1L1072.92 367.095C1078.55 376.949 1078.53 389.043 1072.88 398.883L915 674M857 1L1065.92 367.095C1071.55 376.949 1071.53 389.043 1065.88 398.883L908 674M850 1L1058.92 367.095C1064.55 376.949 1064.53 389.043 1058.88 398.883L901 674M843 1L1051.92 367.095C1057.55 376.949 1057.53 389.043 1051.88 398.883L894 674M836 1L1044.92 367.095C1050.55 376.949 1050.53 389.043 1044.88 398.883L887 674M829 1L1037.92 367.095C1043.55 376.949 1043.53 389.043 1037.88 398.883L880 674M822 1L1030.92 367.095C1036.55 376.949 1036.53 389.043 1030.88 398.883L873 674M815 1L1023.92 367.095C1029.55 376.949 1029.53 389.043 1023.88 398.883L866 674M808 1L1016.92 367.095C1022.55 376.949 1022.53 389.043 1016.88 398.883L859 674M801 1L1009.92 367.095C1015.55 376.949 1015.53 389.043 1009.88 398.883L852 674M794 1L1002.92 367.095C1008.55 376.949 1008.53 389.043 1002.88 398.883L845 674M787 1L995.923 367.095C1001.55 376.949 1001.53 389.043 995.885 398.883L838 674M780 1L988.923 367.095C994.547 376.949 994.532 389.043 988.885 398.883L831 674M773 1L981.923 367.095C987.547 376.949 987.532 389.043 981.885 398.883L824 674M766 1L974.923 367.095C980.547 376.949 980.532 389.043 974.885 398.883L817 674M759 1L967.923 367.095C973.547 376.949 973.532 389.043 967.885 398.883L810 674M752 1L960.923 367.095C966.547 376.949 966.532 389.043 960.885 398.883L803 674M745 1L953.923 367.095C959.547 376.949 959.532 389.043 953.885 398.883L796 674M738 1L946.923 367.095C952.547 376.949 952.532 389.043 946.885 398.883L789 674M731 1L939.923 367.095C945.547 376.949 945.532 389.043 939.885 398.883L782 674M724 1L932.923 367.095C938.547 376.949 938.532 389.043 932.885 398.883L775 674M717 1L925.923 367.095C931.547 376.949 931.532 389.043 925.885 398.883L768 674M710 1L918.923 367.095C924.547 376.949 924.532 389.043 918.885 398.883L761 674M703 1L911.923 367.095C917.547 376.949 917.532 389.043 911.885 398.883L754 674M696 1L904.923 367.095C910.547 376.949 910.532 389.043 904.885 398.883L747 674M689 1L897.923 367.095C903.547 376.949 903.532 389.043 897.885 398.883L740 674M682 1L890.923 367.095C896.547 376.949 896.532 389.043 890.885 398.883L733 674M675 1L883.923 367.095C889.547 376.949 889.532 389.043 883.885 398.883L726 674M668 1L876.923 367.095C882.547 376.949 882.532 389.043 876.885 398.883L719 674M661 1L869.923 367.095C875.547 376.949 875.532 389.043 869.885 398.883L712 674M654 1L862.923 367.095C868.547 376.949 868.532 389.043 862.885 398.883L705 674M647 1L855.923 367.095C861.547 376.949 861.532 389.043 855.885 398.883L698 674M640 1L848.923 367.095C854.547 376.949 854.532 389.043 848.885 398.883L691 674M633 1L841.923 367.095C847.547 376.949 847.532 389.043 841.885 398.883L684 674M626 1L834.923 367.095C840.547 376.949 840.532 389.043 834.885 398.883L677 674M619 1L827.923 367.095C833.547 376.949 833.532 389.043 827.885 398.883L670 674M612 1L820.923 367.095C826.547 376.949 826.532 389.043 820.885 398.883L663 674M605 1L813.923 367.095C819.547 376.949 819.532 389.043 813.885 398.883L656 674M598 1L806.923 367.095C812.547 376.949 812.532 389.043 806.885 398.883L649 674M591 1L799.923 367.095C805.547 376.949 805.532 389.043 799.885 398.883L642 674M584 1L792.923 367.095C798.547 376.949 798.532 389.043 792.885 398.883L635 674M577 1L785.923 367.095C791.547 376.949 791.532 389.043 785.885 398.883L628 674M570 1L778.923 367.095C784.547 376.949 784.532 389.043 778.885 398.883L621 674M563 1L771.923 367.095C777.547 376.949 777.532 389.043 771.885 398.883L614 674M556 1L764.923 367.095C770.547 376.949 770.532 389.043 764.885 398.883L607 674M549 1L757.923 367.095C763.547 376.949 763.532 389.043 757.885 398.883L600 674M542 1L750.923 367.095C756.547 376.949 756.532 389.043 750.885 398.883L593 674M535 1L743.923 367.095C749.547 376.949 749.532 389.043 743.885 398.883L586 674M528 1L736.923 367.095C742.547 376.949 742.532 389.043 736.885 398.883L579 674M521 1L729.923 367.095C735.547 376.949 735.532 389.043 729.885 398.883L572 674M514 1L722.923 367.095C728.547 376.949 728.532 389.043 722.885 398.883L565 674M507 1L715.923 367.095C721.547 376.949 721.532 389.043 715.885 398.883L558 674M500 1L708.923 367.095C714.547 376.949 714.532 389.043 708.885 398.883L551 674M493 1L701.923 367.095C707.547 376.949 707.532 389.043 701.885 398.883L544 674M486 1L694.923 367.095C700.547 376.949 700.532 389.043 694.885 398.883L537 674M479 1L687.923 367.095C693.547 376.949 693.532 389.043 687.885 398.883L530 674M472 1L680.923 367.095C686.547 376.949 686.532 389.043 680.885 398.883L523 674M465 1L673.923 367.095C679.547 376.949 679.532 389.043 673.885 398.883L516 674M458 1L666.923 367.095C672.547 376.949 672.532 389.043 666.885 398.883L509 674M451 1L659.923 367.095C665.547 376.949 665.532 389.043 659.885 398.883L502 674M444 1L652.923 367.095C658.547 376.949 658.532 389.043 652.885 398.883L495 674M437 1L645.923 367.095C651.547 376.949 651.532 389.043 645.885 398.883L488 674M430 1L638.923 367.095C644.547 376.949 644.532 389.043 638.885 398.883L481 674M423 1L631.923 367.095C637.547 376.949 637.532 389.043 631.885 398.883L474 674M416 1L624.923 367.095C630.547 376.949 630.532 389.043 624.885 398.883L467 674M409 1L617.923 367.095C623.547 376.949 623.532 389.043 617.885 398.883L460 674M402 1L610.923 367.095C616.547 376.949 616.532 389.043 610.885 398.883L453 674M395 1L603.923 367.095C609.547 376.949 609.532 389.043 603.885 398.883L446 674M388 1L596.923 367.095C602.547 376.949 602.532 389.043 596.885 398.883L439 674M381 1L589.923 367.095C595.547 376.949 595.532 389.043 589.885 398.883L432 674M374 1L582.923 367.095C588.547 376.949 588.532 389.043 582.885 398.883L425 674M367 1L575.923 367.095C581.547 376.949 581.532 389.043 575.885 398.883L418 674M360 1L568.923 367.095C574.547 376.949 574.532 389.043 568.885 398.883L411 674M353 1L561.923 367.095C567.547 376.949 567.532 389.043 561.885 398.883L404 674M346 1L554.923 367.095C560.547 376.949 560.532 389.043 554.885 398.883L397 674M339 1L547.923 367.095C553.547 376.949 553.532 389.043 547.885 398.883L390 674M332 1L540.923 367.095C546.547 376.949 546.532 389.043 540.885 398.883L383 674M325 1L533.923 367.095C539.547 376.949 539.532 389.043 533.885 398.883L376 674M318 1L526.923 367.095C532.547 376.949 532.532 389.043 526.885 398.883L369 674M311 1L519.923 367.095C525.547 376.949 525.532 389.043 519.885 398.883L362 674M304 1L512.923 367.095C518.547 376.949 518.532 389.043 512.885 398.883L355 674M297 1L505.923 367.095C511.547 376.949 511.532 389.043 505.885 398.883L348 674M290 1L498.923 367.095C504.547 376.949 504.532 389.043 498.885 398.883L341 674M283 1L491.923 367.095C497.547 376.949 497.532 389.043 491.885 398.883L334 674M276 1L484.923 367.095C490.547 376.949 490.532 389.043 484.885 398.883L327 674M269 1L477.923 367.095C483.547 376.949 483.532 389.043 477.885 398.883L320 674M262 1L470.923 367.095C476.547 376.949 476.532 389.043 470.885 398.883L313 674M255 1L463.923 367.095C469.547 376.949 469.532 389.043 463.885 398.883L306 674M248 1L456.923 367.095C462.547 376.949 462.532 389.043 456.885 398.883L299 674M241 1L449.923 367.095C455.547 376.949 455.532 389.043 449.885 398.883L292 674M234 1L442.923 367.095C448.547 376.949 448.532 389.043 442.885 398.883L285 674M227 1L435.923 367.095C441.547 376.949 441.532 389.043 435.885 398.883L278 674M220 1L428.923 367.095C434.547 376.949 434.532 389.043 428.885 398.883L271 674M213 1L421.923 367.095C427.547 376.949 427.532 389.043 421.885 398.883L264 674M206 1L414.923 367.095C420.547 376.949 420.532 389.043 414.885 398.883L257 674M199 1L407.923 367.095C413.547 376.949 413.532 389.043 407.885 398.883L250 674M192 1L400.923 367.095C406.547 376.949 406.532 389.043 400.885 398.883L243 674M185 1L393.923 367.095C399.547 376.949 399.532 389.043 393.885 398.883L236 674M178 1L386.923 367.095C392.547 376.949 392.532 389.043 386.885 398.883L229 674M171 1L379.923 367.095C385.547 376.949 385.532 389.043 379.885 398.883L222 674M164 1L372.923 367.095C378.547 376.949 378.532 389.043 372.885 398.883L215 674M157 1L365.923 367.095C371.547 376.949 371.532 389.043 365.885 398.883L208 674M150 1L358.923 367.095C364.547 376.949 364.532 389.043 358.885 398.883L201 674M143 1L351.923 367.095C357.547 376.949 357.532 389.043 351.885 398.883L194 674M136 1L344.923 367.095C350.547 376.949 350.532 389.043 344.885 398.883L187 674M129 1L337.923 367.095C343.547 376.949 343.532 389.043 337.885 398.883L180 674M122 1L330.923 367.095C336.547 376.949 336.532 389.043 330.885 398.883L173 674M115 1L323.923 367.095C329.547 376.949 329.532 389.043 323.885 398.883L166 674M108 1L316.923 367.095C322.547 376.949 322.532 389.043 316.885 398.883L159 674M101 1L309.923 367.095C315.547 376.949 315.532 389.043 309.885 398.883L152 674M94 1L302.923 367.095C308.547 376.949 308.532 389.043 302.885 398.883L145 674M87 1L295.923 367.095C301.547 376.949 301.532 389.043 295.885 398.883L138 674M80 1L288.923 367.095C294.547 376.949 294.532 389.043 288.885 398.883L131 674M73 1L281.923 367.095C287.547 376.949 287.532 389.043 281.885 398.883L124 674M66 1L274.923 367.095C280.547 376.949 280.532 389.043 274.885 398.883L117 674M59 1L267.923 367.095C273.547 376.949 273.532 389.043 267.885 398.883L110 674M52 1L260.923 367.095C266.547 376.949 266.532 389.043 260.885 398.883L103 674M45 1L253.923 367.095C259.547 376.949 259.532 389.043 253.885 398.883L96 674M38 1L246.923 367.095C252.547 376.949 252.532 389.043 246.885 398.883L89 674M31 1L239.923 367.095C245.547 376.949 245.532 389.043 239.885 398.883L82 674M24 1L232.923 367.095C238.547 376.949 238.532 389.043 232.885 398.883L75 674M17 1L225.923 367.095C231.547 376.949 231.532 389.043 225.885 398.883L68 674M10 1L218.923 367.095C224.547 376.949 224.532 389.043 218.885 398.883L61 674M3 1L211.923 367.095C217.547 376.949 217.532 389.043 211.885 398.883L54 674M-4 1L204.923 367.095C210.547 376.949 210.532 389.043 204.885 398.883L47 674M-11 1L197.923 367.095C203.547 376.949 203.532 389.043 197.885 398.883L40 674M-18 1L190.923 367.095C196.547 376.949 196.532 389.043 190.885 398.883L33 674M-25 1L183.923 367.095C189.547 376.949 189.532 389.043 183.885 398.883L26 674M-32 1L176.923 367.095C182.547 376.949 182.532 389.043 176.885 398.883L19 674M-39 1L169.923 367.095C175.547 376.949 175.532 389.043 169.885 398.883L12 674M-46 1L162.923 367.095C168.547 376.949 168.532 389.043 162.885 398.883L5 674M-53 1L155.923 367.095C161.547 376.949 161.532 389.043 155.885 398.883L-2 674M-60 1L148.923 367.095C154.547 376.949 154.532 389.043 148.885 398.883L-9 674M-67 1L141.923 367.095C147.547 376.949 147.532 389.043 141.885 398.883L-16 674M-74 1L134.923 367.095C140.547 376.949 140.532 389.043 134.885 398.883L-23 674M-81 1L127.923 367.095C133.547 376.949 133.532 389.043 127.885 398.883L-30 674M-88 1L120.923 367.095C126.547 376.949 126.532 389.043 120.885 398.883L-37 674M-95 1L113.923 367.095C119.547 376.949 119.532 389.043 113.885 398.883L-44 674M-102 1L106.923 367.095C112.547 376.949 112.532 389.043 106.885 398.883L-51 674M-109 1L99.9232 367.095C105.547 376.949 105.532 389.043 99.8848 398.883L-58 674M-116 1L92.9232 367.095C98.5465 376.949 98.532 389.043 92.8848 398.883L-65 674M-123 1L85.9232 367.095C91.5465 376.949 91.532 389.043 85.8848 398.883L-72 674M-130 1L78.9232 367.095C84.5465 376.949 84.5319 389.043 78.8848 398.883L-79 674M-137 1L71.9232 367.095C77.5465 376.949 77.5319 389.043 71.8848 398.883L-86 674M-144 1L64.9232 367.095C70.5465 376.949 70.5319 389.043 64.8848 398.883L-93 674M-151 1L57.9232 367.095C63.5465 376.949 63.5319 389.043 57.8848 398.883L-100 674M-158 1L50.9232 367.095C56.5465 376.949 56.5319 389.043 50.8848 398.883L-107 674M-165 1L43.9232 367.095C49.5465 376.949 49.5319 389.043 43.8848 398.883L-114 674M-172 1L36.9232 367.095C42.5465 376.949 42.5319 389.043 36.8848 398.883L-121 674M-179 1L29.9232 367.095C35.5465 376.949 35.5319 389.043 29.8848 398.883L-128 674M-186 1L22.9232 367.095C28.5465 376.949 28.5319 389.043 22.8848 398.883L-135 674M-193 1L15.9232 367.095C21.5465 376.949 21.5319 389.043 15.8848 398.883L-142 674M-200 1L8.92316 367.095C14.5465 376.949 14.5319 389.043 8.88483 398.883L-149 674M-207 1L1.92316 367.095C7.54651 376.949 7.53192 389.043 1.88483 398.883L-156 674M-214 1L-5.07684 367.095C0.546509 376.949 0.531921 389.043 -5.11517 398.883L-163 674M-221 1L-12.0768 367.095C-6.45349 376.949 -6.46808 389.043 -12.1152 398.883L-170 674M-228 1L-19.0768 367.095C-13.4535 376.949 -13.4681 389.043 -19.1152 398.883L-177 674M-235 1L-26.0768 367.095C-20.4535 376.949 -20.4681 389.043 -26.1152 398.883L-184 674M-242 1L-33.0768 367.095C-27.4535 376.949 -27.4681 389.043 -33.1152 398.883L-191 674" stroke="url(#paint0_linear)" stroke-width="2" />
            <defs>
                <linearGradient id="paint0_linear" x1="491.065" y1="674" x2="491.065" y2="88" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#2B2F36" />
                    <stop offset="1" stop-color="#2B2F36" stop-opacity="0" />
                </linearGradient>
            </defs>
        </svg>
    </section>

    <script>
        $(document).ready(function() {
            //$(".btn.btn_close.sx-close").click(function(){
            $(".sx-close").click(function() {
                window.location = '?a=logout';
            });
        });

    </script>

    {literal}
    <script language=javascript>
        document.mainform.time.value = (new Date()).getTime();

        function checkform() {
            if (!document.mainform.code.value.match(/^[0-9]{6}$/)) {
                alert("Please type code!");
                document.mainform.code.focus();
                return false;
            }
            return true;
        }

    </script>
    {/literal}

</body>

</html>
