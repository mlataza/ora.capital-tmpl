!(function e(t, n, o) {
    function r(i, l) {
        if (!n[i]) {
            if (!t[i]) {
                var c = "function" == typeof require && require;
                if (!l && c) return c(i, !0);
                if (a) return a(i, !0);
                var s = new Error("Cannot find module '" + i + "'");
                throw ((s.code = "MODULE_NOT_FOUND"), s);
            }
            var u = (n[i] = { exports: {} });
            t[i][0].call(
                u.exports,
                function (e) {
                    return r(t[i][1][e] || e);
                },
                u,
                u.exports,
                e,
                t,
                n,
                o
            );
        }
        return n[i].exports;
    }
    for (var a = "function" == typeof require && require, i = 0; i < o.length; i++) r(o[i]);
    return r;
})(
    {
        1: [
            function (e, t, n) {
                "use strict";
                e("./app/modules/postfix"), e("./app/modules/toast"), e("./app/modules/storage"), e("./app/modules/modal"), e("./app/modules/clipboard");
                var o = ae(e("./app/config")),
                    r = ae(e("./app/run")),
                    a = ae(e("./app/directives/sxMenu")),
                    i = ae(e("./app/controllers/FacadeHeaderCtrl")),
                    l = ae(e("./app/filters/prefix")),
                    c = ae(e("./app/filters/suffix")),
                    s = ae(e("./app/filters/money")),
                    u = ae(e("./app/filters/inArray")),
                    d = ae(e("./app/filters/telegram")),
                    p = ae(e("./app/custom/sxSwiper")),
                    f = ae(e("./app/controllers/HomeHeaderCtrl")),
                    m = ae(e("./app/custom/sxTooltip")),
                    h = ae(e("./app/controllers/HomeOfferCtrl")),
                    g = ae(e("./app/controllers/PaymentsSystemsCtrl")),
                    y = ae(e("./app/custom/sxTooltipAlt")),
                    v = ae(e("./app/controllers/HomeNewsCtrl")),
                    b = ae(e("./app/controllers/AllNewsCtrl")),
                    w = ae(e("./app/custom/sxNews")),
                    C = ae(e("./app/controllers/OfferCtrl")),
                    _ = ae(e("./app/controllers/ForPartnersCtrl")),
                    $ = ae(e("./app/controllers/StatsCtrl")),
                    P = ae(e("./app/controllers/InstructionsCtrl")),
                    j = ae(e("./app/controllers/ReviewsCtrl")),
                    A = ae(e("./app/filters/trustUrl")),
                    x = ae(e("./app/custom/sxBountyRemain")),
                    O = ae(e("./app/controllers/BountyCtrl")),
                    k = ae(e("./app/controllers/FaqCtrl")),
                    M = ae(e("./app/controllers/ContactsCtrl")),
                    S = ae(e("./app/directives/sxCaptcha")),
                    H = ae(e("./app/directives/sxSubmit")),
                    F = ae(e("./app/custom/sxVideo")),
                    E = ae(e("./app/controllers/SigninCtrl")),
                    T = ae(e("./app/directives/sxAutofocus")),
                    V = ae(e("./app/controllers/TwoFactorAuthCtrl")),
                    N = ae(e("./app/controllers/SignupCtrl")),
                    I = ae(e("./app/controllers/ResetCtrl")),
                    R = ae(e("./app/controllers/AccountLayoutCtrl")),
                    B = ae(e("./app/controllers/AccountBsideCtrl")),
                    D = ae(e("./app/directives/sxTime")),
                    L = ae(e("./app/controllers/AccountBalancesCtrl")),
                    U = ae(e("./app/controllers/DepositCtrl")),
                    q = ae(e("./app/directives/sxDropdownEvent")),
                    Z = ae(e("./app/directives/sxAmount")),
                    z = ae(e("./app/controllers/DepositsCtrl")),
                    W = ae(e("./app/controllers/WithdrawalCtrl")),
                    G = ae(e("./app/filters/cutter")),
                    J = ae(e("./app/controllers/HistoryCtrl")),
                    K = ae(e("./app/controllers/TokenCtrl")),
                    Q = ae(e("./app/controllers/AddressesCtrl")),
                    X = ae(e("./app/controllers/PromoCtrl")),
                    Y = ae(e("./app/controllers/SettingsSecurityCtrl")),
                    ee = ae(e("./app/controllers/Settings2FACtrl")),
                    te = ae(e("./app/controllers/PartnersCtrl")),
                    ne = ae(e("./app/directives/sxCopyReferralLink")),
                    oe = ae(e("./app/custom/sxNewsAlt")),
                    re = ae(e("./app/controllers/PopupToastsCtrl"));
                function ae(e) {
                    return e && e.__esModule ? e : { default: e };
                }
                window.self !== window.top && (window.top.location.href = window.location.href);
                (window.ACCOUNT_API = "/"),
                    (window.LANG = document.documentElement.lang),
                    (window.googleTranslateInit = function () {
                        return new google.translate.TranslateElement({ pageLanguage: LANG });
                    });
                var ie = angular.module("templaterex", ["ngSanitize", "sx.postfix", "sx.clipboard", "sx.storage", "sx.modal", "sx.toast"], o.default).run(r.default);
                ie.filter("inArray", u.default),
                    ie.filter("prefix", l.default),
                    ie.filter("suffix", c.default),
                    ie.filter("money", s.default),
                    ie.filter("cutter", G.default),
                    ie.filter("telegram", d.default),
                    ie.filter("trustUrl", A.default),
                    ie.directive("sxMenu", a.default),
                    ie.directive("sxSwiper", p.default),
                    ie.directive("sxTooltip", m.default),
                    ie.directive("sxTooltipAlt", y.default),
                    ie.directive("sxNews", w.default),
                    ie.directive("sxNewsAlt", oe.default),
                    ie.directive("sxBountyRemain", x.default),
                    ie.directive("sxCaptcha", S.default),
                    ie.directive("sxSubmit", H.default),
                    ie.directive("sxVideo", F.default),
                    ie.directive("sxAutofocus", T.default),
                    ie.directive("sxTime", D.default),
                    ie.directive("sxDropdownEvent", q.default),
                    ie.directive("sxAmount", Z.default),
                    ie.directive("sxCopyReferralLink", ne.default),
                    ie.controller("FacadeHeaderCtrl", i.default),
                    ie.controller("HomeHeaderCtrl", f.default),
                    ie.controller("HomeOfferCtrl", h.default),
                    ie.controller("HomeNewsCtrl", v.default),
                    ie.controller("PaymentsSystemsCtrl", g.default),
                    ie.controller("AllNewsCtrl", b.default),
                    ie.controller("OfferCtrl", C.default),
                    ie.controller("ForPartnersCtrl", _.default),
                    ie.controller("StatsCtrl", $.default),
                    ie.controller("InstructionsCtrl", P.default),
                    ie.controller("ReviewsCtrl", j.default),
                    ie.controller("BountyCtrl", O.default),
                    ie.controller("FaqCtrl", k.default),
                    ie.controller("ContactsCtrl", M.default),
                    ie.controller("TwoFactorAuthCtrl", V.default),
                    ie.controller("SigninCtrl", E.default),
                    ie.controller("SignupCtrl", N.default),
                    ie.controller("ResetCtrl", I.default),
                    ie.controller("AccountLayoutCtrl", R.default),
                    ie.controller("AccountBsideCtrl", B.default),
                    ie.controller("AccountBalancesCtrl", L.default),
                    ie.controller("DepositCtrl", U.default),
                    ie.controller("DepositsCtrl", z.default),
                    ie.controller("WithdrawalCtrl", W.default),
                    ie.controller("HistoryCtrl", J.default),
                    ie.controller("TokenCtrl", K.default),
                    ie.controller("AddressesCtrl", Q.default),
                    ie.controller("PromoCtrl", X.default),
                    ie.controller("SettingsSecurityCtrl", Y.default),
                    ie.controller("Settings2FACtrl", ee.default),
                    ie.controller("PartnersCtrl", te.default),
                    ie.controller("PopupToastsCtrl", re.default),
                    (window.app = ie);
            },
            {
                "./app/config": 2,
                "./app/controllers/AccountBalancesCtrl": 3,
                "./app/controllers/AccountBsideCtrl": 4,
                "./app/controllers/AccountLayoutCtrl": 5,
                "./app/controllers/AddressesCtrl": 6,
                "./app/controllers/AllNewsCtrl": 7,
                "./app/controllers/BountyCtrl": 8,
                "./app/controllers/ContactsCtrl": 9,
                "./app/controllers/DepositCtrl": 11,
                "./app/controllers/DepositsCtrl": 12,
                "./app/controllers/FacadeHeaderCtrl": 13,
                "./app/controllers/FaqCtrl": 14,
                "./app/controllers/ForPartnersCtrl": 15,
                "./app/controllers/HistoryCtrl": 16,
                "./app/controllers/HomeHeaderCtrl": 17,
                "./app/controllers/HomeNewsCtrl": 18,
                "./app/controllers/HomeOfferCtrl": 19,
                "./app/controllers/InstructionsCtrl": 20,
                "./app/controllers/OfferCtrl": 21,
                "./app/controllers/PartnersCtrl": 22,
                "./app/controllers/PaymentsSystemsCtrl": 23,
                "./app/controllers/PopupToastsCtrl": 24,
                "./app/controllers/PromoCtrl": 25,
                "./app/controllers/ResetCtrl": 26,
                "./app/controllers/ReviewsCtrl": 27,
                "./app/controllers/Settings2FACtrl": 28,
                "./app/controllers/SettingsSecurityCtrl": 29,
                "./app/controllers/SigninCtrl": 30,
                "./app/controllers/SignupCtrl": 31,
                "./app/controllers/StatsCtrl": 32,
                "./app/controllers/TokenCtrl": 33,
                "./app/controllers/TwoFactorAuthCtrl": 35,
                "./app/controllers/WithdrawalCtrl": 36,
                "./app/custom/sxBountyRemain": 38,
                "./app/custom/sxNews": 39,
                "./app/custom/sxNewsAlt": 40,
                "./app/custom/sxSwiper": 41,
                "./app/custom/sxTooltip": 42,
                "./app/custom/sxTooltipAlt": 43,
                "./app/custom/sxVideo": 44,
                "./app/directives/sxAmount": 45,
                "./app/directives/sxAutofocus": 46,
                "./app/directives/sxCaptcha": 47,
                "./app/directives/sxCopyReferralLink": 48,
                "./app/directives/sxDropdownEvent": 49,
                "./app/directives/sxMenu": 50,
                "./app/directives/sxSubmit": 51,
                "./app/directives/sxTime": 52,
                "./app/filters/cutter": 53,
                "./app/filters/inArray": 54,
                "./app/filters/money": 55,
                "./app/filters/prefix": 56,
                "./app/filters/suffix": 57,
                "./app/filters/telegram": 58,
                "./app/filters/trustUrl": 59,
                "./app/modules/clipboard": 62,
                "./app/modules/modal": 63,
                "./app/modules/postfix": 64,
                "./app/modules/storage": 65,
                "./app/modules/toast": 66,
                "./app/run": 67,
            },
        ],
        2: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o, r) {
                    e.startSymbol("[["),
                        e.endSymbol("]]"),
                        r.html5Mode({ enabled: !0, rewriteLinks: !1, requireBase: !1 }),
                        t.interceptors.push([
                            "$q",
                            "$rootScope",
                            "$toast",
                            function (e, t, n) {
                                return {
                                    request: function (n) {
                                        if ("POST" === n.method) {
                                            var o = t.global.csrf_token;
                                            void 0 !== n.data ? (n.data.csrf_token = o) : (n.data = { csrf_token: o }), (t.busy = !0);
                                        }
                                        return n || e.when(n);
                                    },
                                    requestError: function (n) {
                                        return (t.busy = !1), e.reject(n);
                                    },
                                    response: function (o) {
                                        return "POST" === o.config.method && ((t.busy = !1), o.data && o.data.type && (n.show(o.data.type, o.data.text), "error" === o.data.type)) ? e.reject(o) : o || e.when(o);
                                    },
                                    responseError: function (o) {
                                      /*   var r = o.status;
                                        if (((t.busy = !1), 400 === r)) n.error("<b>Error 400</b> Bad request");
                                        else {
                                            if (401 === r) return (location.href = "/signin");
                                            404 === r ? n.error("<b>Error 404</b> The requested URL was not found") : 500 === r ? n.error("<b>Error 500</b> Internal Server Error") : n.error("<b>Error " + r + ":</b> " + o.statusText);
                                        } */
                                        return e.reject(o);
                                    },
                                };
                            },
                        ]),
                        n.aHrefSanitizationWhitelist(/^\s*(https?|mailto|skype|tel|tg|bitcoin|litecoin|ethereum):/),
                        o.errorOnUnhandledRejections(!1),
                        "function" == typeof $.fn.select2 &&
                            angular.extend($.fn.select2.defaults.defaults, {
                                width: "auto",
                                dropdownAutoWidth: !0,
                                minimumResultsForSearch: -1,
                                allowHtml: !0,
                                dropdownCssClass: "select2_custom-dropdown animated fadeIn notranslate",
                                containerCssClass: "select2_custom-container notranslate",
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$interpolateProvider", "$httpProvider", "$compileProvider", "$qProvider", "$locationProvider"]);
            },
            {},
        ],
        3: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = this;
                    (n.balances = e),
                        (n.showAll = !1),
                        t.$on("BalanceUpdate", function (e, t) {
                            var o = n.balances.find(function (e) {
                                return e.currency.code === t.code;
                            });
                            o && (o.amount = t.balance);
                        }),
                        (n.toggleBalances = function () {
                            n.showAll = !n.showAll;
                        }),
                        (n.deposit = function (e) {
                            "/account" === t.global.url ? t.$broadcast("DepositEvent", e.currency.code) : (location.href = "/account?act=deposit&curr=".concat(e.currency.code));
                        }),
                        (n.withdrawal = function (e) {
                            "/account/withdrawal" === t.global.url ? t.$broadcast("WithdrawalEvent", e.currency.code) : (location.href = "/account/withdrawal?curr=".concat(e.currency.code));
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["Balances", "$rootScope"]);
            },
            {},
        ],
        4: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = this;
                    function o() {
                        return e.post(ACCOUNT_API, { action: "getHistory", limit: 5 }).then(function (e) {
                            n.history = e.data;
                        });
                    }
                    (n.ready = !1),
                        (n.news = []),
                        (n.history = []),
                        (n.newsSwiperParams = {
                            direction: "horizontal",
                            allowTouchMove: !0,
                            loop: !0,
                            autoplay: { delay: 7e3, pauseOnMouseEnter: !0, disableOnInteraction: !1 },
                            pagination: { el: ".sidebar__news-slider .swiper-pagination", clickable: !0 },
                        }),
                        t.$on("HistoryUpdate", function () {
                            o();
                        }),
                        e
                            .post("/", { action: "getNews" })
                            .then(function (e) {
                                n.news = e.data.splice(0, 4);
                            })
                            .then(function () {
                                o().then(function () {
                                    n.ready = !0;
                                });
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http", "$scope"]);
            },
            {},
        ],
        5: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o, r) {
                    var a = this;
                    function i() {
                        e.innerWidth >= 992 && a.toggleAside(!1);
                    }
                    function l(e) {
                        var t = angular.element(e.target);
                        t.hasClass("menu") || t.parents("aside").hasClass("menu") || t.hasClass("js-burger") || t.parents().hasClass("js-burger") || (a.toggleAside(!1), n.$digest());
                    }
                    function c(e) {
                        var t = angular.element(e.target);
                        t.hasClass("dashboard__col2") ||
                            t.parents().hasClass("dashboard__col2") ||
                            t.hasClass("js-sidebar") ||
                            t.parents().hasClass("js-sidebar") ||
                            t.hasClass("modal") ||
                            t.parents().hasClass("modal") ||
                            (a.toggleBside(!1), n.$digest());
                    }
                    (a.asideState = !1),
                        (a.bsideState = (function () {
                            var e = r.get("bside", !0);
                            window.innerWidth <= 1770 && (e = !1);
                            return e;
                        })()),
                        (a.toggleAside = function () {
                            var n = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : !a.asideState;
                            n !== a.asideState &&
                                (a.bsideState && a.toggleBside(!1),
                                o(function () {
                                    return (a.asideState = n);
                                }),
                                document.documentElement.classList.toggle("ovh", n),
                                n ? (angular.element(e).bind("resize", i), t.on("click", l)) : (angular.element(e).unbind("resize", i), t.off("click", l)));
                        }),
                        (a.toggleBside = function () {
                            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : !a.bsideState;
                            e !== a.bsideState &&
                                (a.asideState && a.toggleAside(!1),
                                o(function () {
                                    (a.bsideState = e), r.set({ bside: e });
                                }),
                                window.innerWidth <= 1770 && (document.documentElement.classList.toggle("ovh", e), e ? t.on("click", c) : t.off("click", c)));
                        }),
                        (a.goDeposit = function () {
                            "/account" === n.global.url ? (n.scrollTo("form", 200, 60), a.toggleAside(!1)) : (location.href = "/account");
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$window", "$document", "$scope", "$timeout", "$storage"]);
            },
            {},
        ],
        6: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    var t = this;
                    (t.form = null),
                        (t.ready = !1),
                        (t.limit = 6),
                        (t.accounts = []),
                        (t.data = { action: "doAccountSettings", account: [] }),
                        (t.submit = function () {
                            t.form.$invalid ||
                                (t.accounts.forEach(function (e) {
                                    return (t.data.account[e.id] = e.address || null);
                                }),
                                e.post(ACCOUNT_API, t.data));
                        }),
                        e
                            .post(ACCOUNT_API, { action: "getAddresses" })
                            .then(function (e) {
                                (t.accounts = e.data), (t.limit = Math.ceil(t.accounts.length / 2));
                            })
                            .then(function () {
                                t.ready = !0;
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http"]);
            },
            {},
        ],
        7: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = r);
                var o = e("../helpers");
                function r(e, t, n, r, a) {
                    var i = this,
                        l = (0, o.getUrlParams)();
                    (i.ready = !1),
                        (i.limit = 10),
                        (i.news = null),
                        (i.loadMore = function (e) {
                            i.limit += e;
                        }),
                        (i.showNewsPopup = function (e) {
                            if (n.modal) return !1;
                            t.showModal({
                                templateUrl: "/news/".concat(e),
                                controller: [
                                    "close",
                                    "$element",
                                    function (e, t) {
                                        t.on("hide.bs.modal", function () {
                                            return e(!1);
                                        });
                                    },
                                ],
                            }).then(function (t) {
                                a.search({ id: e, lang: n.global.language.code }),
                                    t.close.then(function () {
                                        return a.search({});
                                    });
                            });
                        }),
                        e
                            .post("/", { action: "getNews" })
                            .then(function (e) {
                                i.news = e.data;
                            })
                            .then(function () {
                                if (((i.ready = !0), l.has("id"))) {
                                    var e = parseInt(l.get("id"));
                                    if (isNaN(e) || !e || e < 1) return !1;
                                    r(function () {
                                        return i.showNewsPopup(e);
                                    }, 100);
                                }
                            });
                }
                r.$inject = ["$http", "$modal", "$rootScope", "$timeout", "$location"];
            },
            { "../helpers": 60 },
        ],
        8: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                function a(e, t, n) {
                    var o = this;
                    (o.input = { youtube: "", facebook: "", twitter: "", blog: "" }),
                        (o.submit = function (e) {
                            var a = o.input[e].trim();
                            if (!a) return n.info((0, r.default)("bountyLinkRequired")), !1;
                            var i = { action: "doBounty", type: e, value: a };
                            t.post(ACCOUNT_API, i).then(function () {
                                o.input[e] = null;
                            });
                        });
                }
                a.$inject = ["$scope", "$http", "$toast"];
            },
            { "../locale": 61 },
        ],
        9: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    var o = this;
                    (o.form = null),
                        (o.data = e.user || {}),
                        (o.data.action = "doContacts"),
                        (o.data.captcha = null),
                        (o.data.telegram = o.data.telegram ? "@" + o.data.telegram : null),
                        (o.submit = function () {
                            if (o.form.$invalid) return !1;
                            var e = t.post("/", o.data);
                            e.then(function (e) {
                                "success" === e.data.type && ((o.data.subject = null), (o.data.message = null), o.form.$setPristine(), n.$broadcast("FormReset"), n.$broadcast("CaptchaReset"));
                            }),
                                e.catch(function () {
                                    n.$broadcast("CaptchaReset");
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["PageData", "$http", "$rootScope"]);
            },
            {},
        ],
        10: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o, r, a, i, l) {
                    var c = this;
                    (c.qr = e),
                        (c.system = t),
                        (c.currency = n),
                        (c.plan = o),
                        (c.amount = r),
                        (c.tag = a),
                        l.on("hide.bs.modal", function () {
                            return i(!1);
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["QR", "System", "Currency", "Plan", "Amount", "Tag", "close", "$element"]);
            },
            {},
        ],
        11: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = i);
                var o,
                    r = e("../helpers"),
                    a = (o = e("./DepositConfirmationCtrl")) && o.__esModule ? o : { default: o };
                function i(e, t, n, o, i, l) {
                    var c,
                        s = this,
                        u = n.getCurrency(),
                        d = (0, r.getUrlParams)();
                    function p() {
                        return t.post(ACCOUNT_API, { action: "getDeposit" }).then(function (e) {
                            (s.plans = e.data.plans),
                                (s.plan = (function () {
                                    if (d.has("plan_id")) {
                                        var e = parseInt(d.get("plan_id"));
                                        if (!isNaN(e)) return f(e);
                                    }
                                    return f(1);
                                })()),
                                (s.systems = e.data.systems),
                                s.setSystem(
                                    (function () {
                                        if (d.has("curr")) {
                                            return m(d.get("curr"));
                                        }
                                        return m(u);
                                    })()
                                ),
                                (s.data.plan_id = s.plan.id);
                        });
                    }
                    function f(e) {
                        return (
                            s.plans.find(function (t) {
                                return t.id === e;
                            }) || s.plans[0]
                        );
                    }
                    function m(e) {
                        return (
                            s.systems.find(function (t) {
                                return t.currency.code === e;
                            }) || s.systems[0]
                        );
                    }
                    function h() {
                        var e = s.plan.amount[s.curr],
                            t = e.min;
                        return s.system.min > t && (t = s.system.min), { min: t, max: e.max, decimals: (0, r.decimalsNum)(s.curr) };
                    }
                    function g() {
                        o(function () {
                            n.scrollTo("amount", 300, 0, function () {
                                o(function () {
                                    angular.element("#amount").find("input").focus();
                                }, 350);
                            });
                        }, 100);
                    }
                    (s.form = null),
                        (s.sci = null),
                        (s.ready = !1),
                        (s.tokenBalance = (c = e.find(function (e) {
                            return 99 === e.currency.id;
                        }))
                            ? c.amount
                            : 0),
                        (s.plans = []),
                        (s.plan = null),
                        (s.systems = []),
                        (s.system = null),
                        (s.currency = null),
                        (s.sxAmount = null),
                        (s.dd = !1),
                        (s.data = { action: "doDeposit", amount: 0, plan_id: null, system: null, currency: null }),
                        (s.calc = { amount: 0, percent: { day1: 0, day10: 0, day30: 0, day60: 0, total: 0 }, profit: { day1: 0, day7: 0, day30: 0, total: 0 }, allow: !1, barHeight: 60 }),
                        n.$on("DepositEvent", function (e, t) {
                            var n = m(t);
                            s.setSystem(n), g();
                        }),
                        (s.setSystem = function (e) {
                            if (e === s.system) return (s.dd = !1), !1;
                            (s.system = e),
                                (s.curr = s.system.currency.code.toLowerCase()),
                                (s.sxAmount = h()),
                                (s.data.amount = s.sxAmount.min),
                                (s.calc.amount = s.data.amount),
                                (s.data.system = e.code),
                                (s.data.currency = s.curr),
                                (s.dd = !1),
                                s.calculate();
                        }),
                        (s.setPlan = function (e) {
                            e !== s.plan && ((s.plan = e), (s.sxAmount = h()), (s.data.plan_id = e.id), s.calculate());
                        }),
                        (s.calculate = function () {
                            o(function () {
                                var e = s.sxAmount,
                                    t = e.min,
                                    n = e.max,
                                    o = e.decimals,
                                    a = (0, r.actualAmount)(s.data.amount, t, n),
                                    i = s.plan,
                                    l = i.interest.daily,
                                    c = parseFloat(10 * l),
                                    u = parseFloat(30 * l),
                                    d = parseFloat(60 * l),
                                    p = i.interest.total,
                                    f = parseFloat((a * l) / 100),
                                    m = parseFloat(7 * f),
                                    h = parseFloat(30 * f),
                                    g = parseFloat((a * p) / 100),
                                    y = 60 + 10 * (i.id - 1);
                                (s.calc.amount = (0, r.moneyFormat)(a, o)),
                                    (s.calc.percent.day1 = (0, r.moneyFormat)(l, 4)),
                                    (s.calc.percent.day10 = (0, r.moneyFormat)(c, 4)),
                                    (s.calc.percent.day30 = (0, r.moneyFormat)(u, 4)),
                                    (s.calc.percent.day60 = (0, r.moneyFormat)(d, 4)),
                                    (s.calc.percent.total = (0, r.moneyFormat)(p, 4)),
                                    (s.calc.profit.day1 = (0, r.moneyFormat)(f, o)),
                                    (s.calc.profit.day7 = (0, r.moneyFormat)(m, o)),
                                    (s.calc.profit.day30 = (0, r.moneyFormat)(h, o)),
                                    (s.calc.profit.total = (0, r.moneyFormat)(g, o)),
                                    (s.calc.allow = s.tokenBalance >= s.plan.tokens),
                                    (s.calc.barHeight = parseInt(y));
                            }, 30);
                        }),
                        (s.submit = function () {
                            s.form.$invalid ||
                                s.tokenBalance < s.plan.tokens ||
                                t.post(ACCOUNT_API, s.data).then(function (e) {
                                    var t = e.data.sci;
                                    if (void 0 !== t.address) {
                                        var r = null;
                                        return (
                                            "xrp" === s.system.code && (r = t.dest_tag),
                                            l.showModal({
                                                templateUrl: "/account/deposit/confirmation",
                                                controller: a.default,
                                                controllerAs: "vm",
                                                inputs: { QR: t.address, System: s.system, Currency: s.system.currency, Plan: s.plan, Amount: s.data.amount, Tag: r },
                                            })
                                        );
                                    }
                                    (s.sci = i.trustAsHtml(t)),
                                        (n.busy = !0),
                                        o(function () {
                                            angular.element("#paymentForm").submit();
                                        }, 100);
                                });
                        }),
                        p().then(function () {
                            (s.ready = !0), d.has("act") && "deposit" === d.get("act") && g();
                        });
                }
                i.$inject = ["Balances", "$http", "$scope", "$timeout", "$sce", "$modal"];
            },
            { "../helpers": 60, "./DepositConfirmationCtrl": 10 },
        ],
        12: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = r);
                var o = e("../helpers");
                function r(e, t) {
                    var n,
                        r = this;
                    function a() {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : r.deposits;
                        return e.length &&
                            (e = e.filter(function (e) {
                                return 1 === e.status;
                            })).length
                            ? e.reduce(function (e, t) {
                                  return e.plan.id > t.plan.id ? e : t;
                              })
                            : null;
                    }
                    (r.ready = !1),
                        (r.deposits = []),
                        (r.plans = []),
                        (r.progress = {
                            current: null,
                            next: null,
                            percent: 0,
                            amount:
                                ((n = e.find(function (e) {
                                    return 99 === e.currency.id;
                                })),
                                n ? n.amount : 0),
                        }),
                        (r.stats = { profitDaily: 0, profitWeekly: 0, profitMonthly: 0, profitTotal: 0 }),
                        (r.upgradeDeposit = function () {
                            return (location.href = "/account/token?act=refill");
                        }),
                        t
                            .post(ACCOUNT_API, { action: "getDeposits" })
                            .then(function (e) {
                                (r.deposits = e.data.deposits), (r.plans = e.data.plans);
                            })
                            .then(function () {
                                !(function () {
                                    var e = a();
                                    if (e) {
                                        var t = e.plan,
                                            n = parseFloat(7 * t.interest),
                                            i = parseFloat(30 * t.interest),
                                            l = parseFloat(100 * t.interest);
                                        (r.stats.profitDaily = (0, o.moneyFormat)(t.interest, 4)),
                                            (r.stats.profitWeekly = (0, o.moneyFormat)(n, 4)),
                                            (r.stats.profitMonthly = (0, o.moneyFormat)(i, 4)),
                                            (r.stats.profitTotal = (0, o.moneyFormat)(l, 4));
                                    }
                                })(),
                                    (function () {
                                        var e = a();
                                        if (
                                            e &&
                                            ((r.progress.current = r.plans.find(function (t) {
                                                return t.id === e.plan.id;
                                            })),
                                            (r.progress.next = r.plans.find(function (e) {
                                                return e.id === r.progress.current.id + 1;
                                            })),
                                            r.progress.next)
                                        ) {
                                            var t = 100 * parseFloat((r.progress.amount - r.progress.current.tokens) / (r.progress.next.tokens - r.progress.current.tokens));
                                            t < 0 && (t = 0), t > 100 && (t = 100), (r.progress.percent = parseFloat(t.toFixed(2)));
                                        }
                                    })(),
                                    (r.ready = !0);
                            });
                }
                r.$inject = ["Balances", "$http"];
            },
            { "../helpers": 60 },
        ],
        13: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    var t = this;
                    function n() {
                        e.innerWidth >= 992 && t.toggleBurger(!1);
                    }
                    (t.burgerState = !1),
                        (t.toggleBurger = function () {
                            var o = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : !t.burgerState;
                            o !== t.burgerState && ((t.burgerState = o), document.documentElement.classList.toggle("ovh", o), o ? angular.element(e).bind("resize", n) : angular.element(e).unbind("resize", n));
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$window"]);
            },
            {},
        ],
        14: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = r);
                var o = e("../helpers");
                function r(e, t, n) {
                    var r = this,
                        a = [null, "finance", "tech", "platform", "partners", "passport"],
                        i = (0, o.getUrlParams)();
                    (r.ready = !1),
                        (r.categories = null),
                        (r.category = null),
                        (r.setCategory = function (e) {
                            if (e === r.category) return !1;
                            (r.category = e),
                                (r.ready = !0),
                                t.search("tab", e.label),
                                n(function () {
                                    angular.element(".faq__list-item").on("click", function () {
                                        angular.element(this).toggleClass("active");
                                    });
                                }, 100);
                        }),
                        e
                            .post("/", { action: "getFaq" })
                            .then(function (e) {
                                (r.categories = e.data),
                                    r.categories.forEach(function (e) {
                                        e.label = a[e.id] || null;
                                    });
                            })
                            .then(function () {
                                var e = r.categories[0];
                                if (i.has("tab")) {
                                    var t = i.get("tab");
                                    if ((0, o.inArray)(t, a)) {
                                        var n = r.categories.find(function (e) {
                                            return e.label === t;
                                        });
                                        n && n.items.length && (e = n);
                                    }
                                }
                                r.setCategory(e);
                            });
                }
                r.$inject = ["$http", "$location", "$timeout"];
            },
            { "../helpers": 60 },
        ],
        15: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    this.programs = e.tokens;
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["PageData"]);
            },
            {},
        ],
        16: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    var o = this,
                        r = ["transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer", "transfer"],
                        a = ["status", "circle", "circle", "circle_green", "circle_red"];
                    (o.ready = !1),
                        (o.limit = 10),
                        (o.history = []),
                        (o.filters = e.filters),
                        (o.dd = { type: !1, status: !1, currency: !1 }),
                        (o.filter = { type_label: "", currency: { code: "" }, status: "" }),
                        n.$watch(
                            "vm.filter",
                            function () {
                                o.limit = 10;
                            },
                            !0
                        ),
                        (o.loadMore = function (e) {
                            o.limit += parseInt(e);
                        }),
                        (o.setFilter = function (e, t, n) {
                            "currency" === t ? (o.filter.currency.code = e.key) : (o.filter[t] = e.key), (o.filterValue[n] = e), (o.dd[n] = !1);
                        }),
                        (o.resetFilter = function () {
                            (o.filter.type_label = ""), (o.filter.currency.code = ""), (o.filter.status = ""), (o.filterValue = { type: o.filters.types[0], currency: o.filters.currencies[0], status: o.filters.statuses[0] });
                        }),
                        t
                            .post(ACCOUNT_API, { action: "getHistory" })
                            .then(function (e) {
                                o.history = e.data;
                            })
                            .then(function () {
                                o.filters.types.forEach(function (e) {
                                    e.icon = r[e.key] || r[0];
                                }),
                                    o.filters.statuses.forEach(function (e) {
                                        e.icon = a[e.key] || a[0];
                                    }),
                                    o.filters.currencies.forEach(function (e) {
                                        e.icon = "" === e.key ? "list" : e.key;
                                    }),
                                    o.resetFilter(),
                                    (o.ready = !0);
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["PageData", "$http", "$scope"]);
            },
            {},
        ],
        17: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    (this.swiperParams = {
                        0: {
                            direction: "vertical",
                            height: 761,
                            allowTouchMove: !1,
                            loop: !0,
                            pagination: { el: ".header__home-slider1-el .swiper-pagination", clickable: !0 },
                            navigation: { nextEl: ".header__home-slider1-el .swiper-button-next", prevEl: ".header__home-slider1-el .swiper-button-prev" },
                            autoplay: { delay: 13e3, pauseOnMouseEnter: !0, disableOnInteraction: !1 },
                            breakpoints: {
                                0: { navigation: !1, direction: "horizontal", allowTouchMove: !0, loop: !1, autoHeight: !1, height: 882 },
                                992: { navigation: { nextEl: ".header__home-slider1-el .swiper-button-next", prevEl: ".header__home-slider1-el .swiper-button-prev" }, loop: !1, direction: "vertical", allowTouchMove: !1, height: 761 },
                            },
                        },
                        1: {
                            direction: "horizontal",
                            slidesPerView: 2,
                            height: 200,
                            allowTouchMove: !1,
                            spaceBetween: 30,
                            loop: !1,
                            navigation: { nextEl: ".header__home-slider2-el .swiper-button-next", prevEl: ".header__home-slider2-el .swiper-button-prev" },
                            autoplay: { delay: 6e3, pauseOnMouseEnter: !0, disableOnInteraction: !1 },
                            scrollbar: { el: ".header__home-slider2-el .swiper-scrollbar", draggable: !0, snapOnRelease: !0 },
                            breakpoints: {
                                0: { slidesPerView: 1, scrollbar: !1, allowTouchMove: !0 },
                                992: { slidesPerView: 2, scrollbar: { el: ".header__home-slider2-el .swiper-scrollbar", draggable: !0, snapOnRelease: !0 }, allowTouchMove: !1 },
                            },
                        },
                    }),
                        (this.topDeposits = e.top);
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["PageData"]);
            },
            {},
        ],
        18: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    this.news = e;
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["FacadeNewsModule"]);
            },
            {},
        ],
        19: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return (
                        (function (e) {
                            if (Array.isArray(e)) return r(e);
                        })(e) ||
                        (function (e) {
                            if (("undefined" != typeof Symbol && null != e[Symbol.iterator]) || null != e["@@iterator"]) return Array.from(e);
                        })(e) ||
                        (function (e, t) {
                            if (!e) return;
                            if ("string" == typeof e) return r(e, t);
                            var n = Object.prototype.toString.call(e).slice(8, -1);
                            "Object" === n && e.constructor && (n = e.constructor.name);
                            if ("Map" === n || "Set" === n) return Array.from(e);
                            if ("Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return r(e, t);
                        })(e) ||
                        (function () {
                            throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
                        })()
                    );
                }
                function r(e, t) {
                    (null == t || t > e.length) && (t = e.length);
                    for (var n = 0, o = new Array(t); n < t; n++) o[n] = e[n];
                    return o;
                }
                function a(e, t, n, r) {
                    var a = this,
                        i = o(t.global.currencies);
                    function l() {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : t.getCurrency();
                        return (
                            i.find(function (t) {
                                return t.code === e;
                            }) || i[0]
                        );
                    }
                    function c(e) {
                        a.plans.forEach(function (t) {
                            t.currency = { code: e.code, name: e.name };
                        });
                    }
                    function s(e) {
                        var o = angular.element(e.target),
                            r = "dashboard__select-check",
                            i = "dashboard__select-list-option";
                        if (o.hasClass(r) || o.parents("div").hasClass(r)) return !1;
                        o.hasClass(i) ||
                            o.parents("div").hasClass(i) ||
                            (a.plans.forEach(function (e) {
                                return (e.dropdown = !1);
                            }),
                            n.off("mouseup", s),
                            t.$digest());
                    }
                    (a.ready = !1),
                        (a.stats = e.stats),
                        (a.plans = []),
                        (a.toggleDropdown = function (e) {
                            var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : !e.dropdown;
                            (e.dropdown = t),
                                a.plans
                                    .filter(function (t) {
                                        return t.id !== e.id;
                                    })
                                    .forEach(function (e) {
                                        return (e.dropdown = !1);
                                    }),
                                n.off("mouseup", s),
                                t && n.on("mouseup", s);
                        }),
                        (a.setPlanCurrency = function (e, t) {
                            if (e.currency.code === t.code) return !1;
                            (e.currency = t), a.toggleDropdown(e, !1);
                        }),
                        t.$on("CurrencyChange", function (e, t) {
                            c(l(t));
                        }),
                        r
                            .post("/", { action: "getOffer" })
                            .then(function (e) {
                                a.plans = e.data;
                            })
                            .then(function () {
                                c(l()), (a.ready = !0);
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a), (a.$inject = ["PageData", "$scope", "$document", "$http"]);
            },
            {},
        ],
        20: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = r);
                var o = e("../helpers");
                function r(e, t, n) {
                    var r = this,
                        a = (0, o.getUrlParams)(),
                        i = n.getLanguage();
                    (r.tab = "start"),
                        (r.lang = "ru" === i.code ? "ru" : "en"),
                        (r.setTab = function (e) {
                            (r.tab = e), t.search("tab", e);
                        }),
                        e(function () {
                            angular.element(".js-collapse").on("click", function (e) {
                                var t = angular.element(this);
                                t.toggleClass("active"), t.closest(".manual__steps-el").find(".manual__steps-item-open").toggleClass("show");
                            });
                        }, 30),
                        (function () {
                            if (a.has("tab")) {
                                var e = a.get("tab");
                                if (!(0, o.inArray)(e, ["start", "buy_token", "sell_token"])) return !1;
                                r.tab = e;
                            }
                        })();
                }
                r.$inject = ["$timeout", "$location", "$scope"];
            },
            { "../helpers": 60 },
        ],
        21: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return (
                        (function (e) {
                            if (Array.isArray(e)) return r(e);
                        })(e) ||
                        (function (e) {
                            if (("undefined" != typeof Symbol && null != e[Symbol.iterator]) || null != e["@@iterator"]) return Array.from(e);
                        })(e) ||
                        (function (e, t) {
                            if (!e) return;
                            if ("string" == typeof e) return r(e, t);
                            var n = Object.prototype.toString.call(e).slice(8, -1);
                            "Object" === n && e.constructor && (n = e.constructor.name);
                            if ("Map" === n || "Set" === n) return Array.from(e);
                            if ("Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return r(e, t);
                        })(e) ||
                        (function () {
                            throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
                        })()
                    );
                }
                function r(e, t) {
                    (null == t || t > e.length) && (t = e.length);
                    for (var n = 0, o = new Array(t); n < t; n++) o[n] = e[n];
                    return o;
                }
                function a(e, t, n) {
                    var r = this,
                        a = o(t.global.currencies);
                    function i() {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : t.getCurrency();
                        return (
                            a.find(function (t) {
                                return t.code === e;
                            }) || a[0]
                        );
                    }
                    function l(e) {
                        r.plans.forEach(function (t) {
                            t.currency = { code: e.code, name: e.name };
                        });
                    }
                    function c(e) {
                        var o = angular.element(e.target),
                            a = "dashboard__select-check",
                            i = "dashboard__select-list-option";
                        if (o.hasClass(a) || o.parents("div").hasClass(a)) return !1;
                        o.hasClass(i) ||
                            o.parents("div").hasClass(i) ||
                            (r.plans.forEach(function (e) {
                                return (e.dropdown = !1);
                            }),
                            n.off("mouseup", c),
                            t.$digest());
                    }
                    (r.ready = !1),
                        (r.plans = []),
                        (r.toggleDropdown = function (e) {
                            var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : !e.dropdown;
                            (e.dropdown = t),
                                r.plans
                                    .filter(function (t) {
                                        return t.id !== e.id;
                                    })
                                    .forEach(function (e) {
                                        return (e.dropdown = !1);
                                    }),
                                n.off("mouseup", c),
                                t && n.on("mouseup", c);
                        }),
                        (r.setPlanCurrency = function (e, t) {
                            if (e.currency.code === t.code) return !1;
                            (e.currency = t), r.toggleDropdown(e, !1);
                        }),
                        t.$on("CurrencyChange", function (e, t) {
                            l(i(t));
                        }),
                        e
                            .post("/", { action: "getOffer" })
                            .then(function (e) {
                                r.plans = e.data;
                            })
                            .then(function () {
                                l(i()), (r.ready = !0);
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a), (a.$inject = ["$http", "$scope", "$document"]);
            },
            {},
        ],
        22: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o) {
                    var r = this,
                        a = n.global.currencies,
                        i = { level: "", filter_query: "" },
                        l = { count: 0, deposited: {}, profit: {} };
                    function c(e) {
                        if (void 0 === e) return !1;
                        var t = angular.copy(l);
                        e.forEach(function (e) {
                            t.count++,
                                a.forEach(function (n) {
                                    (t.deposited[n.code] += e.deposited[n.code]), (t.profit[n.code] += e.profit[n.code]);
                                });
                        }),
                            (r.filterStats = t);
                    }
                    (r.ready = !1),
                        (r.modalReady = !0),
                        (r.limit = 10),
                        (r.stats = {}),
                        (r.progress = {}),
                        (r.upline = null),
                        (r.progressBar = { amount: 0, percent: 0 }),
                        (r.partners = []),
                        (r.filtered = void 0),
                        (r.filter = angular.copy(i)),
                        (r.filters = { levels: [] }),
                        (r.filterStats = angular.copy(l)),
                        n.$watch(
                            "vm.filter",
                            function () {
                                o(function () {
                                    c(r.filtered);
                                }, 30),
                                    (r.limit = 10);
                            },
                            !0
                        ),
                        (r.showPopup = function (e, n, o) {
                            if (r.modalReady)
                                return (
                                    (r.modalReady = !1),
                                    t
                                        .showModal({
                                            templateUrl: "/account/partners/popup",
                                            controller: [
                                                "data",
                                                "title",
                                                "empty",
                                                "$element",
                                                "close",
                                                function (e, t, n, o, r) {
                                                    var a = this;
                                                    (a.title = t),
                                                        (a.data = e),
                                                        (a.empty = n),
                                                        (a.count = Object.entries(a.data).filter(function (e) {
                                                            return e[1] > 0;
                                                        }).length),
                                                        o.on("hide.bs.modal", function () {
                                                            return r(!1);
                                                        });
                                                },
                                            ],
                                            controllerAs: "vm",
                                            inputs: { data: e, title: n, empty: o },
                                        })
                                        .then(function (e) {
                                            e.close.then(function () {
                                                (r.modalReady = !0), e.element.modal("hide");
                                            });
                                        })
                                );
                        }),
                        (r.setFilterLevel = function (e) {
                            e !== r.filter.level && (r.filter.level = e);
                        }),
                        (r.resetFilter = function () {
                            r.filter = angular.copy(i);
                        }),
                        (r.loadMore = function (e) {
                            return (r.limit += parseInt(e));
                        }),
                        a.forEach(function (e) {
                            (l.deposited[e.code] = 0), (l.profit[e.code] = 0);
                        }),
                        e
                            .post(ACCOUNT_API, { action: "getReferralStats" })
                            .then(function (e) {
                                (r.stats = e.data), (r.progress = e.data.progress), (r.upline = e.data.upline), delete r.stats.progress, delete r.stats.upline;
                            })
                            .then(function () {
                                e.post(ACCOUNT_API, { action: "getPartners" })
                                    .then(function (e) {
                                        r.partners = e.data;
                                    })
                                    .then(function () {
                                        r.partners.length > 2 &&
                                            ((r.filters.levels = new Array(r.stats.depth).fill().map(function (e, t) {
                                                return ++t;
                                            })),
                                            c(r.partners)),
                                            (r.progressBar.amount = r.stats.tokenBalance),
                                            (function () {
                                                var e = r.progress[0],
                                                    t = r.progress[1],
                                                    n = r.progressBar.amount;
                                                if (t) {
                                                    var o = 100 * parseFloat((n - e.tokens) / (t.tokens - e.tokens));
                                                    o < 0 && (o = 0), o > 100 && (o = 100), (r.progressBar.percent = parseFloat(o.toFixed(2)));
                                                }
                                            })(),
                                            (r.ready = !0);
                                    });
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http", "$modal", "$scope", "$timeout"]);
            },
            {},
        ],
        23: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        this.systems = [
                            { code: "btc", name: "Bitcoin", animation: "1s" },
                            { code: "bch", name: "Bitcoin Cash", animation: "1.1s" },
                            { code: "eth", name: "Ethereum", animation: "1.2s" },
                            { code: "ltc", name: "Litecoin", animation: "1.3s" },
                            { code: "trx", name: "Tron", animation: "1.4s" },
                            { code: "doge", name: "Dogecoin", animation: "1.5s" },
                            { code: "xrp", name: "Ripple", animation: "1.6s" },
                            { code: "usdc", name: "USD Coin", animation: "1.7s" },
                            { code: "bnb", name: "Binance coin", animation: "1.8s" },
                            { code: "busd", name: "Binance USD", animation: "1.9s" },
                            { code: "usdt", name: "Tether", animation: "2s" },
                            { code: "pm", name: "PerfectMoney", animation: "2.1s" },
                            { code: "ym", name: "Yandex Money", animation: "2.2s" },
                            { code: "visa", name: "Visa world", animation: "2.3s" },
                            { code: "mc", name: "MasterCard", animation: "2.4s" },
                            { code: "maestro", name: "Maestro", animation: "2.5s" },
                            { code: "p24", name: "Privat24", animation: "2.6s" },
                            { code: "qiwi", name: "QIWI wallet", animation: "2.7s" },
                        ];
                    });
            },
            {},
        ],
        24: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    var o = this;
                    (o.msgs = []),
                        new Pusher(e.pusher.key, { cluster: e.pusher.cluster }).subscribe("updates").bind("transaction", function (e) {
                            o.msgs.push(e),
                                n.$digest(),
                                t(function () {
                                    o.msgs = o.msgs.filter(function (t) {
                                        return t !== e;
                                    });
                                }, 1e4);
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["Global", "$timeout", "$scope"]);
            },
            {},
        ],
        25: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                function a(e, t, n) {
                    var o = this,
                        a = (function () {
                            var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "en",
                                n = e.getLanguage();
                            return "base" === n.type ? n.code : t;
                        })(),
                        i = e.global.user.link,
                        l = window.location.origin;
                    (o.sizes = ["125x125", "160x600", "180x150", "200x200", "250x250", "300x250", "300x300", "468x60", "728x90", "1200x150", "1920x200"]),
                        (o.size = o.sizes[0]),
                        (o.setSize = function (t) {
                            t !== o.size && ((o.size = t), e.scrollTo("banner", 200, 40));
                        }),
                        (o.bannerSrc = function (e) {
                            return [l, "promo", a, e + ".gif"].join("/");
                        }),
                        (o.embedCode = function (e) {
                            return "&lt;a target=&quot;_blank&quot; href=&quot;" + i + "&quot;&gt;&lt;img src=&quot;" + o.bannerSrc(e) + "&quot; border=&quot;0&quot;&gt;&lt;/a&gt";
                        }),
                        (o.inputCode = function (e) {
                            var t = o.bannerSrc(e);
                            return '<a target="_blank" href="'.concat(i, '"><img src="').concat(t, '" alt="').concat(e, '"></a>');
                        }),
                        (o.copyEmbed = function (e) {
                            var a = o.embedCode(e);
                            t.copy(a).then(function () {
                                n.info((0, r.default)("embedCodeCopied"));
                            });
                        });
                }
                a.$inject = ["$scope", "$clipboard", "$toast"];
            },
            { "../locale": 61 },
        ],
        26: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = this;
                    (n.form = null),
                        (n.data = { action: "doReset", email: null, captcha: null }),
                        (n.submit = function () {
                            if (n.form.$invalid) return !1;
                            var o = e.post("/", n.data);
                            o.then(function (e) {
                                "success" === e.data.type && ((n.data.email = null), n.form.$setPristine(), t.$broadcast("FormReset")), t.$broadcast("CaptchaReset");
                            }),
                                o.catch(function () {
                                    return t.$broadcast("CaptchaReset");
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http", "$rootScope"]);
            },
            {},
        ],
        27: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = this,
                        o = 1,
                        r = 0;
                    function a() {
                        n.reviews.forEach(function (e) {
                            return (e.preview = !0);
                        });
                    }
                    function i() {
                        return t.scrollTo("video", 100, 30);
                    }
                    (n.ready = !1),
                        (n.reviews = []),
                        (n.limit = 3),
                        (n.offset = 0),
                        (n.next = function () {
                            (r += 1) > o - 1 && (r = 0), (n.offset = Math.ceil(r * n.limit)), a(), i();
                        }),
                        (n.prev = function () {
                            (r -= 1) < 0 && (r = o - 1), (n.offset = Math.ceil(r * n.limit)), a(), i();
                        }),
                        (n.showVideo = function (e) {
                            a(), (e.preview = !1);
                        }),
                        e
                            .post("/", { action: "getReviews" })
                            .then(function (e) {
                                n.reviews = e.data;
                            })
                            .then(function () {
                                (o = Math.ceil(n.reviews.length / n.limit)), (n.ready = !0);
                            });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http", "$scope"]);
            },
            {},
        ],
        28: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    var o = this;
                    (o.form = null),
                        (o.ga = e.ga),
                        (o.data = { action: "doGoogleAuthStatus", code: null }),
                        (o.submit = function () {
                            if (!o.form.$invalid) {
                                var e = t.post(ACCOUNT_API, o.data);
                                e.then(function (e) {
                                    (o.ga.status = e.data.data.status), (o.data.code = null), o.form.$setPristine(), n.$broadcast("FormReset");
                                }),
                                    e.catch(function () {
                                        o.data.code = null;
                                    });
                            }
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["PageData", "$http", "$rootScope"]);
            },
            {},
        ],
        29: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = this;
                    (n.form = null),
                        (n.data = { action: "doSecuritySettings", password: null, new_password: null, new_password_confirmation: null }),
                        (n.submit = function () {
                            if (n.form.$invalid) return !1;
                            var o = e.post(ACCOUNT_API, n.data);
                            o.then(function () {
                                (n.data.password = null), (n.data.new_password = null), (n.data.new_password_confirmation = null), n.form.$setPristine(), t.$broadcast("FormReset");
                            }),
                                o.catch(function () {
                                    n.form.$setPristine(), t.$broadcast("FormReset");
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$http", "$rootScope"]);
            },
            {},
        ],
        30: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = Object.keys(e);
                    if (Object.getOwnPropertySymbols) {
                        var o = Object.getOwnPropertySymbols(e);
                        t &&
                            (o = o.filter(function (t) {
                                return Object.getOwnPropertyDescriptor(e, t).enumerable;
                            })),
                            n.push.apply(n, o);
                    }
                    return n;
                }
                function r(e) {
                    for (var t = 1; t < arguments.length; t++) {
                        var n = null != arguments[t] ? arguments[t] : {};
                        t % 2
                            ? o(Object(n), !0).forEach(function (t) {
                                  a(e, t, n[t]);
                              })
                            : Object.getOwnPropertyDescriptors
                            ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(n))
                            : o(Object(n)).forEach(function (t) {
                                  Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(n, t));
                              });
                    }
                    return e;
                }
                function a(e, t, n) {
                    return t in e ? Object.defineProperty(e, t, { value: n, enumerable: !0, configurable: !0, writable: !0 }) : (e[t] = n), e;
                }
                function i(e, t, n, o) {
                    var a = this;
                    (a.form = null),
                        (a.gaRequired = !1),
                        (a.data = { action: "doSignin", username: null, password: null, captcha: null, ga_code: null }),
                        (a.submit = function () {
                            if (a.form.$invalid || a.gaRequired) return !1;
                            var i = e.post("/", a.data);
                            i.then(function (e) {
                                return e.data.ga_required
                                    ? ((a.gaRequired = !0),
                                      o(function () {
                                          n.showModal({ templateUrl: "/2fa", controllerAs: "vm", controller: "TwoFactorAuthCtrl", inputs: { Data: r({}, a.data) } }).then(function (e) {
                                              e.close.then(function () {
                                                  (a.gaRequired = !1), (a.data.ga_code = null), t.$broadcast("CaptchaReset");
                                              });
                                          });
                                      }, 30),
                                      !1)
                                    : void 0 !== e.data.uri
                                    ? (location.href = e.data.uri)
                                    : void t.$broadcast("CaptchaReset");
                            }),
                                i.catch(function () {
                                    t.$broadcast("CaptchaReset");
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = i), (i.$inject = ["$http", "$rootScope", "$modal", "$timeout"]);
            },
            {},
        ],
        31: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = i);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o },
                    a = e("../helpers");
                function i(e, t, n, o) {
                    var i = this,
                        l = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789()[]*&^%$#@";
                    (i.form = null),
                        (i.upline = null),
                        (i.data = { action: "doSignup", username: null, email: null, password: (0, a.getRandomString)(24, l), pincode: (0, a.getRandomInteger)(t.global.pincode.length), telegram: null, rules: 1, upline: null }),
                        (i.copyPassword = function () {
                            n.copy(i.data.password).then(function () {
                                o.info((0, r.default)("passwordCopied"));
                            });
                        }),
                        (i.copyPincode = function () {
                            n.copy(i.data.pincode).then(function () {
                                o.info((0, r.default)("pincodeCopied"));
                            });
                        }),
                        (i.submit = function () {
                            if (i.form.$invalid) return !1;
                            var n = e.post("/", i.data);
                            n.then(function (e) {
                                if (void 0 !== e.data.url) return (location.href = e.data.url);
                                e.data.data &&
                                    e.data.data.email_check &&
                                    ((i.data.username = null),
                                    (i.data.email = null),
                                    (i.data.password = (0, a.getRandomString)(24, l)),
                                    (i.data.pincode = (0, a.getRandomInteger)(t.global.pincode.length)),
                                    (i.data.telegram = null),
                                    i.form.$setPristine(),
                                    t.$broadcast("FormReset")),
                                    t.$broadcast("CaptchaReset");
                            }),
                                n.catch(function () {
                                    return t.$broadcast("CaptchaReset");
                                });
                        }),
                        e.post("/", { action: "getUpline" }).then(function (e) {
                            i.data.upline = e.data;
                        });
                }
                i.$inject = ["$http", "$rootScope", "$clipboard", "$toast"];
            },
            { "../helpers": 60, "../locale": 61 },
        ],
        32: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = l);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                function a(e) {
                    return (
                        (function (e) {
                            if (Array.isArray(e)) return i(e);
                        })(e) ||
                        (function (e) {
                            if (("undefined" != typeof Symbol && null != e[Symbol.iterator]) || null != e["@@iterator"]) return Array.from(e);
                        })(e) ||
                        (function (e, t) {
                            if (!e) return;
                            if ("string" == typeof e) return i(e, t);
                            var n = Object.prototype.toString.call(e).slice(8, -1);
                            "Object" === n && e.constructor && (n = e.constructor.name);
                            if ("Map" === n || "Set" === n) return Array.from(e);
                            if ("Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return i(e, t);
                        })(e) ||
                        (function () {
                            throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
                        })()
                    );
                }
                function i(e, t) {
                    (null == t || t > e.length) && (t = e.length);
                    for (var n = 0, o = new Array(t); n < t; n++) o[n] = e[n];
                    return o;
                }
                function l(e, t, n, o, i) {
                    var l = this,
                        c = null;
                    (l.ready = !1),
                        (l.topLimit = 5),
                        (l.latestLimit = 10),
                        (l.stats = []),
                        (l.topDeposits = []),
                        (l.topHolders = []),
                        (l.topMembers = []),
                        (l.topReferrals = []),
                        (l.latest = []),
                        (l.copyBatch = function (e) {
                            t.copy(e).then(function () {
                                n.info((0, r.default)("dataCopiedToClipboard"));
                            });
                        }),
                        (l.loadMore = function (e) {
                            l.latestLimit += e;
                        }),
                        e
                            .post("/", { action: "getStats" })
                            .then(function (e) {
                                (l.stats = e.data.stats),
                                    (l.topDeposits = e.data.topDeposits),
                                    (l.topHolders = e.data.topHolders),
                                    (l.topMembers = e.data.topMembers),
                                    (l.topReferrals = e.data.topReferrals),
                                    (l.latest = e.data.latest),
                                    (c = l.latest[0].id);
                            })
                            .then(function () {
                                (l.ready = !0),
                                    o(function () {
                                        var t;
                                        (t = { action: "getLatestUpdate", lid: c }),
                                            e.post("/", t).then(function (e) {
                                                if (e.data.length) {
                                                    var t = e.data;
                                                    (l.latest = [].concat(a(t), a(l.latest))),
                                                        (c = e.data[0].id),
                                                        i(function () {
                                                            t.forEach(function (e) {
                                                                return (e.new = !1);
                                                            });
                                                        }, 7e3);
                                                }
                                            });
                                    }, 3e3);
                            });
                }
                l.$inject = ["$http", "$clipboard", "$toast", "$interval", "$timeout"];
            },
            { "../locale": 61 },
        ],
        33: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = l);
                var o,
                    r = e("../helpers"),
                    a = (o = e("./TokenPincodeCtrl")) && o.__esModule ? o : { default: o };
                function i(e) {
                    return (i =
                        "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
                            ? function (e) {
                                  return typeof e;
                              }
                            : function (e) {
                                  return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e;
                              })(e);
                }
                function l(e, t, n, o, l) {
                    var c = this,
                        s = (0, r.getUrlParams)();
                    function u() {
                        return { min: 0, max: c.account.balance, decimals: 6 };
                    }
                    (c.form = null),
                        (c.formBusy = !0),
                        (c.ready = !1),
                        (c.stats = null),
                        (c.sxAmount = {}),
                        (c.account = null),
                        (c.chains = []),
                        (c.history = []),
                        (c.historyLimit = 10),
                        (c.chain = { refill: null, withdrawal: null }),
                        (c.dd = { refill: !1, withdrawal: !1 }),
                        (c.data = { action: "doTokenWithdrawal", chain: null, amount: 0, account: null }),
                        (c.calc = { fee_amount: 0, dst_amount: 0, rest: 0 }),
                        (c.setChain = function (e, t) {
                            (c.dd[t] = !1), e !== c.chain[t] && 1 === e.status && ((c.chain[t] = e), "withdrawal" === t && ((c.sxAmount = u()), (c.data.chain = c.chain.withdrawal.code), c.calculate()));
                        }),
                        (c.setAllAmount = function () {
                            (c.data.amount = c.account.balance), c.calculate();
                        }),
                        (c.loadMore = function (e) {
                            c.historyLimit += parseInt(e);
                        }),
                        (c.calculate = function () {
                            t(function () {
                                var e = c.sxAmount,
                                    t = e.min,
                                    n = e.decimals,
                                    o = (0, r.actualAmount)(c.data.amount, t),
                                    a = parseFloat((o * c.chain.withdrawal.fee) / 100),
                                    i = parseFloat(o - a),
                                    l = parseFloat(c.account.balance - o);
                                (c.calc.fee_amount = (0, r.moneyFormat)(a, n)), (c.calc.dst_amount = (0, r.moneyFormat)(i, n)), (c.calc.rest = (0, r.moneyFormat)(l, n));
                            }, 30);
                        }),
                        (c.submit = function () {
                            return (
                                !(c.form.$invalid || c.data.amount <= 0 || c.calc.rest < 0 || c.formBusy || n.busy) &&
                                ((c.formBusy = !0),
                                o.showModal({ templateUrl: "/account/token/pincode", controller: a.default, controllerAs: "vm", inputs: { Data: c.data, Calc: c.calc, Chain: c.chain.withdrawal } }).then(function (e) {
                                    e.close.then(function (t) {
                                        e.element.modal("hide"),
                                            (c.formBusy = !1),
                                            "object" === i(t) &&
                                                ((c.account.balance = t.balance),
                                                (c.sxAmount = u()),
                                                c.history.push(t.history),
                                                (c.data.amount = c.sxAmount.min),
                                                (c.data.pincode = null),
                                                c.calculate(),
                                                l.$broadcast("BalanceUpdate", t),
                                                l.$broadcast("HistoryUpdate"));
                                    });
                                }))
                            );
                        }),
                        e
                            .post(ACCOUNT_API, { action: "getToken" })
                            .then(function (e) {
                                (c.account = e.data.account), (c.chains = e.data.chains), (c.history = e.data.history);
                                var t =
                                    c.chains.find(function (e) {
                                        return 1 === e.status;
                                    }) || c.chains[0];
                                (c.chain.refill = t),
                                    (c.chain.withdrawal = t),
                                    (c.stats = e.data.stats),
                                    (c.sxAmount = u()),
                                    (c.data.chain = c.chain.withdrawal.code),
                                    (c.data.amount = c.sxAmount.min),
                                    (c.data.account = c.account.address),
                                    c.calculate();
                            })
                            .then(function () {
                                (c.formBusy = !1),
                                    (c.ready = !0),
                                    (function () {
                                        if (s.has("act")) {
                                            var e = s.get("act");
                                            (0, r.inArray)(e, ["refill", "withdrawal"]) &&
                                                t(function () {
                                                    n.scrollTo(e, 300, 30);
                                                }, 100);
                                        }
                                    })();
                            });
                }
                l.$inject = ["$http", "$timeout", "$scope", "$modal", "$rootScope"];
            },
            { "../helpers": 60, "./TokenPincodeCtrl": 34 },
        ],
        34: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = Object.keys(e);
                    if (Object.getOwnPropertySymbols) {
                        var o = Object.getOwnPropertySymbols(e);
                        t &&
                            (o = o.filter(function (t) {
                                return Object.getOwnPropertyDescriptor(e, t).enumerable;
                            })),
                            n.push.apply(n, o);
                    }
                    return n;
                }
                function r(e) {
                    for (var t = 1; t < arguments.length; t++) {
                        var n = null != arguments[t] ? arguments[t] : {};
                        t % 2
                            ? o(Object(n), !0).forEach(function (t) {
                                  a(e, t, n[t]);
                              })
                            : Object.getOwnPropertyDescriptors
                            ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(n))
                            : o(Object(n)).forEach(function (t) {
                                  Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(n, t));
                              });
                    }
                    return e;
                }
                function a(e, t, n) {
                    return t in e ? Object.defineProperty(e, t, { value: n, enumerable: !0, configurable: !0, writable: !0 }) : (e[t] = n), e;
                }
                function i(e, t, n, o, a, i, l) {
                    var c = this;
                    (c.form = null),
                        (c.data = r({}, e)),
                        (c.data.pincode = null),
                        (c.calc = r({}, t)),
                        (c.chain = r({}, n)),
                        (c.pincode = [null, null, null, null]),
                        a.on("hide.bs.modal", function () {
                            return o(!1);
                        }),
                        (c.validateInput = function (e, t) {
                            if (8 === e.which && t > 0) {
                                var n = angular.element("input[name=pincode_".concat(t - 1, "]"));
                                n.length && n.select();
                            } else
                                i(function () {
                                    var e = parseInt(c.pincode[t]);
                                    if (isNaN(e)) c.pincode[t] = null;
                                    else if (3 !== t) {
                                        var n = angular.element("input[name=pincode_".concat(t + 1, "]"));
                                        n.length && ((c.pincode[t + 1] = null), n.focus());
                                    }
                                }, 10);
                        }),
                        (c.submit = function () {
                            if (c.form.$invalid) return !1;
                            (c.data.pincode = c.pincode.join("")),
                                l.post(ACCOUNT_API, c.data).then(function (e) {
                                    return o(e.data.data);
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = i), (i.$inject = ["Data", "Calc", "Chain", "close", "$element", "$timeout", "$http"]);
            },
            {},
        ],
        35: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o, r) {
                    var a = this;
                    (a.form = null),
                        (a.data = e),
                        (a.data.captcha = null),
                        (a.data.ga_code = null),
                        (a.submit = function () {
                            if (a.form.$invalid) return !1;
                            var e = o.post("/", a.data);
                            e.then(function (e) {
                                if (void 0 !== e.data.uri) return (location.href = e.data.uri);
                                r.$broadcast("CaptchaReset");
                            }),
                                e.catch(function () {
                                    r.$broadcast("CaptchaReset");
                                });
                        }),
                        n.on("hide.bs.modal", function () {
                            return t(!1);
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["Data", "close", "$element", "$http", "$rootScope"]);
            },
            {},
        ],
        36: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = l);
                var o,
                    r = e("../helpers"),
                    a = (o = e("./WithdrawalPincodeCtrl")) && o.__esModule ? o : { default: o };
                function i(e) {
                    return (i =
                        "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
                            ? function (e) {
                                  return typeof e;
                              }
                            : function (e) {
                                  return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e;
                              })(e);
                }
                function l(e, t, n, o, l) {
                    var c = this,
                        s = t.getCurrency(),
                        u = (0, r.getUrlParams)();
                    function d() {
                        return e.post(ACCOUNT_API, { action: "getWithdrawal" }).then(function (e) {
                            c.accounts = e.data.accounts;
                            var t = (function () {
                                if (u.has("curr")) {
                                    return p(u.get("curr"));
                                }
                                return p(s);
                            })();
                            c.setAccount(t);
                        });
                    }
                    function p(e) {
                        return (
                            c.accounts.find(function (t) {
                                return t.currency.code === e;
                            }) || c.accounts[0]
                        );
                    }
                    (c.form = null),
                        (c.formBusy = !0),
                        (c.ready = !1),
                        (c.accounts = []),
                        (c.account = null),
                        (c.dd = !1),
                        (c.sxAmount = {}),
                        (c.data = { action: "doWithdrawal", amount: 0, system: null, account: null, pincode: null }),
                        (c.calc = { dst_amount: 0, fee_amount: 0, rest: 0 }),
                        t.$on("WithdrawalEvent", function (e, o) {
                            var r = p(o);
                            c.setAccount(r),
                                n(function () {
                                    var e = c.data.account ? "amount" : "addr";
                                    t.scrollTo(e, 300, 0, function () {
                                        n(function () {
                                            angular.element("#".concat(e)).find("input").focus();
                                        }, 350);
                                    });
                                }, 100);
                        }),
                        (c.setAccount = function (e) {
                            if (((c.dd = !1), e === c.account)) return !1;
                            (c.account = e),
                                (c.data.amount = e.min),
                                (c.data.system = e.code),
                                (c.data.account = e.number),
                                (c.sxAmount = { min: c.account.min, max: c.account.balance, decimals: (0, r.decimalsNum)(c.account.currency.code) }),
                                c.calculate();
                        }),
                        (c.setAllAmount = function () {
                            (c.data.amount = c.account.balance), c.calculate();
                        }),
                        (c.calculate = function () {
                            n(function () {
                                var e = c.sxAmount,
                                    t = e.min,
                                    n = e.max,
                                    o = e.decimals,
                                    a = (0, r.actualAmount)(c.data.amount, t, n),
                                    i = c.account,
                                    l = parseFloat(i.balance - a),
                                    s = parseFloat((a * i.fee) / 100),
                                    u = parseFloat(a - s);
                                (c.calc.rest = (0, r.moneyFormat)(l, o)), (c.calc.fee_amount = (0, r.moneyFormat)(s, o)), (c.calc.dst_amount = (0, r.moneyFormat)(u, o));
                            }, 30);
                        }),
                        (c.submit = function () {
                            if (!(c.data.amount > c.account.balance || c.calc.rest < 0 || c.formBusy || t.busy))
                                return (
                                    (c.formBusy = !0),
                                    o.showModal({ templateUrl: "/account/withdrawal/pincode", controller: a.default, controllerAs: "vm", inputs: { Data: c.data, Calc: c.calc, Account: c.account } }).then(function (e) {
                                        e.close.then(function (t) {
                                            if ((e.element.modal("hide"), (c.formBusy = !1), "object" === i(t))) {
                                                var o = c.accounts.find(function (e) {
                                                    return e.code === t.system;
                                                });
                                                o && (o.balance = t.balance),
                                                    (c.data.amount = c.sxAmount.min),
                                                    (c.sxAmount.max = t.balance),
                                                    (c.data.pincode = null),
                                                    c.calculate(),
                                                    l.$broadcast("BalanceUpdate", t),
                                                    l.$broadcast("HistoryUpdate"),
                                                    n(function () {
                                                        window.open("/reviews", "_blank").focus();
                                                    }, 3e3);
                                            }
                                        });
                                    })
                                );
                        }),
                        d().then(function () {
                            (c.formBusy = !1), (c.ready = !0);
                        });
                }
                l.$inject = ["$http", "$scope", "$timeout", "$modal", "$rootScope"];
            },
            { "../helpers": 60, "./WithdrawalPincodeCtrl": 37 },
        ],
        37: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n, o, r, a, i) {
                    var l = this;
                    (l.form = null),
                        (l.data = e),
                        (l.data.pincode = null),
                        (l.calc = t),
                        (l.account = n),
                        (l.pincode = [null, null, null, null]),
                        r.on("hide.bs.modal", function () {
                            return o(!1);
                        }),
                        (l.validateInput = function (e, t) {
                            if (8 === e.which && t > 0) {
                                var n = angular.element("input[name=pincode_".concat(t - 1, "]"));
                                n.length && n.select();
                            } else
                                a(function () {
                                    var e = parseInt(l.pincode[t]);
                                    if (isNaN(e)) l.pincode[t] = null;
                                    else if (3 !== t) {
                                        var n = angular.element("input[name=pincode_".concat(t + 1, "]"));
                                        n.length && ((l.pincode[t + 1] = null), n.focus());
                                    }
                                }, 10);
                        }),
                        (l.submit = function () {
                            if (l.form.$invalid) return !1;
                            (l.data.pincode = l.pincode.join("")),
                                i.post(ACCOUNT_API, l.data).then(function (e) {
                                    return o(e.data.data);
                                });
                        });
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["Data", "Calc", "Account", "close", "$element", "$timeout", "$http"]);
            },
            {},
        ],
        38: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return {
                            restrict: "A",
                            replace: !0,
                            scope: { params: "=sxBountyRemain" },
                            template:
                                '<div class="bounty__item-remains-line js-bounty-count js-bounty-count-reverse" data-min="0"><span class="bounty__item-remains-line-current" data-count="[[ ::count ]]" ng-style="::{width:percent + \'%\'}"></span></div>',
                            link: function (e, t, n) {
                                var o = parseFloat(n.max);
                                (e.count = parseFloat(n.count)), (e.percent = parseFloat((e.count / o) * 100)), (e.percent = e.percent > 100 ? 100 : e.percent), (e.percent = e.percent < 0 ? 0 : e.percent);
                            },
                        };
                    });
            },
            {},
        ],
        39: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    return {
                        restrict: "A",
                        scope: { id: "=sxNews" },
                        link: function (o, r) {
                            r.find(".js-read_more").bind("click", function () {
                                n(function () {
                                    if (t.modal) return !1;
                                    var n = parseInt(o.id);
                                    e.showModal({
                                        templateUrl: "/news/".concat(n),
                                        controller: [
                                            "close",
                                            "$element",
                                            function (e, t) {
                                                t.on("hide.bs.modal", function () {
                                                    return e(!1);
                                                });
                                            },
                                        ],
                                    });
                                }, 30);
                            });
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$modal", "$rootScope", "$timeout"]);
            },
            {},
        ],
        40: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    return {
                        restrict: "A",
                        link: function (t, o) {
                            n(function () {
                                o.find(".js-read_more").bind("click", function (t) {
                                    var n = angular.element(t.currentTarget),
                                        o = parseInt(n.data("id"));
                                    o &&
                                        !isNaN(o) &&
                                        e.showModal({
                                            templateUrl: "/news/".concat(o),
                                            controller: [
                                                "close",
                                                "$element",
                                                function (e, t) {
                                                    t.on("hide.bs.modal", function () {
                                                        return e(!1);
                                                    });
                                                },
                                            ],
                                        });
                                });
                            }, 100);
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$modal", "$rootScope", "$timeout"]);
            },
            {},
        ],
        41: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return {
                        restrict: "A",
                        scope: { params: "=sxSwiper" },
                        link: function (t, n) {
                            e(function () {
                                return new Swiper(n[0], t.params);
                            }, 20);
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$timeout"]);
            },
            {},
        ],
        42: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return {
                            restrict: "A",
                            link: function (e, t, n) {
                                !1 !== n.show &&
                                    "false" !== n.show &&
                                    t.bind("mouseenter", function () {
                                        t.tooltip({
                                            placement: "top",
                                            fallbackPlacements: ["top"],
                                            trigger: "hover",
                                            boundary: "viewport",
                                            html: !0,
                                            template: '\n                  <div class="darkSection__elements-item-tooltip d-flex" role="tooltip">\n                     <div class="darkSection__elements-item-tooltip-ico d-flex">\n                        <img src="/assets/app/img/orange_figure.png" alt="" width="7px" height="8px">\n                     </div>\n                     <div class="darkSection__elements-item-tooltip-info d-flex flex-column">\n                        <span>'
                                                .concat(n.title, "</span>\n                        <p>")
                                                .concat(n.sxTooltip, "</p>\n                     </div>\n                  </div>"),
                                        }).tooltip("show");
                                    });
                            },
                        };
                    });
            },
            {},
        ],
        43: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return {
                            restrict: "A",
                            link: function (e, t, n) {
                                !1 !== n.show &&
                                    "false" !== n.show &&
                                    t.bind("mouseenter", function () {
                                        t.tooltip({
                                            fallbackPlacements: ["top"],
                                            offset: [-215, 10],
                                            trigger: "hover",
                                            html: !0,
                                            template: '\n                  <div class="darkSection__elements-item-tooltip darkSection__elements-item-tooltip_steps d-flex" role="tooltip">\n                     <div class="darkSection__elements-item-tooltip-ico d-flex ">\n                        <img src="/assets/app/img/orange_figure.png" alt="" width="7px" height="8px">\n                     </div>\n                     <div class="darkSection__elements-item-tooltip-info d-flex flex-column">\n                         <span>'
                                                .concat(n.title, "</span>\n                        <p>")
                                                .concat(n.sxTooltipAlt, "</p>\n                     </div>\n                  </div>"),
                                        }).tooltip("show");
                                    });
                            },
                        };
                    });
            },
            {},
        ],
        44: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return {
                        restrict: "A",
                        link: function (t, n) {
                            e(function () {
                                var e = $(n).find("video").get(0);
                                e.paused && e.play();
                            }, 100);
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$timeout"]);
            },
            {},
        ],
        45: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return {
                        restrict: "A",
                        scope: { model: "=ngModel", params: "=sxAmount", onchange: "&" },
                        link: function (t, n) {
                            function o() {
                                e(function () {
                                    var n = t.$root.getCurrency() || "usd";
                                    angular.isObject(t.params) || (t.params = {});
                                    var o = t.model || 0,
                                        r = parseFloat(t.params.min) || 0,
                                        a = parseFloat(t.params.max) || 1e6,
                                        i = "usd" === n || "rub" === n ? 2 : 6;
                                    void 0 === t.params.decimals || isNaN(t.params.decimals) || (i = parseInt(t.params.decimals)),
                                        (o = parseFloat(o.toString().replace(",", "."))),
                                        (isNaN(o) || o < r) && (o = r),
                                        a && o > a && (o = a),
                                        (t.model = parseFloat(o.toFixed(i))),
                                        t.$apply(),
                                        e(function () {
                                            t.onchange();
                                        }, 10);
                                }, 10);
                            }
                            n.bind("blur paste", function () {
                                o();
                            }),
                                t.$watch(
                                    "params",
                                    function () {
                                        o();
                                    },
                                    !0
                                );
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$timeout"]);
            },
            {},
        ],
        46: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return {
                        restrict: "A",
                        link: function (t, n, o) {
                            e(function () {
                                return n[0].focus();
                            }, parseInt(o.sxAutofocus) || 30);
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$timeout"]);
            },
            {},
        ],
        47: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = r);
                var o = e("../helpers");
                function r(e, t) {
                    return {
                        restrict: "EA",
                        replace: !0,
                        template: '<input type="hidden" ng-required="true">',
                        scope: { model: "=ngModel", params: "=params" },
                        link: function (n, r) {
                            if (!1 === e.global.captcha) return !1;
                            var a = {
                                    sitekey: e.global.captcha,
                                    callback: function (e) {
                                        (n.model = e), n.$apply();
                                    },
                                },
                                i = angular.extend(a, n.params);
                            n.$on("CaptchaReset", function () {
                                grecaptcha.ready(function () {
                                    grecaptcha.reset(), (n.model = null), n.$apply();
                                });
                            }),
                                t(function () {
                                    grecaptcha.ready(function () {
                                        var e = "reCaptcha_" + (0, o.getRandomInteger)(6),
                                            t = angular.element('<div id="' + e + '" class="reCaptcha_widget"></div>');
                                        r.after(t), grecaptcha.render(e, i);
                                    });
                                }, 15);
                        },
                    };
                }
                r.$inject = ["$rootScope", "$timeout"];
            },
            { "../helpers": 60 },
        ],
        48: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                function a(e, t, n, o) {
                    return {
                        restrict: "A",
                        link: function (a, i) {
                            var l = o.global.user.link || null;
                            function c() {
                                t.copy(l).then(function () {
                                    n.info((0, r.default)("referralLinkCopied"));
                                });
                            }
                            i.bind("click", function () {
                                if (l) c();
                                else {
                                    if (o.global.is.guest) return !1;
                                    e.post(ACCOUNT_API, { action: "getReferralLink" }).then(function (e) {
                                        (l = e.data), c();
                                    });
                                }
                            });
                        },
                    };
                }
                a.$inject = ["$http", "$clipboard", "$toast", "$rootScope"];
            },
            { "../locale": 61 },
        ],
        49: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return {
                        restrict: "A",
                        scope: { model: "=sxDropdownEvent" },
                        link: function (t, n) {
                            e.on("keydown keypress click", function (e) {
                                !0 === t.model && 0 === n.has(e.target).length && ((t.model = !1), t.$apply());
                            });
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$document"]);
            },
            {},
        ],
        50: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    var n = ("undefined" != typeof Symbol && e[Symbol.iterator]) || e["@@iterator"];
                    if (!n) {
                        if (
                            Array.isArray(e) ||
                            (n = (function (e, t) {
                                if (!e) return;
                                if ("string" == typeof e) return r(e, t);
                                var n = Object.prototype.toString.call(e).slice(8, -1);
                                "Object" === n && e.constructor && (n = e.constructor.name);
                                if ("Map" === n || "Set" === n) return Array.from(e);
                                if ("Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return r(e, t);
                            })(e)) ||
                            (t && e && "number" == typeof e.length)
                        ) {
                            n && (e = n);
                            var o = 0,
                                a = function () {};
                            return {
                                s: a,
                                n: function () {
                                    return o >= e.length ? { done: !0 } : { done: !1, value: e[o++] };
                                },
                                e: function (e) {
                                    throw e;
                                },
                                f: a,
                            };
                        }
                        throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
                    }
                    var i,
                        l = !0,
                        c = !1;
                    return {
                        s: function () {
                            n = n.call(e);
                        },
                        n: function () {
                            var e = n.next();
                            return (l = e.done), e;
                        },
                        e: function (e) {
                            (c = !0), (i = e);
                        },
                        f: function () {
                            try {
                                l || null == n.return || n.return();
                            } finally {
                                if (c) throw i;
                            }
                        },
                    };
                }
                function r(e, t) {
                    (null == t || t > e.length) && (t = e.length);
                    for (var n = 0, o = new Array(t); n < t; n++) o[n] = e[n];
                    return o;
                }
                function a(e) {
                    return {
                        restrict: "A",
                        link: function (t, n, r) {
                            var a,
                                i = n.find("a"),
                                l = r.sxMenu || "active",
                                c = e.global.url,
                                s = o(i);
                            try {
                                var u = function () {
                                    var e = a.value,
                                        t = (e = angular.element(e)).parent("li");
                                    e.attr("href") === c && d(e, t, l);
                                    var n = e.data("links");
                                    void 0 !== n &&
                                        (n = n.trim().split(", ")).forEach(function (n) {
                                            c === "/".concat(n) && d(e, t, l);
                                        });
                                };
                                for (s.s(); !(a = s.n()).done; ) u();
                            } catch (e) {
                                s.e(e);
                            } finally {
                                s.f();
                            }
                            function d(e, t) {
                                var n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : n;
                                t.length ? t.addClass(n) : e.addClass(n);
                            }
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a), (a.$inject = ["$rootScope"]);
            },
            {},
        ],
        51: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = a);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                function a(e, t, n) {
                    return {
                        restrict: "A",
                        require: "^form",
                        link: function (e, o, a, i) {
                            o.bind("click", function () {
                                if (i.$invalid) {
                                    var e = !1;
                                    return (
                                        i.$$controls.forEach(function (t) {
                                            t.$invalid && (t.$setTouched(), e || ((e = t), n(function () {}, 10)));
                                        }),
                                        t.error((0, r.default)("validationError")),
                                        !1
                                    );
                                }
                            }),
                                e.$on("FormReset", function () {
                                    n(function () {
                                        i.$$controls.forEach(function (e) {
                                            e.$invalid && e.$setUntouched();
                                        });
                                    }, 10);
                                });
                        },
                    };
                }
                a.$inject = ["$rootScope", "$toast", "$timeout"];
            },
            { "../locale": 61 },
        ],
        52: [
            function (e, t, n) {
                "use strict";
                function o(e, t, n) {
                    return {
                        restrict: "AE",
                        replace: !0,
                        template: '<span ng-bind="time | date:format:zone"></span>',
                        link: function (o, r, a) {
                            n(function () {
                                var n = { time: e.global.server_time, format: e.global.server_time_format, zone: "UTC" };
                                (n = angular.extend(n, o.$eval(a.sxTime))),
                                    (o.time = 1e3 * angular.copy(n.time)),
                                    (o.format = n.format),
                                    (o.zone = n.zone),
                                    t(function () {
                                        o.time += 1e3;
                                    }, 1e3);
                            });
                        },
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$rootScope", "$interval", "$timeout"]);
            },
            {},
        ],
        53: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e, t) {
                            if (!e) return null;
                            if ((e = e.toString()).length / 2 > t) {
                                var n = e.slice(0, t);
                                return (n += "..."), (n += e.slice(-t));
                            }
                            return e;
                        };
                    });
            },
            {},
        ],
        54: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e, t) {
                            return void 0 !== t && t.length > 0 && -1 !== t.indexOf(e);
                        };
                    });
            },
            {},
        ],
        55: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e) {
                            var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 6;
                            return (e = parseFloat(e)), (isNaN(e) || e < 0) && (e = 0), parseFloat(e.toFixed(t)).toString();
                        };
                    });
            },
            {},
        ],
        56: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e, t) {
                            return (t || null) + e;
                        };
                    });
            },
            {},
        ],
        57: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e, t) {
                            return e + (t || null);
                        };
                    });
            },
            {},
        ],
        58: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function () {
                        return function (e) {
                            return e.replace("@", "");
                        };
                    });
            },
            {},
        ],
        59: [
            function (e, t, n) {
                "use strict";
                function o(e) {
                    return function (t) {
                        return e.trustAsResourceUrl(t);
                    };
                }
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = o), (o.$inject = ["$sce"]);
            },
            {},
        ],
        60: [
            function (e, t, n) {
                "use strict";
                function o(e, t) {
                    return void 0 !== t && t.length > 0 && -1 !== t.indexOf(e);
                }
                function r(e) {
                    return (e = e || 0), parseFloat(e.toString().replace(",", "."));
                }
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.getRandomInteger = function () {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 9;
                        return Math.floor(Math.pow(10, e - 1) + Math.random() * (Math.pow(10, e) - Math.pow(10, e - 1) - 1));
                    }),
                    (n.getRandomIntegerBetween = function (e, t) {
                        return Math.floor(Math.random() * (t - e + 1) + e);
                    }),
                    (n.getRandomString = function (e) {
                        for (var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", n = "", o = 0; o < e; o++) {
                            var r = Math.floor(Math.random() * t.length);
                            n += t.substring(r, r + 1);
                        }
                        return n;
                    }),
                    (n.moneyFormat = function (e, t) {
                        return (t = parseFloat(t) || 6), parseFloat(e.toFixed(t));
                    }),
                    (n.arrayChunk = function (e, t) {
                        for (var n = [], o = 0; o < e.length; o++) {
                            var r = n[n.length - 1];
                            r && r.length !== t ? r.push(e[o]) : n.push([e[o]]);
                        }
                        return n;
                    }),
                    (n.arrayLast = function (e) {
                        return !(!e instanceof Array) && (1 === e.length ? e[0] : e[e.length - 1]);
                    }),
                    (n.inArray = o),
                    (n.onlyUnique = function (e, t, n) {
                        return n.indexOf(e) === t;
                    }),
                    (n.translateInit = function () {
                        var e = $("html").attr("lang");
                        new google.translate.TranslateElement({ pageLanguage: e });
                    }),
                    (n.decimalsNum = function () {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "usd";
                        return o(e, ["usd", "rub"]) ? 2 : 6;
                    }),
                    (n.getUrlParams = function () {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : window.location.search;
                        return new URLSearchParams(e);
                    }),
                    (n.emptyArray = function () {
                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 10;
                        return Array.from(Array(e).keys());
                    }),
                    (n.parseAmount = r),
                    (n.actualAmount = function (e) {
                        var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 0,
                            n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : 1e6;
                        (e = r(e)), (isNaN(e) || e < t) && (e = t);
                        e > n && (e = n);
                        return parseFloat(e);
                    }),
                    (n.setLocalStorageWithExpiry = function (e, t, n) {
                        var o = new Date(),
                            r = { value: t, expiry: o.getTime() + n };
                        localStorage.setItem(e, JSON.stringify(r));
                    }),
                    (n.getLocalStorageWithExpiry = function (e) {
                        var t = localStorage.getItem(e);
                        if (!t) return null;
                        var n = JSON.parse(t);
                        if (new Date().getTime() > n.expiry) return localStorage.removeItem(e), null;
                        return n.value;
                    });
            },
            {},
        ],
        61: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }),
                    (n.default = function (e) {
                        var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : window.LANG;
                        if (!o[t]) return e;
                        var n = o[t],
                            r = e.split(".");
                        if (1 === r.length) return n[e] && "string" == typeof n[e] ? n[e] : e;
                        return (
                            r.forEach(function (t) {
                                n = n[t] || e;
                            }),
                            n
                        );
                    });
                var o = {
                    en: {
                        referralLinkCopied: "Referral link successfully copied to the clipboard",
                        embedCodeCopied: "The embed code is copied to the clipboard",
                        accountNumberCopied: "Account number is copied to the clipboard",
                        depositCloseConfirmation: "Are you sure you want to close this deposit?",
                        validationError: "Please check the correctness of filling the form fields",
                        chartEmpty: "No data to display",
                        chartBalloon: { deposited: "Deposited", withdrawals: "Withdrawals", profit: "Profit", referrals: "Referrals" },
                        days_decl: "day.days.days",
                        weeks_decl: "week.weeks.weeks",
                        toast: { title: ["Success", "Error", "Warning", "Information"], close: "Close" },
                        month: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                        pincodeCopied: "Payment PIN successfully copied",
                        passwordCopied: "Password successfully copied",
                        dataCopiedToClipboard: "Data copied to clipboard",
                        bountyLinkRequired: "Please provide a link to the report",
                    },
                    ru: {
                        referralLinkCopied: "Реферальная ссылка успешно скопирована в буфер обмена",
                        embedCodeCopied: "Код для вставки скопирован в буфер обмена",
                        copiedToClipboard: "Данные скопированы в буфер обмена",
                        depositCloseConfirmation: "Вы действительно хотите закрыть данный депозит?",
                        validationError: "Пожалуйста, проверьте правильность заполнения полей формы",
                        chartEmpty: "Нет данных для отображения",
                        chartBalloon: { deposited: "Инвестировано", withdrawals: "Выведено", profit: "Прибыль", referrals: "Реферальные" },
                        days_decl: "день.дня.дней",
                        weeks_decl: "неделя.недели.недель",
                        toast: { title: ["Выполнено", "Ошибка", "Внимание", "Информация"], close: "Закрыть" },
                        month: ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"],
                        pincodeCopied: "Платежный PIN-код успешно скопирован",
                        passwordCopied: "Пароль успешно скопирован",
                        dataCopiedToClipboard: "Данные скопированы в буфер обмена",
                        bountyLinkRequired: "Пожалуйста, укажите ссылку на отчет",
                    },
                    cn: {
                        referralLinkCopied: "引荐链接已成功复制到剪贴板",
                        embedCodeCopied: "嵌入代码已复制到剪贴板",
                        accountNumberCopied: "帐号已复制到剪贴板",
                        depositCloseConfirmation: "您确定要关闭这笔存款吗？",
                        validationError: "请检查填写表格字段的正确性",
                        chartEmpty: "没有数据显示",
                        chartBalloon: { deposited: "存入", withdrawals: "提款", profit: "利润", referrals: "推荐人" },
                        days_decl: "天.天.天",
                        weeks_decl: "周.周.周",
                        toast: { title: ["成功", "错误", "警告", "信息"], close: "关闭" },
                        month: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                        pincodeCopied: "付款密码已成功复制",
                        passwordCopied: "密码复制成功",
                        dataCopiedToClipboard: "数据复制到剪贴板",
                        bountyLinkRequired: "请提供报告链接",
                    },
                    pl: {
                        referralLinkCopied: "Link polecający został pomyślnie skopiowany do schowka",
                        embedCodeCopied: "Kod osadzania jest kopiowany do schowka",
                        accountNumberCopied: "Numer konta jest kopiowany do schowka",
                        depositCloseConfirmation: "Czy na pewno chcesz zamknąć tę wpłatę?",
                        validationError: "Prosimy o sprawdzenie poprawności wypełnienia pól formularza",
                        chartEmpty: "brak danych do wyświetlenia",
                        chartBalloon: { deposited: "Zdeponowane", withdrawals: "Wypłaty", profit: "Zysk", referrals: "Skierowania" },
                        days_decl: "dzień.dnia.dni",
                        weeks_decl: "tydzień.tygodni.tygodni",
                        toast: { title: ["Sukces", "Błąd", "Ostrzeżenie", "Informacja"], close: "Blisko" },
                        month: ["Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec", "Lipiec", "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień"],
                        pincodeCopied: "Kod PIN do płatności został pomyślnie skopiowany",
                        passwordCopied: "Hasło zostało pomyślnie skopiowane",
                        dataCopiedToClipboard: "Dane skopiowane do schowka",
                        bountyLinkRequired: "Podaj link do raportu",
                    },
                };
            },
            {},
        ],
        62: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = void 0);
                var o = angular
                    .module("sx.clipboard", [])
                    .service("$clipboard", [
                        "$q",
                        function (e) {
                            return (
                                (this.supported = "queryCommandSupported" in document && document.queryCommandSupported("copy")),
                                (this.copy = function (t) {
                                    var n = e.defer(),
                                        o = document.createElement("div"),
                                        r = document.createRange(),
                                        a = window.getSelection();
                                    (o.style.position = "fixed"), (o.style.opacity = "0"), (o.innerHTML = t), document.body.appendChild(o), a.removeAllRanges(), r.selectNode(o), a.addRange(r);
                                    try {
                                        var i = document.execCommand("copy");
                                        if (!i) throw i;
                                        n.resolve(i);
                                    } catch (e) {
                                        n.reject(e);
                                    } finally {
                                        a.removeAllRanges(), document.body.removeChild(o);
                                    }
                                    return n.promise;
                                }),
                                this
                            );
                        },
                    ])
                    .directive("sxClipboard", [
                        "$clipboard",
                        "$toast",
                        function (e, t) {
                            return {
                                restrict: "EA",
                                link: function (n, o, r) {
                                    var a = window.LANG || "en",
                                        i = { en: "Data copied to clipboard", ru: "Данные скопированы в буфер обмена" },
                                        l = void 0 !== i[a] ? i[a] : i.en;
                                    o.bind("click", function (n) {
                                        var o = r.sxClipboard || null;
                                        e.copy(o).then(function (e) {
                                            t.info(l);
                                        });
                                    });
                                },
                            };
                        },
                    ]);
                n.default = o;
            },
            {},
        ],
        63: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = void 0);
                var o = angular.module("sx.modal", []).factory("$modal", [
                    "$animate",
                    "$document",
                    "$compile",
                    "$controller",
                    "$http",
                    "$rootScope",
                    "$q",
                    "$templateRequest",
                    "$timeout",
                    function (e, t, n, o, r, a, i, l, c) {
                        var s = t.find("body");
                        return new (function () {
                            var t = function (t, n) {
                                var o = t.children();
                                return o.length > 0 ? e.enter(n, t, o[o.length - 1]) : e.enter(n, t);
                            };
                            this.showModal = function (r) {
                                var u = i.defer();
                                return r.controller
                                    ? ((function (e, t) {
                                          var n = i.defer();
                                          return (
                                              e
                                                  ? n.resolve(e)
                                                  : t
                                                  ? l(t, !0).then(
                                                        function (e) {
                                                            n.resolve(e);
                                                        },
                                                        function (e) {
                                                            n.reject(e);
                                                        }
                                                    )
                                                  : n.reject("No template or templateUrl has been specified."),
                                              n.promise
                                          );
                                      })(r.template, r.templateUrl)
                                          .then(function (l) {
                                              var d = (r.scope || a).$new(),
                                                  p = i.defer(),
                                                  f = i.defer(),
                                                  m = {
                                                      $scope: d,
                                                      close: function (t, n) {
                                                          null == n && (n = 0),
                                                              (a.modal = !1),
                                                              c(function () {
                                                                  p.resolve(t),
                                                                      e.leave(h).then(function () {
                                                                          f.resolve(t), d.$destroy(), (m.close = null), (u = null), (p = null), (v = null), (m = null), (h = null), (d = null);
                                                                      });
                                                              }, n);
                                                      },
                                                  };
                                              r.inputs && angular.extend(m, r.inputs);
                                              var h = n(l)(d);
                                              m.$element = h;
                                              var g = d[r.controllerAs],
                                                  y = o(r.controller, m, !1, r.controllerAs);
                                              r.controllerAs && g && angular.extend(y, g),
                                                  r.appendElement ? t(r.appendElement, h) : t(s, h),
                                                  (a.modal = !0),
                                                  c(function () {
                                                      new bootstrap.Modal(h, {}).show();
                                                  }, 20);
                                              var v = { controller: y, scope: d, element: h, close: p.promise, closed: f.promise };
                                              u.resolve(v);
                                          })
                                          .then(null, function (e) {
                                              u.reject(e);
                                          }),
                                      u.promise)
                                    : (u.reject("No controller has been specified."), u.promise);
                            };
                        })();
                    },
                ]);
                n.default = o;
            },
            {},
        ],
        64: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = void 0);
                var o = angular.module(
                    "sx.postfix",
                    [],
                    [
                        "$httpProvider",
                        function (e) {
                            (e.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded;charset=utf-8"),
                                (e.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"),
                                (e.defaults.transformRequest = [
                                    function (e) {
                                        return angular.isObject(e) && "[object File]" !== String(e)
                                            ? (function e(t) {
                                                  var n,
                                                      o,
                                                      r,
                                                      a,
                                                      i,
                                                      l,
                                                      c = "";
                                                  for (n in t)
                                                      if ((o = t[n]) instanceof Array) for (l = 0; l < o.length; ++l) (a = o[l]), ((i = {})[n + "[" + l + "]"] = a), (c += e(i) + "&");
                                                      else if (o instanceof Object) for (r in o) (a = o[r]), ((i = {})[n + "[" + r + "]"] = a), (c += e(i) + "&");
                                                      else null != o && (c += encodeURIComponent(n) + "=" + encodeURIComponent(o) + "&");
                                                  return c.length ? c.substr(0, c.length - 1) : c;
                                              })(e)
                                            : e;
                                    },
                                ]);
                        },
                    ]
                );
                n.default = o;
            },
            {},
        ],
        65: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = void 0);
                var o = angular.module("sx.storage", []).service("$storage", function () {
                    var e = this;
                    function t() {
                        var t = localStorage.getItem(e.key);
                        if (null !== t)
                            try {
                                return JSON.parse(t);
                            } catch (e) {
                                return null;
                            }
                        return null;
                    }
                    function n(t) {
                        return localStorage.setItem(e.key, JSON.stringify(t));
                    }
                    return (
                        (e.key = "sxStorage"),
                        (this.data = function () {
                            return t();
                        }),
                        (this.set = function (e) {
                            if (!angular.isObject(e)) return !1;
                            var o = t(),
                                r = 0;
                            return (
                                angular.isObject(o) || (o = {}),
                                angular.forEach(e, function (e, t) {
                                    o[t] !== e && (++r, (o[t] = e));
                                }),
                                n(o),
                                r > 0
                            );
                        }),
                        (this.get = function (e, n) {
                            var o = t();
                            return angular.isObject(o) && void 0 !== o[e] ? o[e] : void 0 !== n ? n : null;
                        }),
                        (this.forget = function (e) {
                            if (!angular.isArray(e)) return !1;
                            var o = t(),
                                r = 0;
                            return (
                                !!angular.isObject(o) &&
                                (angular.forEach(e, function (e) {
                                    void 0 !== o[e] && (delete o[e], ++r);
                                }),
                                n(o),
                                r > 0)
                            );
                        }),
                        (this.has = function (e) {
                            var n = t();
                            return !!angular.isObject(n) && void 0 !== n[e];
                        }),
                        (this.clear = function () {
                            return localStorage.removeItem(e.key), !0;
                        }),
                        this
                    );
                });
                n.default = o;
            },
            {},
        ],
        66: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = void 0);
                var o,
                    r = (o = e("../locale")) && o.__esModule ? o : { default: o };
                var a = angular
                    .module("sx.toast", [])
                    .run([
                        "$templateCache",
                        function (e) {
                            var t =
                                '\n      <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg" ng-if="false">\n         <g clip-path="url(#clip10)">\n            <path d="M84.7059 14.1174V76.2351H53.6471C52.09 76.2351 50.8235 77.5015 50.8235 79.0586H45.1765C45.1765 77.5015 43.9098 76.2351 42.3529 76.2351H11.2941V14.1174H0V87.5292H35.5364L38.3599 90.3527H57.6401L60.4636 87.5292H96V14.1174H84.7059Z" fill="#2B2F36"/>\n            <path d="M45.1767 71.074V5.64697H16.9414V14.1176V70.5882C43.2625 70.754 42.7534 70.2145 45.1767 71.074ZM39.5296 62.1176H22.5885V36.7058H39.5296V62.1176ZM39.5296 31.0587H22.5885V25.4117H39.5296V31.0587ZM39.5296 19.7646H22.5885V14.1176H39.5296V19.7646Z" fill="#F8CC3D"/>\n            <path d="M28.2354 42.353H33.8824V56.4707H28.2354V42.353Z" fill="#1CBA6E"/>\n            <path d="M79.0585 70.5882V5.64697H50.8232V71.074C53.2436 70.2156 52.7299 70.754 79.0585 70.5882ZM62.1174 14.1176H67.7644V19.7646H62.1174V14.1176ZM62.1174 25.4117H67.7644V39.5293H62.1174V25.4117ZM56.4703 45.1764H73.4115V50.8234H56.4703V45.1764ZM56.4703 56.4705H73.4115V62.1176H56.4703V56.4705Z" fill="#1CBA6E"/>\n         </g>\n         <defs>\n            <clipPath id="clip10">\n               <rect width="96" height="96" fill="white"/>\n            </clipPath>\n         </defs>\n      </svg>';
                            e.put(
                                "toast",
                                '\n      <div class="modal-js fade active animated-fast fadeIn" tabindex="-1">\n         <div class="modal-dialog modal-sm modal-dialog-centered animated-fast pulse">\n            <div class="modal-content">\n               <div class="modal-header justify-content-center">\n                  <button type="button" class="btn btn_close sx-close">\n                     <svg width="25px" height="25px">\n                        <use xlink:href="#close"></use>\n                     </svg>\n                  </button>\n               </div>\n               <div class="modal-body">\n                  <div class="modal__msg d-flex flex-column align-items-center">\n                     <div class="modal__msg-ico d-flex justify-content-center">%ICON%</div>\n                     <div class="modal__msg-title">%TITLE%</div>\n                     <div class="modal__msg-text">%MESSAGE%</div>\n                     <button class="btn btn-primary mb-4 sx-close">%CLOSE%</button>\n                  </div>\n               </div>\n            </div>\n         </div>\n      </div>'
                            ),
                                e.put(
                                    "toast/icon/success",
                                    '\n      <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">\n         <path d="M21.873 27.5916C21.873 41.998 33.5937 53.7186 48 53.7186C62.4064 53.7186 74.127 41.998 74.127 27.5916C74.127 13.1852 62.4064 1.4646 48 1.4646C33.5937 1.4646 21.873 13.1852 21.873 27.5916ZM36.3985 25.7702L43.3583 32.73L59.6014 16.4869L63.5789 20.4643L43.3585 40.6849L32.4212 29.7477L36.3985 25.7702Z" fill="#1CBA6E"/>\n         <path d="M56.6355 76.548H39.3652V83.24H21.7031V94.6522H74.4058V83.24H56.6355V76.548Z" fill="#F8CC3D"/>\n         <path d="M79.7521 27.5917C79.7521 38.4119 74.3105 47.9836 66.0215 53.7187H96.0001V16.3228H77.684C79.0188 19.8268 79.7521 23.6249 79.7521 27.5917Z" fill="#2B2F36"/>\n         <path d="M65.8535 1.34802C69.4621 3.81083 72.5383 6.99759 74.8727 10.6977H96.0002V1.34802H65.8535Z" fill="#F8CC3D"/>\n         <path d="M16.248 27.5917C16.248 23.6249 16.9813 19.8268 18.3159 16.3228H0V53.7185H29.9786C21.6898 47.9834 16.248 38.4118 16.248 27.5917Z" fill="#2B2F36"/>\n         <path d="M30.1466 1.34802H0V10.6977H21.1275C23.4619 6.99777 26.538 3.81083 30.1466 1.34802Z" fill="#F8CC3D"/>\n         <path d="M0 59.3434H96V70.9228H0V59.3434Z" fill="#F8CC3D"/>\n      </svg>'
                                ),
                                e.put(
                                    "toast/icon/error",
                                    '\n      <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">\n         <path d="M35.3438 27.9514L23.8856 0H0V83.2943H17.4788C14.9756 78.5475 13.5581 73.1454 13.5581 67.4196C13.5581 48.5651 28.9237 33.2241 47.8125 33.2241C66.7012 33.2241 82.0669 48.5651 82.0669 67.4196C82.0669 73.1454 80.6494 78.5473 78.1462 83.2943H96V27.9514H35.3438Z" fill="#2B2F36"/>\n         <path d="M29.9648 0L39.1186 22.3359H96.0005V0H29.9648ZM64.1986 14.0179H58.5736V8.40244H64.1986V14.0179ZM75.4486 14.0179H69.8236V8.40244H75.4486V14.0179ZM86.6986 14.0179H81.0736V8.40244H86.6986V14.0179Z" fill="#F8CC3D"/>\n         <path d="M47.812 38.8395C32.0264 38.8395 19.1826 51.6611 19.1826 67.4197C19.1826 83.1802 32.0264 96 47.812 96C63.5976 96 76.4414 83.1802 76.4414 67.4197C76.4414 51.6611 63.5976 38.8395 47.812 38.8395ZM50.6245 81.417H44.9995V75.8015H50.6245V81.417ZM50.6245 70.1863H44.9995V53.4244H50.6245V70.1863Z" fill="#F12F43"/>\n      </svg>'
                                ),
                                e.put("toast/icon/warning", t),
                                e.put(
                                    "toast/icon/info",
                                    '\n      <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg" ng-if="false">\n         <g clip-path="url(#clip10)">\n            <path d="M84.7059 14.1174V76.2351H53.6471C52.09 76.2351 50.8235 77.5015 50.8235 79.0586H45.1765C45.1765 77.5015 43.9098 76.2351 42.3529 76.2351H11.2941V14.1174H0V87.5292H35.5364L38.3599 90.3527H57.6401L60.4636 87.5292H96V14.1174H84.7059Z" fill="#2B2F36"/>\n            <path d="M45.1767 71.074V5.64697H16.9414V14.1176V70.5882C43.2625 70.754 42.7534 70.2145 45.1767 71.074ZM39.5296 62.1176H22.5885V36.7058H39.5296V62.1176ZM39.5296 31.0587H22.5885V25.4117H39.5296V31.0587ZM39.5296 19.7646H22.5885V14.1176H39.5296V19.7646Z" fill="#F8CC3D"/>\n            <path d="M28.2354 42.353H33.8824V56.4707H28.2354V42.353Z" fill="#1CBA6E"/>\n            <path d="M79.0585 70.5882V5.64697H50.8232V71.074C53.2436 70.2156 52.7299 70.754 79.0585 70.5882ZM62.1174 14.1176H67.7644V19.7646H62.1174V14.1176ZM62.1174 25.4117H67.7644V39.5293H62.1174V25.4117ZM56.4703 45.1764H73.4115V50.8234H56.4703V45.1764ZM56.4703 56.4705H73.4115V62.1176H56.4703V56.4705Z" fill="#1CBA6E"/>\n         </g>\n         <defs>\n            <clipPath id="clip10">\n               <rect width="96" height="96" fill="white"/>\n            </clipPath>\n         </defs>\n      </svg>'
                                );
                        },
                    ])
                    .service("$toast", [
                        "$templateCache",
                        "$document",
                        "$timeout",
                        function (e, t, n) {
                            var o = this,
                                a = ".modal-js",
                                i = ".sx-close",
                                l = 1e4,
                                c = 200;
                            (this.body = angular.element("body")),
                                (this.timer = null),
                                (this.show = function (e, r) {
                                    var s = o.getTemplate(e, r),
                                        u = angular.element(a);
                                    u.length && o.hide(),
                                        n(
                                            function () {
                                                var e = window.innerWidth - document.body.offsetWidth + "px";
                                                t.on("keydown keypress", o.hideOnEsc),
                                                    s.find(i).on("click", o.hide),
                                                    o.body.append(s).addClass("modal-open").css("padding-right", e),
                                                    angular.element(".socialTop").css("padding-right", e),
                                                    (o.timer = n(function () {
                                                        return o.hide();
                                                    }, l));
                                            },
                                            u.length ? c : 0
                                        );
                                }),
                                (this.hide = function () {
                                    angular.element(a).addClass("animated-fast fadeOut"),
                                        n(function () {
                                            angular.element(a).remove(), o.body.removeClass("modal-open").css("padding-right", 0), angular.element(".socialTop").css("padding-right", 0);
                                        }, c),
                                        t.off("keydown keypress", o.hideOnEsc),
                                        o.timer && (n.cancel(o.timer), (o.timer = null));
                                }),
                                (this.hideOnEsc = function (e) {
                                    27 === e.which && o.hide();
                                }),
                                (this.getTemplate = function (t, n) {
                                    var o,
                                        a = e.get("toast"),
                                        i = e.get("toast/icon/".concat(t));
                                    switch (t) {
                                        case "success":
                                            o = (0, r.default)("toast.title.0");
                                            break;
                                        case "error":
                                            o = (0, r.default)("toast.title.1");
                                            break;
                                        case "warning":
                                            o = (0, r.default)("toast.title.2");
                                            break;
                                        default:
                                            o = (0, r.default)("toast.title.3");
                                    }
                                    return (a = (a = (a = (a = a.replace("%ICON%", i)).replace("%TITLE%", o)).replace("%MESSAGE%", n)).replace("%CLOSE%", (0, r.default)("toast.close"))), angular.element(a);
                                }),
                                (this.success = function (e) {
                                    return o.show("success", e);
                                }),
                                (this.error = function (e) {
                                    return o.show("error", e);
                                }),
                                (this.warning = function (e) {
                                    return o.show("warning", e);
                                }),
                                (this.info = function (e) {
                                    return o.show("info", e);
                                });
                        },
                    ]);
                n.default = a;
            },
            { "../locale": 61 },
        ],
        67: [
            function (e, t, n) {
                "use strict";
                Object.defineProperty(n, "__esModule", { value: !0 }), (n.default = l);
                var o = e("./helpers");
                function r(e, t) {
                    var n = Object.keys(e);
                    if (Object.getOwnPropertySymbols) {
                        var o = Object.getOwnPropertySymbols(e);
                        t &&
                            (o = o.filter(function (t) {
                                return Object.getOwnPropertyDescriptor(e, t).enumerable;
                            })),
                            n.push.apply(n, o);
                    }
                    return n;
                }
                function a(e) {
                    for (var t = 1; t < arguments.length; t++) {
                        var n = null != arguments[t] ? arguments[t] : {};
                        t % 2
                            ? r(Object(n), !0).forEach(function (t) {
                                  i(e, t, n[t]);
                              })
                            : Object.getOwnPropertyDescriptors
                            ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(n))
                            : r(Object(n)).forEach(function (t) {
                                  Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(n, t));
                              });
                    }
                    return e;
                }
                function i(e, t, n) {
                    return t in e ? Object.defineProperty(e, t, { value: n, enumerable: !0, configurable: !0, writable: !0 }) : (e[t] = n), e;
                }
                function l(e, t, n, r, i, l) {
                    (0, o.getUrlParams)();
                    (t.busy = !1),
                        (t.modal = !1),
                        (t.global = e),
                        (t.global.languages = [
                            { code: "en", name: "English", type: "base" },
                            { code: "ru", name: "Русский", type: "base" },
                            { code: "zh-CN", name: "中国人", type: "google" },
                            { code: "pl", name: "Polskie", type: "google" },
                            { code: "it", name: "Italiano", type: "google" },
                            { code: "tr", name: "Türk", type: "google" },
                            { code: "es", name: "Espanol", type: "google" },
                            { code: "fr", name: "Le français", type: "google" },
                            { code: "de", name: "Deutsch", type: "google" },
                            { code: "pt", name: "Português", type: "google" },
                            { code: "ko", name: "한국어", type: "google" },
                            { code: "ja", name: "日本人", type: "google" },
                            { code: "ar", name: "عرب", type: "google" },
                            { code: "mn", name: "Монгол", type: "google" },
                        ]),
                        (t.global.token = {
                            code: "REX",
                            emission: 5e5,
                            startPrice: 0.5,
                            expectedPrice: 500,
                            expectedPercent: 1e5,
                            currentPrice: 0.25,
                            change: 1,
                            changePercent: 7.25,
                            buyUrl: "https://pancakeswap.finance/swap?inputCurrency=0xdac17f958d2ee523a2206206994597c13d831ec7",
                            whitePaperUrl: "styles/docs/White_Paper_en.pdf",
                        }),
                        (t.global.token = a(a({}, t.global.token), e.tokenPrice)),
                        (t.global.token.changePercent = (0, o.moneyFormat)(t.global.token.changePercent, 4)),
                        (t.global.token.currentPrice = (0, o.moneyFormat)(t.global.token.currentPrice, 4)),
                        (t.footerItems = [
                            { name: "NFT", link: "https://www.binance.com/en/nft/home" },
                            { name: "Coingecko", link: "https://www.coingecko.com" },
                            { name: "Bitcoin", link: "https://bitcoin.org" },
                            { name: "Coinmarketcap", link: "https://coinmarketcap.com" },
                            { name: "Pancakeswap", link: "https://pancakeswap.finance" },
                            { name: "Binance Wallet", link: "https://www.binance.com/en/download" },
                            { name: "MetaMask", link: "https://metamask.io" },
                            { name: "BTC Explorer", link: "https://www.blockchain.com/en/explorer" },
                            { name: "ETH Explorer", link: "https://etherscan.io" },
                            { name: "BSC Explorer", link: "https://bscscan.com" },
                        ]),
                        (t.appVersion = "ver 2.0.7.1.1"),
                        (t.getCurrency = function () {
                            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : t.global.currencies[0].code,
                                o = n.get("currency", e);
                            return n.has("currency") || n.set({ currency: o }), o;
                        }),
                        (t.setCurrency = function (e) {
                            t.global.currency !== e && ((t.global.currency = e), n.set({ currency: e }), t.$broadcast("CurrencyChange", e));
                        }),
                        (t.getLanguage = function () {
                            return n.has("language")
                                ? n.get("language")
                                : t.global.languages.find(function (e) {
                                      return e.code === LANG;
                                  }) || t.global.languages[0];
                        }),
                        (t.setLanguage = function (e) {
                            return n.set({ language: e });
                        }),
                        (t.changeLanguage = function (e) {
                            t.setLanguage(e);
                            var n = window.location.hostname,
                                o = new Date(0).toUTCString(),
                                r = "/".concat(LANG, "/").concat(e.code);
                            return (
                                "base" === e.type
                                    ? ((document.cookie = "googtrans=;expires=".concat(o, ";path=/")), (document.cookie = "googtrans=;domain=.".concat(n, ";expires=").concat(o, ";path=/")))
                                    : ((document.cookie = "googtrans=".concat(r, ";path=/")), (document.cookie = "googtrans=".concat(r, ";domain=.").concat(n, ";path=/"))),
                                (location.href = "?lang=".concat(e.code))
                            );
                        }),
                        (t.getViewMode = function () {
                            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 991;
                            return r.innerWidth > e ? "desktop" : "mobile";
                        }),
                        (t.getViewWidth = function () {
                            return parseInt(r.innerWidth);
                        }),
                        (t.scrollTop = function () {
                            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 0,
                                t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 100;
                            $("html, body").animate({ scrollTop: e }, t);
                        }),
                        (t.scrollTo = function (e) {
                            var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 200,
                                n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : 0,
                                o = arguments.length > 3 ? arguments[3] : void 0;
                            if (!e) return !1;
                            var r = angular.element("#" + e);
                            r.length &&
                                ($("html,body").animate({ scrollTop: r.offset().top - n }, t),
                                l(function () {
                                    "function" == typeof o && o(e);
                                }, t));
                        }),
                        angular.element(r).bind("resize", function () {
                            (t.global.viewMode = t.getViewMode()), (t.global.viewWidth = t.getViewWidth()), t.$apply();
                        }),
                        (t.global.language = t.getLanguage()),
                        (t.global.currency = t.getCurrency()),
                        (t.global.viewMode = t.getViewMode()),
                        (t.global.viewWidth = t.getViewWidth()),
                        "ru" === t.global.language.code && (t.global.token.whitePaperUrl = "styles/docs/White_Paper_ru.pdf"),
                        void 0 !== window.flash && i.show(window.flash.type, window.flash.text);
                }
                l.$inject = ["Global", "$rootScope", "$storage", "$window", "$toast", "$timeout"];
            },
            { "./helpers": 60 },
        ],
    },
    {},
    [1]
);
