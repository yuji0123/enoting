$(document).ready(function() {
    marked.setOptions({
        langPrefix: ''
    });

    var src = $('.edit-note-text').val();
    var html = marked(src);

    $('#viewer').html(html);

});


// $('.notes-show-btn').click(function() {
//     marked.setOptions({
//         langPrefix: ''
//     });

//     var text = gon.text_list;

//     // console.log(text);

//     var html = marked(text);

//     $('#viewer').html(html);

// });

$(document).ready(function() {
    marked.setOptions({
        langPrefix: ''
    });

    var src = gon.text_list;
    // console.log("%s",src);
    var html = marked(src);

    $('#viewer').html(html);

});


// $(document).ready(function() {
//     marked.setOptions({
//         langPrefix: ''
//     });

//     var src = $('.show-note-text').val();
//     console.log("%s",src);
//     var html = marked(src);

//     $('#viewer').html(html);
// });


// $(function(){
//     var text = gon.text_list;

//     var html = marked(text);

//     $('#viewer').html(html);
// });