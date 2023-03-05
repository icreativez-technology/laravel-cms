jQuery(function() {
$("#addons").attr("multiple",true);
$(document).ready(function () {
    $(document).on('click', '.add-subscription-schema-items', function (event) {
        event.preventDefault();
        $('.subscription-schema-items').toggleClass('hidden');
    });
});

 })