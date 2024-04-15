    <div class="goog-te-spinner-pos">
        <div class="goog-te-spinner-animation">
            <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
                <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
            </svg>
        </div>
    </div>

    <script>
        document.write("<script type='text/javascript' src='styles/assets/app/jquery-3.6.0.min.js?v=" + Date.now() + "'><\/script>");

    </script>
    <script>
        var myElement = document.getElementById("mainwalletbox");
        if (myElement) {
            var dashboardwallet = document.getElementById("mainwalletbox");
            localStorage.setItem("dashboardwallet", dashboardwallet.innerHTML);
            //console.log(dashboardwallet);
        }

        var myElement = document.getElementById("mainwalletbox-set");
        if (myElement) {
            var get_dashboardwallet = localStorage.getItem('dashboardwallet');
            document.getElementById('mainwalletbox-set').innerHTML = get_dashboardwallet;
        }

        $('#AccountdeState').click(function() {
            $("#AccountdeStateMenu").toggleClass("active");
        });
        $('#AccountdeStateClose').click(function() {
            $("#AccountdeStateMenu").toggleClass("active");
        });
        $('#dashboardMenuhead').click(function() {
            $("#menuflexcolumnz").toggleClass("active");
        });
        $('#btnmenulogoclosejs').click(function() {
            $("#menuflexcolumnz").toggleClass("active");
        });
        $('#dashboardbtnjustifyz').click(function() {
            $("#dashboardwallet-boxz").toggleClass("active");
        });

        $("#dashselectcheckz").click(function(e) {
            $("#dashselectcheckz").toggleClass("active");
            $("#loadprocess").show();
            e.stopPropagation();
        });

        /* $("#loadprocess").click(function(e){
		$("#loadprocess").hide();
        e.stopPropagation();
        }); */

        $(document).click(function() {
            $("#dashselectcheckz").removeClass("active");
            $("#loadprocess").hide();
        });



        $('label.dashboard__box-checked-item').click(function() {
            $('label.dashboard__box-checked-item.active').removeClass('active');
            $(this).addClass('active');
        });

        //// Get the CryptoCurrency Information from the API
        jQuery.ajax({
            url: "https://min-api.cryptocompare.com/data/pricemulti",
            data: "fsyms=BTC,ETH,DASH,LTC&tsyms=USD",
            dataType: 'json',
        }).done(function(data) {
            // console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
            //jQuery(".dashCoin").html('$' + data.DASH.USD);
            //jQuery(".ethCoin").html('$' + data.ETH.USD);
            jQuery("#btc-price").html('$' + data.BTC.USD);
            //jQuery(".liteCoin").html('$' + data.LTC.USD);
        }).fail(function() {
            console.log("API error");
        });

        // live prices number_format
        function number_format(number, decimals, decPoint, thousandsSep) {
            number = (number + "").replace(/[^0-9+\-Ee.]/g, "");
            var n = !isFinite(+number) ? 0 : +number;
            var prec = !isFinite(+decimals) ? 0 : Math.abs(decimals);
            var sep = typeof thousandsSep === "undefined" ? "," : thousandsSep;
            var dec = typeof decPoint === "undefined" ? "." : decPoint;
            var s = "";

            var toFixedFix = function(n, prec) {
                var k = Math.pow(10, prec);
                return "" + (Math.round(n * k) / k).toFixed(prec);
            };

            // @todo: for IE parseFloat(0.55).toFixed(0) = 0;
            s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
            if (s[0].length > 3) {
                s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
            }
            if ((s[1] || "").length < prec) {
                s[1] = s[1] || "";
                s[1] += new Array(prec - s[1].length + 1).join("0");
            }

            return s.join(dec);
        }

        // live prices
        function load_coin_price(coin) {
            $.ajax({
                url: "https://api.binance.com/api/v3/ticker/24hr?symbol=" + coin.toUpperCase() + "USDT",
                dataType: "json",
                success: function(result) {
                    //$("#" + coin + "-price").html("$ " + number_format(result.lastPrice, 2, ".", ",") + "");
                    //$("#" + coin + "-price").html("$ " + number_format(result.lastPrice, 0, ".", ",") + "");
                    $("#" + coin + "-percent").html("" + number_format(result.priceChangePercent, 2, ".", ",") + " %");
                    if (result.priceChangePercent >= 0) {
                        var parent = $("#" + coin + "-percent").parents(".rate");
                        $(parent).removeClass("header__course-curr_down");
                        $(parent).addClass("header__course-curr_up");
                    }
                }
            });
        }
        load_coin_price("btc");

    </script>

    <script>
        document.write("<script type='text/javascript' src='styles/assets/app/swiper-6.8.4.min.js?v=" + Date.now() + "'><\/script>");

    </script>
    <script>
        $(document).ready(function() {
            // Swiper: Slider


            const swiper = new Swiper('.swiper', {
                // Optional parameters
                //direction: 'vertical',
                loop: true,
                slidesPerView: 1,

                // Navigation arrows
                navigation: {
                    nextEl: '.swiper-button-nextz',
                    prevEl: '.swiper-button-prevz',
                },

                // Autplay News
                autoplay: {
                    delay: 5500,
                    disableOnInteraction: true,
                },

                // And if we need scrollbar
                scrollbar: {
                    el: '.swiper-scrollbar',
                },
            });

        });

    </script>
