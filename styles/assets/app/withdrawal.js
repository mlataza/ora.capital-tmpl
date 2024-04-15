window.addEventListener('load', function () {
    moneyInput('input#amount');

    $('select#ec')
        .on('change', function () {
            // Update account
            var account = $('option:selected', this).attr('data-account');
            if (account) {
                $('#account').attr('href', '#').text(account);
            } else {
                $('#account').attr('href', '?a=cust&page=address').text('Set Account');
            }

            // Update available
            var available = $('option:selected', this).attr('data-available');
            $('#available').text(printNumber(available * 1) + " USD");

            // Update pending
            var pending = $('option:selected', this).attr('data-pending');
            $('#pending').text(printNumber(pending * 1) + " USD");
        })
        .trigger('change');
});