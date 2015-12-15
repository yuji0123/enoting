


// 今いるページを判別するためにリンクの色を変更する関数
$(function(){
	var note = document.getElementById("note-source");
	var noteBook = document.getElementById("noteBook-source");
	var edit = document.getElementById("edit-source");
	var view = document.getElementById("view-source");
	if( location.href == "file://localhost/Users/itoudaiki/Development/Markdown_editor/html/note.html" ){
		note.style.backgroundColor = "#00a7cf";
	}
	else if( location.href == "file://localhost/Users/itoudaiki/Development/Markdown_editor/html/noteBook.html"){
		noteBook.style.backgroundColor = "#00a7cf";
	}
	else if( location.href == "file://localhost/Users/itoudaiki/Development/Markdown_editor/html/edit.html"){
		edit.style.backgroundColor = "#00a7cf";
	}
	else if( location.href == "file://localhost/Users/itoudaiki/Development/Markdown_editor/html/view.html"){
		view.style.backgroundColor = "#00a7cf";
	}	
});


//  ノートをslideToggleによってダウンして表示させる．
$(document).ready(function(){
	$(".textarea").hide();
	// var flag = "close";
	$(".notelist-table").click(function(){
		var note_name = $(this).attr("id");
		if( note_name ){
			$(this).children(".textarea").slideToggle();
		}
	});
});


// 「編集」と「閲覧」リンクに制限をかける関数
$(document).ready(function(){
	$("#edit-source>a ,#view-source>a").click(function(){
		if( $(".textarea").is(":hidden") ){
			return false;
			$("#edit-source, #view-source").hover(function(){
				$("#edit-source, #view-source").style.backgroundColor("#808080");
			});
		}
		else{
			return true;
		}
	});
});


$(document).ready(function(){
	var note_name;
	var updated_at;
	var creater;

	$("notelist-table").click(function(){
		var note_name = document.getElementsByClassName("note-name");
		document.write(note_name);
	});
});