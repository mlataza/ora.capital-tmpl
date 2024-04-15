    var default_nameproce = document.getElementById('withdrawalprocess_1').getAttribute('data-name');	
	var default_process = document.getElementById('withdrawalprocess_1').getAttribute('data-payment-id');	
	var default_plan_img = document.getElementById('withdrawalprocessimg_1').getAttribute('src');
	var default_data_wallet = document.getElementById('withdrawalprocess_1').getAttribute('data-wallet-set');
	var default_data_pending = document.getElementById('withdrawalprocess_1').getAttribute('data-pending');
	$("#pending-now").hide();
	/* var default_plan = document.getElementById('planselect_1').getAttribute('data-plan-id');
	var default_package_name = document.getElementById('planselect_1').getAttribute('data-package-name');	
	var default_plan_name = document.getElementById('planselect_1').getAttribute('data-plan-name');
	var default_plan_profit = document.getElementById('planselect_1').getAttribute('data-percent');
	var default_plan_min = document.getElementById('planselect_1').getAttribute('data-plan-min');
	var default_plan_max = document.getElementById('planselect_1').getAttribute('data-plan-max');
	var default_plan_period = document.getElementById('planselect_1').getAttribute('data-period');
	var default_plan_days = document.getElementById('planselect_1').getAttribute('data-days'); */
	
	
    document.getElementById('name-paymentz').innerText = default_nameproce;
	document.getElementById('setprocessor').value = default_process;
   	document.getElementById('defaultimgpay').setAttribute('src', default_plan_img);
	
		
	if (default_data_wallet == 'Not Set Adress' ){
	document.getElementById('data-wallet-setz').value = default_data_wallet;	
	var walletselect = document.getElementById("button-wallet");
    walletselect.setAttribute('disabled', "disabled");
	$("#button-wallet").hide();
	$("#button-wallet-set").show();
	}else if (default_data_wallet != 'Not Set Adress' ){
	document.getElementById('data-wallet-setz').value = default_data_wallet;	
    var walletselect = document.getElementById("button-wallet");
	walletselect.removeAttribute('disabled');
	$("#button-wallet").show();
	$("#button-wallet-set").hide();
	}
	
	if (default_data_pending != '0.00' ){
	$("#pending-default").hide();	
	$("#pending-now").show();
	document.getElementById('amount-pending').innerText = '$'+default_data_pending+' USD';
	document.getElementById('namewithpen').innerText = default_nameproce;	
	}
	
	//Update Change Payment
    $("#loadprocess").on("click", "div", function(){
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
	
	var load_data_wallet = $(this).attr('data-wallet-set');
	document.getElementById('data-wallet-setz').value = load_data_wallet;
	//console.log('Updated data Default : ' + load_data_wallet);
	
	if (load_data_wallet == 'Not Set Adress' ){
	var walletselect = document.getElementById("button-wallet");
    walletselect.setAttribute('disabled', "disabled");
	$("#button-wallet").hide();
	$("#button-wallet-set").show();
	}else if (load_data_wallet != 'Not Set Adress' ){
    var walletselect = document.getElementById("button-wallet");
	walletselect.removeAttribute('disabled');
	$("#button-wallet").show();
	$("#button-wallet-set").hide();
	}
	
	var load_data_pending = $(this).attr('data-pending');
	if (load_data_pending != '0.00' ){
	$("#pending-default").hide();	
	$("#pending-now").show();
	document.getElementById('amount-pending').innerText = '$'+load_data_pending+' USD';
	document.getElementById('namewithpen').innerText = load_nameproce;	
	}else if (load_data_pending == '0.00' ){   
	$("#pending-now").hide();
	$("#pending-default").show();	
	}
	
    });
	
	$(document).ready(function(){   
    //$(".btn.btn_close.sx-close").click(function(){
    $(".sx-close").click(function(){
        $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
		$(".modal-js.rex.animated-fast").addClass("fadeOutDown"); 
		
    });
    });
	
	