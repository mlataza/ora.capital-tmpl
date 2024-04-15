
     function calcthis() {
         var start = document.getElementById("inputsmoney").value;
		 var depo = start.replace(/\,/g,"");
		     temp2 = $("#txtDays").val();
			 
	    var initial = parseFloat(depo);
		var amount = initial;
        var days = parseFloat(temp2);
		var rate = 0.0;
        var planName;
		 
		if (depo.length == 0) {
            depo = 0
        }
        if (temp2.length == 0) {
            temp2 = 0
        }
		
		if (initial < 39){
            rate = 0
        }
        if (initial >= 40) {
			rate = 0.26;
		$("#hourlyint").text("0.010");
		$("#dailyint").text("0.26");
		}
		if (initial >= 1000) {
			rate = 0.08;
		$("#hourlyint").text("0.013");
		$("#dailyint").text("0.33");
		}
		if (initial >= 5000) {
			rate = 0.17;
		$("#hourlyint").text("0.016");
		$("#dailyint").text("0.40");
		}
		
		
         if (depo < 39) {
             document.getElementById("HourlyProfit").innerHTML = '0.00';
             document.getElementById("DailyProfit").innerHTML = '0.00';
             document.getElementById("WeeklyProfit").innerHTML = '0.00';
             document.getElementById("MonthlyProfit").innerHTML = '0.00';
         } if (initial >= 40 && initial < 1000){
            //$("#HourlyProfit").text(parseFloat(initial * rate/100).toFixed(3));
            //$("#DailyProfit").text(parseFloat(initial * rate * 24/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			//$("#WeeklyProfit").text(parseFloat((initial * rate * 24/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#MonthlyProfit").text(parseFloat((initial * rate * 24/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalProfit").text(parseFloat((initial * rate * 24/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalReturn").text(parseFloat(((initial * rate * 24/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			$("#HourlyProfit").text(parseFloat((initial * rate/100)/24).toFixed(3));
            $("#DailyProfit").text(parseFloat(initial * rate/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#WeeklyProfit").text(parseFloat((initial * rate/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#MonthlyProfit").text(parseFloat((initial * rate/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalProfit").text(parseFloat((initial * rate/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalReturn").text(parseFloat(((initial * rate/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#SelectedPlan").text(planName); 
        }
        if (initial >= 1001 && initial < 4000){
            //$("#HourlyProfit").text(parseFloat(initial * rate/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#DailyProfit").text(parseFloat(initial * rate * 24/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			//$("#WeeklyProfit").text(parseFloat((initial * rate * 24/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#MonthlyProfit").text(parseFloat((initial * rate * 24/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalProfit").text(parseFloat((initial * rate * 24/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalReturn").text(parseFloat(((initial * rate * 24/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			$("#HourlyProfit").text(parseFloat((initial * rate/100)/24).toFixed(2));
            $("#DailyProfit").text(parseFloat(initial * rate/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#WeeklyProfit").text(parseFloat((initial * rate/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#MonthlyProfit").text(parseFloat((initial * rate/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalProfit").text(parseFloat((initial * rate/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalReturn").text(parseFloat(((initial * rate/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#SelectedPlan").text(planName); 
        }
		if (initial >= 5000 && initial < 10000){
            //$("#HourlyProfit").text(parseFloat(initial * rate/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#DailyProfit").text(parseFloat(initial * rate * 24/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			//$("#WeeklyProfit").text(parseFloat((initial rate * 24/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#MonthlyProfit").text(parseFloat((initial * rate * 24/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalProfit").text(parseFloat((initial * rate * 24/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            //$("#TotalReturn").text(parseFloat(((initial * rate * 24/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			$("#HourlyProfit").text(parseFloat((initial * rate/100)/24).toFixed(2));
            $("#DailyProfit").text(parseFloat(initial * rate/100).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#WeeklyProfit").text(parseFloat((initial * rate/100) * 7).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#MonthlyProfit").text(parseFloat((initial * rate/100) * 30).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalProfit").text(parseFloat((initial * rate/100) * days).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#TotalReturn").text(parseFloat(((initial * rate/100) * days) + (initial * .95)).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ","));
            $("#SelectedPlan").text(planName); 
        }
		 if (initial > 10000){
		   $("#hourlyint").text("0.00");
		   $("#dailyint").text("0.00");
           document.getElementById("HourlyProfit").innerHTML = '0.00';
           document.getElementById("DailyProfit").innerHTML = '0.00';
           document.getElementById("WeeklyProfit").innerHTML = '0.00';
           document.getElementById("MonthlyProfit").innerHTML = '0.00';
        }
		
		
		
		
		
     };


$(document).ready(function(){

$('#inputsmoney').keyup(function(event) {

  // skip for arrow keys
  if(event.which >= 37 && event.which <= 40) return;

  // format number
  $(this).val(function(index, value) {
    return value
    .replace(/\D/g, "")
    .replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    ;
  });
});

});