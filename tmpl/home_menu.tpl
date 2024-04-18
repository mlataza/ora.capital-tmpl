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
                            <li {if $frm.a == 'faq'}class="active"{/if}>
                                <a href="?a=faq">F.A.Q</a>
                            </li>
                            <li {if $frm.a == 'support'}class="active"{/if}>
                                <a href="?a=support">Support</a>
                            </li>
                        </ul>