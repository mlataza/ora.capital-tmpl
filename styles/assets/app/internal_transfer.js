window.addEventListener('load', function () {
    moneyInput('input#amount');

    $('select#ec')
        .on('change', function () {
            // Get option
            var option = $('option:selected', this);

            // Update available
            var available = option.attr('data-available');
            $('#available').text(printNumber(available * 1) + " USD");
        })
        .trigger('change');
});