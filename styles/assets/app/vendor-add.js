    var default_nameproce = document.getElementById('addprocess_1').getAttribute('data-name');	
	var default_process = document.getElementById('addprocess_1').getAttribute('data-payment-id');	
	var default_plan_img = document.getElementById('addprocessimg_1').getAttribute('src');
	
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
	
	
    });
	
	$(document).ready(function(){   
    //$(".btn.btn_close.sx-close").click(function(){
    $(".sx-close").click(function(){
        $(".modal-js.rex.animated-fast").removeClass("fadeIn active");
		$(".modal-js.rex.animated-fast").addClass("fadeOutDown"); 
		
    });
    });
	
	