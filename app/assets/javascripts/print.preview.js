
$(function() {
    $('#aside').prepend('<a class="print-preview">Print this page</a>');
    $('a.print-preview').printPreview();

    $(document).bind('keydown', function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code == 80 && !$('#print-modal').length) {
            $.printPreview.loadPrintPreview();
            return false;
        }
    });
});
