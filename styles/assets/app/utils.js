function printNumber(number) {
    return number.toLocaleString("en", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    });
}

function parseNumber(string) {
    return parseFloat(string.replaceAll(',', ''));
}

function moneyInput(selector) {
    $(selector)
        .off("keydown")
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
        });
}