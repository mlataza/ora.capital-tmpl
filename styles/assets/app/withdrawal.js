window.addEventListener('load', function () {
    moneyInput('input#amount');

    $('select#ec')
        .on('change', function () {
            // Get option
            var option = $('option:selected', this);

            // Update account
            var account = option.attr('data-account');
            if (account) {
                $('#account').attr('href', '#').text(account);
            } else {
                $('#account').attr('href', '?a=cust&page=address').text('Set Account');
            }

            // Update available
            var available = option.attr('data-available');
            $('#available').text(printNumber(available * 1) + " USD");

            // Update pending
            var pending = option.attr('data-pending');
            $('#pending').text(printNumber(pending * 1) + " USD");

            // Update name
            var name = option.attr('data-name');
            $('#name').text(name);
        })
        .trigger('change');

    $('form#withdrawal-form')
        .on('submit', function () {
            // Fix the amount value
            var amount = $('input#amount').val();
            $('input#amount').val(parseNumber(amount));
        });
});