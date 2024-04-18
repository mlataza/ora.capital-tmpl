                        <ul class="d-flex flex-column flex-lg-row" sx-menu="active">
                            <li {if $frm.a == 'news'}class="active"{/if}>
                                <a href="?a=news">News</a>
                            </li>
                            <li {if $frm.page == 'offer'}class="active"{/if}>
                                <a href="?a=cust&amp;page=offer">Tariffs</a>
                            </li>
                            <li {if $frm.page == 'partners'}class="active"{/if}>
                                <a href="?a=cust&amp;page=partners">Partners</a>
                            </li>
                            <li class="submenu {if $frm.a == 'paidout'}active{/if}{if $frm.page == 'reviews'}active{/if}">
                                <a class="pointer" data-links="stats, reviews">
                                    Information <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5 6L0.669873 0.749999L9.33013 0.75L5 6Z" fill="#F8CC3D" />
                                    </svg>
                                </a>
                                <ul>
                                    <!--li>
                                        <a class="d-flex align-items-start" href="?a=paidout">
                                            <svg width="7px" height="8px">
                                                <use xlink:href="#circle"></use>
                                            </svg>
                                            <div class="d-flex flex-column">
                                                <span>Statistics</span>
                                                <p>Open platform statistics</p>
                                            </div>
                                        </a>
                                    </li-->
                                    <li>
                                        <a class="d-flex align-items-start" href="?a=cust&page=reviews">
                                            <svg width="7px" height="8px">
                                                <use xlink:href="#circle"></use>
                                            </svg>
                                            <div class="d-flex flex-column">
                                                <span>Feedback</span>
                                                <p>Honest feedback of our clients</p>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- <li>
                                        <a class="d-flex align-items-start" href="styles/docs/White_Paper_en.pdf" target="_blank">
                                            <svg width="7px" height="8px">
                                                <use xlink:href="#circle"></use>
                                            </svg>
                                            <div class="d-flex flex-column">
                                                <span>White Paper</span>
                                                <p>Project technical description</p>
                                            </div>
                                        </a>
                                    </li> -->
                                </ul>
                            </li>
                            <li {if $frm.page == 'instructions'}class="active"{/if}>
                                <a href="?a=cust&amp;page=instructions">Instructions</a>
                            </li>
                            <li {if $frm.a == 'faq'}class="active"{/if}>
                                <a href="?a=faq">F.A.Q</a>
                            </li>
                            <li {if $frm.a == 'support'}class="active"{/if}>
                                <a href="?a=support">Support</a>
                            </li>
                        </ul>