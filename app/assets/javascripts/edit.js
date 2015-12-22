$(function() {
    marked.setOptions({
        langPrefix: ''
    });

    $('.edit-note-text').keyup(function() {
        var src = $(this).val();

        var html = marked(src);

        $('#result').html(html);

        $('pre code').each(function(i, block) {
            hljs.highlightBlock(block);
        });
    });
});

$(window).load(function() {
    marked.setOptions({
        langPrefix: ''
    });

    var src = $('.edit-note-text').val();
    console.log("%s",src);
    var html = marked(src);

    $('#result').html(html);
});

// $(document).on('pagecontainerload',function() {
//     marked.setOptions({
//         langPrefix: ''
//     });

//     var src = $('.edit-note-text').val();

//     var html = marked(src);

//     $('#result').html(html);
// });