         
            <div class="header__lang"> <i class="ico ico-en"></i>
                <span class="notranslate" ng-switch="::global.language.code === 'zh-CN'">
                    <!-- ngSwitchWhen: true -->
                    <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::global.language.code" class="ng-binding ng-scope">en</span>
                    <!-- end ngSwitchWhen: -->
                </span>
                <div class="header__lang-hide">
                    <!-- ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="English"> <i class="ico ico-en"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">en</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="???????"> <i class="ico ico-ru"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">ru</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="???"> <i class="ico ico-zh-CN"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true --><span ng-switch-when="true" class="ng-scope">CN</span>
                            <!-- end ngSwitchWhen: -->
                            <!-- ngSwitchDefault: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="Polskie"> <i class="ico ico-pl"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">pl</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="Italiano"> <i class="ico ico-it"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">it</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="TĂĽrk"> <i class="ico ico-tr"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">tr</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="Espanol"> <i class="ico ico-es"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">es</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="Le franĂ§ais"> <i class="ico ico-fr"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">fr</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="Deutsch"> <i class="ico ico-de"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">de</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="PortuguĂŞs"> <i class="ico ico-pt"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">pt</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="???"> <i class="ico ico-ko"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">ko</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="???"> <i class="ico ico-ja"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">ja</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="???"> <i class="ico ico-ar"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">ar</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                    <a class="header__lang-link pointer ng-scope" ng-repeat="lang in ::global.languages" ng-click="changeLanguage(lang)" title="??????"> <i class="ico ico-mn"></i>
                        <span class="notranslate" ng-switch="::lang.code === 'zh-CN'">
                            <!-- ngSwitchWhen: true -->
                            <!-- ngSwitchDefault: --><span ng-switch-default="" ng-bind="::lang.code" class="ng-binding ng-scope">mn</span>
                            <!-- end ngSwitchWhen: -->
                        </span>
                    </a>
                    <!-- end ngRepeat: lang in ::global.languages -->
                </div>
            </div>