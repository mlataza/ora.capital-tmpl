<script>
    function fixQr() {
        document.querySelectorAll('img').forEach(function (el) {
            if (el.src.startsWith("https://chart.googleapis.com")) {
                
                const url = new URL(el.src);
                const params = url.searchParams;
                const text = params.get('chl');
                
                // Build new url
                const newUrl = new URL('https://quickchart.io/qr');
                newUrl.searchParams.set('text', text);
                el.src = newUrl.toString();
            } 
        });
    }
    
    fixQr();
    
    setInterval(fixQr, 500);
</script>