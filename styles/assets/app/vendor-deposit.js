var default_nameproce = document.getElementById('directpay_1').getAttribute('data-name');
var default_process = document.getElementById('directpay_1').getAttribute('data-payment-id');
var default_plan_img = document.getElementById('directimg_1').getAttribute('src');
var default_plan = document.getElementById('planselect_1').getAttribute('data-plan-id');
var default_package_name = document.getElementById('planselect_1').getAttribute('data-package-name');
var default_plan_name = document.getElementById('planselect_1').getAttribute('data-plan-name');
var default_plan_profit = document.getElementById('planselect_1').getAttribute('data-percent');
var default_plan_min = document.getElementById('planselect_1').getAttribute('data-plan-min');
var default_plan_max = document.getElementById('planselect_1').getAttribute('data-plan-max');
var default_plan_period = document.getElementById('planselect_1').getAttribute('data-period');
var default_plan_days = document.getElementById('planselect_1').getAttribute('data-days');
var default_spend_funds = document.getElementById('directpay_1').getAttribute('spend-funds-proccesor');
var default_spend_account = document.getElementById('directpay_1').getAttribute('spend-funds-account-balance');

function printNumber(number) {
    return number.toLocaleString("en", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    });
}


function updatePercentages(dailyProfitPercentage) {
    function apply(id, days) {
        $(id).text((dailyProfitPercentage * days).toPrecision(4) + "%");
    }

    apply('#percent_1day', 1);
    apply('#percent_10days', 10);
    apply('#percent_30days', 30);
    apply('#percent_60days', 60);
    apply('#percent_100days', 240);
}

function updateBars(dailyProfitPercentage) {
    var maxHeight = $('#bar_1day').parent().parent().height() / (dailyProfitPercentage * 240 / 100);

    function apply(id, days) {
        $(id).css({ height: dailyProfitPercentage * days * maxHeight / 100 }).next().css({ height: 0, margin: 0 });
    }

    apply('#bar_1day', 1);
    apply('#bar_10days', 10);
    apply('#bar_30days', 30);
    apply('#bar_60days', 60);
    apply('#bar_100days', 240);
}

function updateProfits(amount, dailyProfitPercentage) {
    function apply(id, days) {
        $(id).text(printNumber(dailyProfitPercentage * days * amount / 100) + " USD");
    }

    $('#profitdeposit').text(printNumber(amount * 1) + " USD");

    apply('#totalprofit', 240);
    apply('#profit1day', 1);
    apply('#profit7days', 7);
    apply('#profit30days', 30);
    apply('#profit60days', 240);
}

function parseNumber(string) {
    return parseFloat(string.replaceAll(',', ''));
}

document.getElementById('name-paymentz').innerText = default_nameproce;
document.getElementById('change_funds').innerText = 'From ' + default_nameproce;
document.getElementById('name-paymentz').setAttribute('spend-funds-proccesor', default_spend_funds);
document.getElementById('name-paymentz').setAttribute('spend-funds-account-balance', default_spend_account);
document.getElementById('setprocessor').value = default_process;
document.getElementById('defaultimgpay').setAttribute('src', default_plan_img);
document.getElementById('setpplan').value = default_plan;
//document.getElementById('package-name').innerText = default_package_name;

if (default_package_name == 'Rare' || default_package_name == "RARE" || default_package_name == "rare") {
    document.getElementById('package-name').innerText = 'pantlink';
} else if (default_package_name == 'Epic' || default_package_name == "EPIC" || default_package_name == "epic") {
    document.getElementById('package-name').innerText = 'OZQ';
} else if (default_package_name == 'Legendary' || default_package_name == "LEGENDARY" || default_package_name == "legendary") {
    document.getElementById('package-name').innerText = 'Hcosen';
} else if (default_package_name == 'Genesis' || default_package_name == "GENESIS" || default_package_name == "genesis") {
    document.getElementById('package-name').innerText = 'Kepler';
} else {
    document.getElementById('package-name').innerText = default_package_name;
}

