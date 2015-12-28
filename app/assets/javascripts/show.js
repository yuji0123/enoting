$(window).load(function() {
    marked.setOptions({
        langPrefix: ''
    });

    var text = gon.text_list;

    var html = marked(text);

    $('#viewer').html(html);
});


// $(function(){
//     var text = gon.text_list;

//     var html = marked(text);

//     $('#viewer').html(html);
// });