
                <div class="dashboard__col2 ng-scope" ng-if="alc.bsideState" id="AccountdeStateMenu">
                    <div class="sidebar d-flex flex-column ng-scope" ng-controller="AccountBsideCtrl as vm">
                        <button id="AccountdeStateClose" class="btn sidebar__close js-sidebar" ng-click="alc.toggleBside(false)">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M1.13713 22.0001C0.84734 22.0001 0.557546 21.8898 0.337369 21.668C-0.104644 21.226 -0.104644 20.5094 0.337369 20.0674L20.0732 0.331509C20.5152 -0.110503 21.2318 -0.110503 21.6739 0.331509C22.1159 0.773521 22.1159 1.49013 21.6739 1.93242L1.93828 21.668C1.71645 21.8884 1.42665 22.0001 1.13713 22.0001Z" fill="#1E2026"></path>
                                <path d="M20.8744 22.0001C20.5846 22.0001 20.2951 21.8898 20.0746 21.668L0.337369 1.93242C-0.104644 1.49013 -0.104644 0.773521 0.337369 0.331509C0.779381 -0.110503 1.49599 -0.110503 1.93828 0.331509L21.6739 20.0674C22.1159 20.5094 22.1159 21.226 21.6739 21.668C21.452 21.8884 21.1625 22.0001 20.8744 22.0001Z" fill="#1E2026"></path>
                            </svg>
                        </button>
                        <div class="sidebar__user">
                            <picture class="sidebar__user-avatar">
                                <img src="styles/assets/app/img/avatarDashboard.svg" alt="">
                            </picture>
                            <h3 class="sidebar__user-title">Welcome!<br><span class="notranslate ng-binding" ng-bind="::global.user.name">{$userinfo.username}</span></h3>
                            <div class="sidebar__user-stat">
                                <div class="row">
                                    <div class="col-6 col-sm-4 ">
                                        <div class="sidebar__user-stat-item">
                                            <svg class="sidebar__user-stat-item-ico" width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M8.12499 18.7499H4.375C4.03 18.7499 3.75 18.4699 3.75 18.1249V14.3749C3.75 14.0299 4.03 13.7499 4.375 13.7499H8.12499C8.46999 13.7499 8.74999 14.0299 8.74999 14.3749V18.1249C8.74999 18.4699 8.46999 18.7499 8.12499 18.7499ZM5 17.4999H7.49999V14.9999H5V17.4999Z" fill="#22293B"></path>
                                                <path d="M8.12499 26.2501H4.375C4.03 26.2501 3.75 25.9701 3.75 25.6251V21.8751C3.75 21.5301 4.03 21.2501 4.375 21.2501H8.12499C8.46999 21.2501 8.74999 21.5301 8.74999 21.8751V25.6251C8.74999 25.9701 8.46999 26.2501 8.12499 26.2501ZM5 25.0001H7.49999V22.5001H5V25.0001Z" fill="#22293B"></path>
                                                <path d="M16.875 18.7499H13.125C12.78 18.7499 12.5 18.4699 12.5 18.1249V14.3749C12.5 14.0299 12.78 13.7499 13.125 13.7499H16.875C17.22 13.7499 17.5 14.0299 17.5 14.3749V18.1249C17.5 18.4699 17.22 18.7499 16.875 18.7499ZM13.75 17.4999H16.25V14.9999H13.75V17.4999Z" fill="#22293B"></path>
                                                <path d="M16.875 26.2501H13.125C12.78 26.2501 12.5 25.9701 12.5 25.6251V21.8751C12.5 21.5301 12.78 21.2501 13.125 21.2501H16.875C17.22 21.2501 17.5 21.5301 17.5 21.8751V25.6251C17.5 25.9701 17.22 26.2501 16.875 26.2501ZM13.75 25.0001H16.25V22.5001H13.75V25.0001Z" fill="#22293B"></path>
                                                <path d="M25.625 18.7499H21.875C21.53 18.7499 21.25 18.4699 21.25 18.1249V14.3749C21.25 14.0299 21.53 13.7499 21.875 13.7499H25.625C25.97 13.7499 26.25 14.0299 26.25 14.3749V18.1249C26.25 18.4699 25.97 18.7499 25.625 18.7499ZM22.5 17.4999H25V14.9999H22.5V17.4999Z" fill="#22293B"></path>
                                                <path d="M26.875 29.9999H3.125C1.4025 29.9999 0 28.5974 0 26.8749V5.62488C0 3.90238 1.4025 2.49988 3.125 2.49988H26.875C28.5975 2.49988 30 3.90238 30 5.62488V26.8749C30 28.5974 28.5975 29.9999 26.875 29.9999ZM3.125 3.74988C2.09125 3.74988 1.25 4.59113 1.25 5.62488V26.8749C1.25 27.9086 2.09125 28.7499 3.125 28.7499H26.875C27.9088 28.7499 28.75 27.9086 28.75 26.8749V5.62488C28.75 4.59113 27.9088 3.74988 26.875 3.74988H3.125Z" fill="#22293B"></path>
                                                <path d="M29.375 11.2499H0.625C0.28 11.2499 0 10.9699 0 10.6249C0 10.2799 0.28 9.99988 0.625 9.99988H29.375C29.72 9.99988 30 10.2799 30 10.6249C30 10.9699 29.72 11.2499 29.375 11.2499Z" fill="#22293B"></path>
                                                <path d="M6.875 6.25C6.53 6.25 6.25 5.97 6.25 5.625V0.625C6.25 0.28 6.53 0 6.875 0C7.22 0 7.5 0.28 7.5 0.625V5.625C7.5 5.97 7.22 6.25 6.875 6.25Z" fill="#22293B"></path>
                                                <path d="M23.125 6.25C22.78 6.25 22.5 5.97 22.5 5.625V0.625C22.5 0.28 22.78 0 23.125 0C23.47 0 23.75 0.28 23.75 0.625V5.625C23.75 5.97 23.47 6.25 23.125 6.25Z" fill="#22293B"></path>
                                            </svg>
                                            <p class="sidebar__user-stat-item-text">Register</p>
                                            <p class="sidebar__user-stat-item-text ng-binding" ng-bind="::global.user.created">{$userinfo.date_register|date_format:"%Y-%m-%d"}</p>
                                        </div>
                                    </div>
                                    <div class="col-6 col-sm-4">
                                        <div class="sidebar__user-stat-item">
                                            <svg class="sidebar__user-stat-item-ico" width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M3.125 6.25C1.40125 6.25 0 4.84875 0 3.125C0 1.40125 1.40125 0 3.125 0C4.84875 0 6.25 1.40125 6.25 3.125C6.25 4.84875 4.84875 6.25 3.125 6.25ZM3.125 1.25C2.09125 1.25 1.25 2.09125 1.25 3.125C1.25 4.15875 2.09125 5 3.125 5C4.15875 5 5 4.15875 5 3.125C5 2.09125 4.15875 1.25 3.125 1.25Z" fill="#22293B"></path>
                                                <path d="M3.125 30C1.40125 30 0 28.5987 0 26.875C0 25.1512 1.40125 23.75 3.125 23.75C4.84875 23.75 6.25 25.1512 6.25 26.875C6.25 28.5987 4.84875 30 3.125 30ZM3.125 25C2.09125 25 1.25 25.8412 1.25 26.875C1.25 27.9087 2.09125 28.75 3.125 28.75C4.15875 28.75 5 27.9087 5 26.875C5 25.8412 4.15875 25 3.125 25Z" fill="#22293B"></path>
                                                <path d="M26.875 6.25C25.1512 6.25 23.75 4.84875 23.75 3.125C23.75 1.40125 25.1512 0 26.875 0C28.5987 0 30 1.40125 30 3.125C30 4.84875 28.5987 6.25 26.875 6.25ZM26.875 1.25C25.8412 1.25 25 2.09125 25 3.125C25 4.15875 25.8412 5 26.875 5C27.9087 5 28.75 4.15875 28.75 3.125C28.75 2.09125 27.9087 1.25 26.875 1.25Z" fill="#22293B"></path>
                                                <path d="M26.875 30C25.1512 30 23.75 28.5987 23.75 26.875C23.75 25.1512 25.1512 23.75 26.875 23.75C28.5987 23.75 30 25.1512 30 26.875C30 28.5987 28.5987 30 26.875 30ZM26.875 25C25.8412 25 25 25.8412 25 26.875C25 27.9087 25.8412 28.75 26.875 28.75C27.9087 28.75 28.75 27.9087 28.75 26.875C28.75 25.8412 27.9087 25 26.875 25Z" fill="#22293B"></path>
                                                <path d="M15 26.25C8.79625 26.25 3.75 21.2038 3.75 15C3.75 8.79625 8.79625 3.75 15 3.75C21.2038 3.75 26.25 8.79625 26.25 15C26.25 21.2038 21.2038 26.25 15 26.25ZM15 5C9.48625 5 5 9.48625 5 15C5 20.5138 9.48625 25 15 25C20.5138 25 25 20.5138 25 15C25 9.48625 20.5138 5 15 5Z" fill="#22293B"></path>
                                                <path d="M15.0003 26.25C14.8391 26.25 14.6791 26.1875 14.5566 26.0662C8.50654 19.9637 8.50654 10.0375 14.5566 3.93499C14.8003 3.69374 15.1966 3.68749 15.4416 3.93124C15.6853 4.17499 15.6878 4.57124 15.4453 4.81624C9.87529 10.4312 9.87529 19.57 15.4453 25.185C15.6878 25.43 15.6853 25.8262 15.4416 26.07C15.3191 26.19 15.1591 26.25 15.0003 26.25Z" fill="#22293B"></path>
                                                <path d="M15 26.25C14.8412 26.25 14.6812 26.19 14.5587 26.0688C14.315 25.825 14.3125 25.4288 14.555 25.1838C20.125 19.5688 20.125 10.43 14.555 4.81502C14.3125 4.57002 14.315 4.17377 14.5587 3.93002C14.8037 3.68627 15.1987 3.69252 15.4437 3.93377C21.4938 10.0363 21.4938 19.9625 15.4437 26.065C15.3212 26.1875 15.1612 26.25 15 26.25Z" fill="#22293B"></path>
                                                <path d="M25.1624 12.5H4.8374C4.4924 12.5 4.2124 12.22 4.2124 11.875C4.2124 11.53 4.4924 11.25 4.8374 11.25H25.1624C25.5074 11.25 25.7874 11.53 25.7874 11.875C25.7874 12.22 25.5074 12.5 25.1624 12.5Z" fill="#22293B"></path>
                                                <path d="M25.1624 18.75H4.8374C4.4924 18.75 4.2124 18.47 4.2124 18.125C4.2124 17.78 4.4924 17.5 4.8374 17.5H25.1624C25.5074 17.5 25.7874 17.78 25.7874 18.125C25.7874 18.47 25.5074 18.75 25.1624 18.75Z" fill="#22293B"></path>
                                            </svg>
                                            <p class="sidebar__user-stat-item-text">Country</p>
                                            <p class="sidebar__user-stat-item-text notranslate ng-binding" ng-bind="::global.user.session.city">{$userinfo.last_access_ip|ip2c}</p>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4">
                                        <div class="sidebar__user-stat-item">
                                            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M29.375 20.625H27.5V6.25C27.5 5.21623 26.6588 4.375 25.625 4.375H4.37502C3.34125 4.375 2.50002 5.21623 2.50002 6.25V20.625H0.62502C0.28002 20.625 0 20.905 0 21.25V22.5C0 24.2225 1.4025 25.625 3.12498 25.625H26.875C28.5975 25.625 30 24.2225 30 22.5V21.25C30 20.905 29.72 20.625 29.375 20.625ZM3.75 6.25C3.75 5.905 4.03002 5.62498 4.37502 5.62498H25.625C25.97 5.62498 26.2501 5.905 26.2501 6.25V20.625H20C19.8337 20.625 19.675 20.6912 19.56 20.8075L18.4925 21.875H11.51L10.4425 20.8075C10.325 20.6912 10.1662 20.625 9.99996 20.625H3.75V6.25ZM28.75 22.5C28.75 23.5338 27.9088 24.375 26.875 24.375H3.12498C2.09121 24.375 1.24998 23.5338 1.24998 22.5V21.875H9.74121L10.8074 22.9425C10.9249 23.0587 11.0837 23.125 11.2499 23.125H18.7499C18.9162 23.125 19.075 23.0587 19.1912 22.9425L20.2587 21.875H28.75V22.5H28.75Z" fill="#22293B"></path>
                                            </svg>
                                            <p class="sidebar__user-stat-item-text">Entrance IP</p>
                                            <p class="sidebar__user-stat-item-text notranslate ng-binding" ng-bind="::global.user.session.ip_address">{$userinfo.ip_reg}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__social">
                            <div class="row">
                                <!-- ngIf: ::global.contacts.telegram[0] -->
                                <div class="col-3 col-sm-2 ng-scope">
                                    <a class="sidebar__social-link" target="_blank" data-title="Chat" href="https://t.me">
                                        <svg width="29px" height="29px">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 21 21" id="telegram">
                                                <path d="M10.5 21C16.3 21 21 16.3 21 10.5S16.3 0 10.5 0 0 4.7 0 10.5 4.7 21 10.5 21zM4.804 10.273 14.927 6.37c.47-.17.88.114.729.825v-.001l-1.723 8.12c-.127.575-.47.716-.948.445l-2.625-1.934-1.267 1.219c-.14.14-.259.258-.529.258l.186-2.672 4.866-4.395c.211-.187-.047-.292-.326-.107l-6.012 3.786-2.591-.809c-.564-.177-.576-.562.117-.832z" fill="#26C6DA"></path>
                                            </svg>
                                        </svg>
                                    </a>
                                </div><!-- end ngIf: ::global.contacts.telegram[0] -->
                                <!-- ngIf: ::global.contacts.telegram[1] -->
                                <div class="col-3 col-sm-2 ng-scope">
                                    <a class="sidebar__social-link" target="_blank" data-title="Channel" href="https://t.me">
                                        <svg width="29px" height="29px">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 21 21" id="telegram">
                                                <path d="M10.5 21C16.3 21 21 16.3 21 10.5S16.3 0 10.5 0 0 4.7 0 10.5 4.7 21 10.5 21zM4.804 10.273 14.927 6.37c.47-.17.88.114.729.825v-.001l-1.723 8.12c-.127.575-.47.716-.948.445l-2.625-1.934-1.267 1.219c-.14.14-.259.258-.529.258l.186-2.672 4.866-4.395c.211-.187-.047-.292-.326-.107l-6.012 3.786-2.591-.809c-.564-.177-.576-.562.117-.832z" fill="#26C6DA"></path>
                                            </svg>
                                        </svg>
                                    </a>
                                </div><!-- end ngIf: ::global.contacts.telegram[1] -->
                                <!-- ngIf: ::global.social.medium -->
                                <div class="col-3 col-sm-2 ng-scope">
                                    <a class="sidebar__social-link" target="_blank" data-title="Medium" href="https://medium.com">
                                        <svg width="29" height="29" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0)">
                                                <path d="M19.3244 4.14137L21 2.53838V2.1875H15.1952L11.0582 12.4845L6.35162 2.1875H0.265125V2.53838L2.2225 4.89475C2.41325 5.06887 2.513 5.3235 2.48762 5.57987V14.84C2.548 15.1734 2.4395 15.5164 2.205 15.7587L0 18.431V18.7775H6.25187V18.4266L4.04688 15.7587C3.808 15.5155 3.69512 15.1786 3.74325 14.84V6.83025L9.23125 18.7819H9.86913L14.588 6.83025V16.3511C14.588 16.6023 14.588 16.6539 14.4235 16.8184L12.726 18.4608V18.8125H20.9615V18.4616L19.3253 16.8595C19.1818 16.751 19.1074 16.569 19.138 16.3922V4.60863C19.1074 4.431 19.1809 4.249 19.3244 4.14137Z" fill="#FFD200"></path>
                                            </g>
                                            <defs>
                                                <clipPath id="clip0">
                                                    <rect width="29" height="29" fill="white"></rect>
                                                </clipPath>
                                            </defs>
                                        </svg>
                                    </a>
                                </div><!-- end ngIf: ::global.social.medium -->
                                <!-- ngIf: ::global.social.twitter -->
                                <div class="col-3 col-sm-2 ng-scope">
                                    <a class="sidebar__social-link" target="_blank" href="https://twitter.com" data-title="Twitter">
                                        <svg width="29px" height="29px">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 21 21" id="twit">
                                                <path d="M18.842 6.255A8.59 8.59 0 0 0 21 4.02v-.001c-.78.342-1.613.57-2.48.68a4.28 4.28 0 0 0 1.893-2.38 8.604 8.604 0 0 1-2.73 1.042 4.304 4.304 0 0 0-7.447 2.945c0 .342.03.67.1.982-3.58-.175-6.746-1.89-8.874-4.503a4.334 4.334 0 0 0-.59 2.176c0 1.491.769 2.813 1.913 3.578a4.252 4.252 0 0 1-1.945-.53v.047a4.325 4.325 0 0 0 3.45 4.23c-.351.096-.733.142-1.13.142-.275 0-.553-.016-.815-.074.558 1.705 2.141 2.959 4.023 3A8.65 8.65 0 0 1 1.03 17.19c-.353 0-.691-.016-1.03-.06a12.12 12.12 0 0 0 6.604 1.933c7.597 0 12.55-6.339 12.238-12.808z" fill="#BE63F9"></path>
                                            </svg>
                                        </svg>
                                    </a>
                                </div><!-- end ngIf: ::global.social.twitter -->
                                <!-- ngIf: ::global.social.github -->
                                <div class="col-3 col-sm-2 ng-scope">
                                    <a class="sidebar__social-link" target="_blank" href="https://github.com/" data-title="Github">
                                        <svg width="29px" height="29px">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 21 21" id="reddit2">
                                                <path d="M10.5 0C4.699 0 0 4.62 0 10.318c0 4.56 3.008 8.426 7.18 9.788.524.097.717-.222.717-.496 0-.245-.009-.894-.013-1.753-2.92.622-3.537-1.385-3.537-1.385-.478-1.19-1.168-1.51-1.168-1.51-.952-.639.073-.627.073-.627 1.054.072 1.608 1.063 1.608 1.063.936 1.578 2.458 1.122 3.058.859.095-.667.365-1.123.666-1.38C6.25 14.62 3.8 13.731 3.8 9.778c0-1.126.407-2.046 1.08-2.768-.118-.26-.472-1.31.092-2.731 0 0 .88-.277 2.888 1.058.84-.23 1.732-.343 2.625-.348.892.005 1.785.118 2.625.348 1.995-1.335 2.874-1.058 2.874-1.058.564 1.421.21 2.47.105 2.731a3.957 3.957 0 0 1 1.076 2.768c0 3.964-2.454 4.837-4.79 5.09.367.31.708.942.708 1.908 0 1.381-.013 2.49-.013 2.826 0 .27.184.593.722.49C17.994 18.74 21 14.87 21 10.319 21 4.62 16.299 0 10.5 0z" fill="#1CBA6E"></path>
                                            </svg>
                                        </svg>
                                    </a>
                                </div><!-- end ngIf: ::global.social.github -->
                            </div>
                        </div>
						
						
                        <!-- ngIf: vm.ready -->
						{loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}
						
						{if $news}
                        <div class="animated fadeIn ng-scope">
                            <!-- ngIf: ::vm.news.length -->
                            <div class="sidebar__news ng-scope">
                                <h3 class="sidebar__title">News:</h3>
                                <div class="swiper swiper-container sidebar__news-slider ng-isolate-scope swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events" sx-swiper="::vm.newsSwiperParams">
                                    <div class="swiper-wrapper" id="swiper-wrapper-f5da2a92d95b04aa" aria-live="off" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
									    {counter name=rex_30 start=0 print=0}
										{foreach from=$news item=n}
										<a href="{" ?a=news&id=`$n.id`"|encurl}" target="_blank" class="swiper-slide ng-scope sidebar__news-item swiper-slide-active" style="width: 420px;" role="group">
                                        <picture class="news__box-list-item-picture js-read_more">
                                                <img alt="" src="{if !empty($n.image_url)}{$n.image_url}{else}styles/assets/app/img/News-{counter name=rex_30}-eng.png{/if}">
                                            </picture>  
                                        </a>
                                        {/foreach}
									</div>
                                    <div class="header__home-slider1-ui d-flex flex-row align-items-center justify-content-center">
                                        <div class="swiper-pagination d-flex swiper-pagination-clickable swiper-pagination-bullets">
										<span class="swiper-pagination-bullet swiper-button-prevz" tabindex="0" role="button" aria-label="Go to slide 1"></span>
										<span class="swiper-pagination-bullet swiper-button-nextz" tabindex="0" role="button" aria-label="Go to slide 2"></span>										
										</div>
                                    </div>
                                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                </div>
                            </div><!-- end ngIf: ::vm.news.length -->
                        </div>
						<!-- end ngIf: vm.ready -->
						{/if}
						
                        <p class="sidebar__text">
                            Keep crypto currency at secure wallets only, so we recommend to use MetaMask or Binance Chain Wallet. </p>
                        <div class="darkSection__action-box-cards d-flex flex-column flex-sm-row justify-content-between">
                            <a class="darkSection__action-box-cards-item d-flex" target="_blank" href="https://metamask.io/download.html">
                                <div class="darkSection__action-box-cards-item-ico">
                                    <svg width="46px" height="46px">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 50 50" id="fox">
                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                            <g clip-path="url(#fox_a)" stroke-width=".25" stroke-linecap="round" stroke-linejoin="round">
                                                <path d="m39.053 10.91-11.94 8.834 2.22-5.207 9.72-3.628z" fill="#E17726" stroke="#E17726"></path>
                                                <path d="m11.512 10.91 11.834 8.916-2.114-5.289-9.72-3.628zM34.753 31.394l-3.177 4.853 6.803 1.873 1.949-6.62-5.575-.106zM10.248 31.5l1.937 6.62 6.79-1.873-3.164-4.853-5.563.106z" fill="#E27625" stroke="#E27625"></path>
                                                <path d="m18.61 23.195-1.89 2.851 6.733.306-.225-7.244-4.618 4.087zM31.955 23.196l-4.688-4.17-.154 7.327 6.732-.306-1.89-2.851zM18.977 36.247l4.074-1.967-3.507-2.733-.567 4.7zM27.514 34.28l4.062 1.967-.555-4.7-3.507 2.733z" fill="#E27625" stroke="#E27625"></path>
                                                <path d="m31.576 36.248-4.062-1.967.33 2.638-.035 1.12 3.767-1.791zM18.977 36.248l3.779 1.79-.024-1.119.319-2.638-4.074 1.967z" fill="#D5BFB2" stroke="#D5BFB2"></path>
                                                <path d="m22.825 29.804-3.378-.99 2.386-1.095.992 2.085zM27.738 29.804l.992-2.085 2.398 1.095-3.39.99z" fill="#233447" stroke="#233447"></path>
                                                <path d="m18.976 36.247.59-4.853-3.755.106 3.165 4.747zM30.998 31.394l.579 4.853 3.177-4.747-3.756-.106zM33.845 26.046l-6.732.306.626 3.452.992-2.085 2.398 1.095 2.716-2.768zM19.449 28.814l2.385-1.095.993 2.085.625-3.452-6.731-.306 2.728 2.768z" fill="#CC6228" stroke="#CC6228"></path>
                                                <path d="m16.72 26.046 2.823 5.501-.094-2.733-2.728-2.768zM31.128 28.814l-.107 2.733 2.823-5.501-2.716 2.768zM23.452 26.352l-.626 3.452.791 4.075.178-5.371-.343-2.156zM27.112 26.352l-.33 2.144.165 5.383.79-4.075-.625-3.452z" fill="#E27525" stroke="#E27525"></path>
                                                <path d="m27.738 29.804-.79 4.076.566.4 3.508-2.733.106-2.733-3.39.99zM19.447 28.814l.095 2.733 3.507 2.733.567-.4-.791-4.076-3.378-.99z" fill="#F5841F" stroke="#F5841F"></path>
                                                <path d="m27.81 38.038.036-1.119-.307-.26h-4.512l-.295.26.024 1.12-3.78-1.791L20.3 37.33l2.681 1.85h4.594l2.693-1.85 1.31-1.083-3.766 1.79z" fill="#C0AC9D" stroke="#C0AC9D"></path>
                                                <path d="m27.514 34.28-.567-.4h-3.33l-.568.4-.319 2.64.296-.26h4.511l.307.26-.33-2.64z" fill="#161616" stroke="#161616"></path>
                                                <path d="m39.56 20.321 1.004-4.877-1.512-4.535-11.538 8.54 4.44 3.746 6.271 1.826 1.382-1.614-.602-.435.956-.872-.732-.566.957-.73-.626-.483zM10 15.444l1.016 4.877-.65.483.969.73-.733.566.957.872-.602.435 1.381 1.614 6.272-1.826 4.44-3.745-11.538-8.54L10 15.443z" fill="#763E1A" stroke="#763E1A"></path>
                                                <path d="m38.226 25.022-6.271-1.826 1.89 2.85-2.823 5.502 3.732-.047h5.574l-2.102-6.48zM18.61 23.196l-6.272 1.826-2.09 6.479h5.563l3.732.047-2.823-5.501 1.89-2.851zM27.112 26.353l.402-6.903 1.818-4.912H21.23l1.82 4.912.4 6.903.154 2.167.012 5.36h3.33l.012-5.36.154-2.167z" fill="#F5841F" stroke="#F5841F"></path>
                                            </g>

                                        </svg>
                                    </svg>
                                </div>
                                <p class="darkSection__action-box-cards-item-text notranslate">Install<br>MetaMask</p>
                            </a>
                            <a class="darkSection__action-box-cards-item d-flex" target="_blank" href="https://www.binance.com/en/download">
                                <div class="darkSection__action-box-cards-item-ico">
                                    <svg width="46px" height="46px">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 50 50" id="wallet">
                                            <rect width="50" height="50" rx="8" fill="#41464F"></rect>
                                            <g clip-path="url(#wallet_a)" fill="#F0C82D">
                                                <path d="M15.91 14.056 24.992 9l9.083 5.056-3.34 1.868-5.743-3.188-5.743 3.188-3.34-1.868zM34.075 20.432l-3.34-1.868-5.743 3.189-5.743-3.189-3.34 1.868v3.736l5.744 3.188v6.376l3.34 1.868 3.339-1.868v-6.376l5.743-3.188v-3.736z"></path>
                                                <path d="M34.075 30.544V26.81l-3.34 1.867v3.736l3.34-1.868z"></path>
                                                <path d="m36.446 31.864-5.743 3.189v3.735l9.082-5.056V23.62l-3.339 1.868v6.376zM33.107 17.244l3.34 1.868v3.736l3.338-1.868v-3.736l-3.339-1.868-3.34 1.868zM21.653 36.405v3.736l3.34 1.867 3.339-1.867v-3.736l-3.34 1.868-3.339-1.868zM15.91 30.544l3.339 1.868v-3.736l-3.34-1.867v3.735zM21.653 17.244l3.34 1.868 3.339-1.868-3.34-1.868-3.339 1.868zM13.539 19.112l3.339-1.868-3.34-1.868-3.339 1.868v3.736l3.34 1.868v-3.736z"></path>
                                                <path d="m13.539 25.488-3.34-1.868v10.112l9.083 5.056v-3.735l-5.743-3.189v-6.376z"></path>
                                            </g>

                                        </svg>
                                    </svg>
                                </div>
                                <p class="darkSection__action-box-cards-item-text notranslate">Install<br>Binance Wallet</p>
                            </a>
                        </div>
                    </div>
                </div>