document.getElementById('plan-name').innerText = default_plan_name;
document.getElementById('plan-profit').innerText = default_plan_profit + "%";
document.getElementById('plan-min-depo').innerText = commify(default_plan_min) + " USD";
document.getElementById('plan-max-depo').innerText = commify(default_plan_max) + " USD";
document.getElementById('plan-period').innerText = default_plan_period;
document.getElementById('plan-amount').value = printNumber(default_plan_min * 1);

// Apply compound here
if (default_package_name.toLowerCase() == "epic" || default_package_name.toLowerCase() == "genesis") {
    default_plan_profit = default_plan_profit * 1 + 100 / 5760;
}

updatePercentages(default_plan_profit * 24);
document.getElementById('spend_funds').value = default_spend_funds;

if (default_spend_account != 'none') {
    $("#change_account").show();
} else {
    document.getElementById('spend_account').setAttribute('disabled', 'disabled');
    $("#change_account").hide();
}

var planselect_1 = document.getElementById("planlabel_1");
planselect_1.classList.add("active");

updateBars(default_plan_profit * 24);
updateProfits(default_plan_min, default_plan_profit * 24);

function DoCalculate() {

    var load_amount = parseNumber($("#plan-amount").val());
    updateProfits(load_amount, default_plan_profit * 24);

}


$("#plan-amount")
    .on("keydown", function (e) {
        if (e.which == 37 || e.which == 39) {
            e.preventDefault();
            return false;
        }

        var number = parseNumber(this.value);

        if (e.which == 8) {
            number /= 10.0;
            number = Math.floor(number * 100.0) / 100.0;
        }

        // Keyboard numbers
        if (e.which >= 48 && e.which <= 57) {
            number *= 10;
            number += (e.which - 48) * 0.01;
        }

        // Keypad numbers
        if (e.which >= 96 && e.which <= 105) {
            number *= 10;
            number += (e.which - 96) * 0.01;
        }

        $(this).val(printNumber(number));

        e.preventDefault();
        return false;
    })
    .on("keyup", function () {
        DoCalculate();
    })
    .on("blur", function () {
        var min = default_plan_min * 1;
        var max = default_plan_max * 1;
        var amount = parseNumber(this.value);

        if (amount < min) {
            this.value = printNumber(min);
            DoCalculate();
            return;
        }

        if (amount > max) {
            this.value = printNumber(max);
            DoCalculate();
            return;
        }
    });



//Update Change Payment
$("#loadprocess").on("click", "div", function () {
    var load_process = $(this).attr('data-payment-id');
    document.getElementById('setprocessor').value = load_process;
    //window.localStorage.setItem('load_process',load_process);
    //console.log('Updated data Default : ' + load_process);

    var load_nameproce = $(this).attr('data-name');
    document.getElementById('name-paymentz').innerText = load_nameproce;
    //window.localStorage.setItem('load_nameproce',load_nameproce);
    //console.log('Updated data Default : ' + load_nameproce);
    var load_plan_img = $('img', $(this)).attr('src');
    document.getElementById('defaultimgpay').setAttribute('src', load_plan_img);

    document.getElementById('change_funds').innerText = 'From ' + load_nameproce;

    var load_spend_funds = $(this).attr('spend-funds-proccesor');
    document.getElementById('name-paymentz').setAttribute('spend-funds-proccesor', load_spend_funds);
    //console.log('Updated data Default : ' + load_process);

    var load_spend_account = $(this).attr('spend-funds-account-balance');
    document.getElementById('name-paymentz').setAttribute('spend-funds-account-balance', load_spend_account);
    //console.log('Updated data Default : ' + load_process);

    document.getElementById('spend_funds').value = load_spend_funds;

    if (load_spend_account != 'none') {
        $("#change_account").show();
        document.getElementById('spend_account').removeAttribute('disabled', 'disabled');
    } else {
        document.getElementById('spend_account').setAttribute('disabled', 'disabled');
        $("#change_account").hide();
    }

});


