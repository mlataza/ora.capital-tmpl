        var get_operations = localStorage.getItem('set_operations');
		//console.log(get_operations);
        if(get_operations){
	    document.getElementById('set-operations').innerHTML = get_operations;
	    }
		
		var get_currencies = localStorage.getItem('set_currencies');
		//console.log(get_currencies);
        if(get_currencies){
	    document.getElementById('set-currencies').innerHTML = get_currencies;
	    }
	
	    
        //Update Change Payment

        $("#load-operations").on("click", "div", function() {

            /* var load_id_operations = $(this).attr('id-operations');
            document.getElementById('setoperation').value = load_id_operations; */

            var load_data = $(this).attr('data-operations');
            document.getElementById('set-operations').innerHTML = load_data;
            //window.localStorage.setItem('load_process',load_process);
            //console.log('Updated data Default : ' + load_process);

            $('select[name="type"]').val($(this).data("value"));
			
			var operations = load_data;
		    if(operations){
	        var set_operations = load_data;
	        localStorage.setItem("set_operations", set_operations);
	        //console.log(set_operations);
	        }

            document.opts.submit();

        });

        $("#load-currencies").on("click", "div", function() {

            /* var load_id_operations = $(this).attr('id-operations');
            document.getElementById('setoperation').value = load_id_operations; */

            var load_data = $(this).attr('data-currencies');
            document.getElementById('set-currencies').innerHTML = load_data;
            //window.localStorage.setItem('load_process',load_process);
            //console.log('Updated data Default : ' + load_process);

            $('select[name="ec"]').val($(this).data("value"));
			
			var currencies = load_data;
		    if(currencies){
	        var set_currencies = load_data;
	        localStorage.setItem("set_currencies", set_currencies);
	        //console.log(set_operations);
	        }

            document.opts.submit();

        });


        $("#select-operations").click(function(e) {
            $("#select-operations").toggleClass("active");
            $("#load-operations").show();
            e.stopPropagation();
        });

        $(document).click(function() {
            $("#select-operations").removeClass("active");
            $("#load-operations").hide();
        });

        $("#select-currencies").click(function(e) {
            $("#select-currencies").toggleClass("active");
            $("#load-currencies").show();
            e.stopPropagation();
        });

        $(document).click(function() {
            $("#select-currencies").removeClass("active");
            $("#load-currencies").hide();
        });
		
		
		
	    
