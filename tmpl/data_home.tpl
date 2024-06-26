        <script>
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
						$("#percentfoot").html("" + number_format(result.priceChangePercent, 2, ".", ",") + " %");
                        if (result.priceChangePercent >= 0) {
                            var parent = $("#" + coin + "-percent").parents(".rate");
                            $(parent).removeClass("header__course-curr_down");
                            $(parent).addClass("header__course-curr_up");
                        }
						if (result.priceChangePercent >= 0) {
                            var parent = $("#percentfootcolor");
                            $(parent).removeClass("header__course-curr_down");
                            $(parent).addClass("header__course-curr_up");
                        }
                    }
                });
            }
            load_coin_price("btc");

        </script>