//Update Spend Funds Processor
$("#spend_funds").on("click", function () {

    var change_spend_proccesor = document.getElementById('name-paymentz').getAttribute('spend-funds-proccesor');
    document.getElementById('spend_funds').value = change_spend_proccesor;
    //Clean option account
    document.getElementById('spend_account').value = '';

});

//Update Spend Funds Account
$("#spend_account").on("click", function () {

    var change_spend_account = document.getElementById('name-paymentz').getAttribute('spend-funds-account-balance');
    document.getElementById('spend_account').value = change_spend_account;
    //Clean option funds
    document.getElementById('spend_funds').value = '';

});


//Update Change Plan
$("#loadplans").on("click", "div", function () {
    var load_plan = $(this).attr('data-plan-id');
    document.getElementById('setpplan').value = load_plan;
    //window.localStorage.setItem('load_plan',load_plan);
    //console.log('Updated data Default : ' + load_plan); 
    var load_package_name = $(this).attr('data-package-name');
    //document.getElementById('package-name').innerText = load_package_name;

    if (load_package_name == 'Rare' || load_package_name == "RARE" || load_package_name == "rare") {
        document.getElementById('package-name').innerText = 'pantlink';
    } else if (load_package_name == 'Epic' || load_package_name == "EPIC" || load_package_name == "epic") {
        document.getElementById('package-name').innerText = 'OZQ';
    } else if (load_package_name == 'Legendary' || load_package_name == "LEGENDARY" || load_package_name == "legendary") {
        document.getElementById('package-name').innerText = 'Hcosen';
    } else if (load_package_name == 'Genesis' || load_package_name == "GENESIS" || load_package_name == "genesis") {
        document.getElementById('package-name').innerText = 'Kepler';
    } else {
        document.getElementById('package-name').innerText = load_package_name;
    }


    var load_plan_name = $(this).attr('data-plan-name');
    document.getElementById('plan-name').innerText = load_plan_name;

    var load_percent = $(this).attr('data-percent');
    document.getElementById('plan-profit').innerText = load_percent + "%";

    // Apply compound here
    if (load_package_name.toLowerCase() == "epic" || load_package_name.toLowerCase() == "genesis") {
        load_percent = load_percent * 1 + 100 / 5760;
    }

    var load_plan_min = $(this).attr('data-plan-min');
    document.getElementById('plan-min-depo').innerText = commify(load_plan_min) + " USD";

    var load_plan_max = $(this).attr('data-plan-max');
    document.getElementById('plan-max-depo').innerText = commify(load_plan_max) + " USD";

    var load_plan_period = $(this).attr('data-period');
    document.getElementById('plan-period').innerText = load_plan_period;

    var load_plan_days = $(this).attr('data-days');

    document.getElementById('plan-amount').value = printNumber(load_plan_min * 1);

    updatePercentages(load_percent * 24);
    updateBars(load_percent * 24);
    updateProfits(load_plan_min, load_percent * 24);

    function DoCalculate() {

        var load_amount = parseNumber($("#plan-amount").val());
        updateProfits(load_amount, load_percent * 24);

    }


    $("#plan-amount")
        .off("keyup")
        .on("keyup", function () {
            DoCalculate();
        })
        .off("blur")
        .on("blur", function () {
            var min = load_plan_min * 1;
            var max = load_plan_max * 1;
            var amount = parseNumber(this.value);

            if (amount < min) {
                this.value = printNumber(min);
                DoCalculate();
                return;
            }

            if (amount > max) {
                this.value = printNumber(max);
                DoCalculate();
                return;
            }
        });;

});


$(document).ready(function () {
    //$(".btn.btn_close.sx-close").click(function(){
    $(".sx-close").click(function () {
        $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
        $(".modal-js.rex.animated-fast").addClass("fadeOutDown");

    });
});

function commify(n) {
    var parts = n.toString().split(".");
    const numberPart = parts[0];
    const decimalPart = parts[1];
    const thousands = /\B(?=(\d{3})+(?!\d))/g;
    return numberPart.replace(thousands, ",") + (decimalPart ? "." + decimalPart : "");
}