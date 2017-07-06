$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("Change");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });
});

$(document).ready(function() {
	
	// interval 시간마다 슬라이더 자동으로 넘기기
	$('.carousel').carousel({
		interval : 3000
	});
	
	// 메뉴 추가 및 수정 폼 숨기기
	$('#menuAdd').hide();
	
	// 메뉴 추가 버튼을 클릭했을 때 
	$('#menuAddBtn').click(function() {
		// label 메뉴추가로 바꿈
		$('.change').text('메뉴추가');
		
		// 메뉴추가 버튼만 보여주고 메뉴 수정, 메뉴삭제 버튼 숨기기 
		$('#menuBtn').show();
		$('#menuMod').hide();
		$('#menuDel').hide();

		// 메뉴에 있는 트럭번호만 가지고 오고 폼의 나머지 input 값 공백으로 바꾸기
		$('#add_truck_num').val($('#truck_num').val());
		$('#add_menu_num').val('');
		$('#add_menu_name').val('');
		$('#add_menu_price').val('');
		$('#add_menu_content').val('');
		
		// 메뉴 추가 및 수정 폼 토글
		$('#menuAdd').toggle();
	});
	
	//메뉴 슬라이더 cursor pointer로 바꿈
	$('.fff').css('cursor', 'pointer');
	
	//메뉴 슬라이더를 눌렀을 때
	$('.fff').click(function() {
		
		// label 메뉴수정으로 바꿈
		$('.change').text('메뉴수정');
		
		// 메뉴추가 버튼만 숨기고 메뉴 수정, 메뉴삭제 버튼 보여주기 
		$('#menuBtn').hide();
		$('#menuMod').show();
		$('#menuDel').show();
		
		// 메뉴에 있는 값으로 폼의 input에 값으로 변경
		$('#add_menu_num').val($(this).find('#menu_num').val());
		$('#add_truck_num').val($('#truck_num').val());
		$('#add_menu_content').val($(this).find('#menu_content').val());
		$('#add_menu_cate').val($(this).find('#menu_cate').val());
		$('#add_menu_name').val($(this).find('#menu_name').text());
		$('#add_menu_price').val($(this).find('#menu_price').text());
		$('#add_pic').val($(this).find('#menu_picreal').attr('src'));
		
		// 메뉴 추가 및 수정 폼 보여줌
		$('#menuAdd').show();
	});
	
	// 메뉴 추가 버튼을 클릭했을 때 menuAdd.do로 submit
	$('#menuBtn').click(function() {
		$('#menuForm').attr('action', 'menuAdd.do');
		$('#menuForm').submit();
	});
	
	// 메뉴 수정 버튼을 클릭했을 때 menuMod.do로 submit
	$('#menuMod').click(function() {
		$('#menuForm').attr('action', 'menuMod.do');
		$('#menuForm').submit();
	});
	
	// 메뉴 삭제 버튼을 클릭했을 때 menuDel.do로 submit
	$('#menuDel').click(function() {
		$('#menuForm').attr('action', 'menuDel.do');
		$('#menuForm').submit();
	});
});