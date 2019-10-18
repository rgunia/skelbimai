function resizeHeaderOnScroll() {
    const distanceY = window.pageYOffset || document.documentElement.scrollTop,
        shrinkOn = 30,
        headerEl = document.getElementById('js-header');

    if (distanceY > shrinkOn) {
        headerEl.classList.add("smaller");
    } else {
        headerEl.classList.remove("smaller");
    }
}

window.addEventListener('scroll', resizeHeaderOnScroll);

jQuery(document).ready(function(){
    jQuery('#search-cat').change(function(e){
        e.preventDefault();

        jQuery.ajax({
            url: "{{ route('ajax.searchMenu') }}",
            method: 'post',
            data: {markID: jQuery('#search-cat').val(), _token: '{{csrf_token()}}'},
            success: function (response) {
                console.log(response);
            },
        });
    });
});