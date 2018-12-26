/*****宽窄屏幕自适应****/
$(document).ready(function(){
if(screen.width > 1420 && $(window).width() > 1420)
{
	$("body").addClass("widemode ");
	$("body").removeClass("middlemode");
}

else{
	$("body").addClass("middlemode ");
	$("body").removeClass("widemode");
	}

});
//当文档窗口发生改变时 触发  
  $(window).resize(function(){
	if(screen.width > 1420 && $(window).width() > 1420)
{
	$("body").addClass("widemode ");
	$("body").removeClass("middlemode");
}
else{
	$("body").addClass("middlemode ");
	$("body").removeClass("widemode ");
	}  
	  
	  
}) ;
//返回顶部
$(function(){
	$(window).on('scroll',function(){
		var st = $(document).scrollTop();
		if( st>0 ){
			if( $('#main-container').length != 0  ){
				var w = $(window).width(),mw = $('#main-container').width();
				if( (w-mw)/2 > 70 )
					$('#go-top').css({'left':(w-mw)/2+mw+20});
				else{
					$('#go-top').css({'left':'auto'});
				}
			}
			$('#go-top').fadeIn(function(){
				$(this).removeClass('dn');
			});
		}else{
			$('#go-top').fadeOut(function(){
				$(this).addClass('dn');
			});
		}	
	});
	$('#go-top .go').on('click',function(){
		$('html,body').animate({'scrollTop':0},500);
	});

	$('#go-top .uc-2vm').hover(function(){
		$('#go-top .uc-2vm-pop').removeClass('dn');
	},function(){
		$('#go-top .uc-2vm-pop').addClass('dn');
	});
});
$(function(){
	//标签选择
	var selectTagRows = $(".listIndex dd");
	selectTagRows.each(function(i){
        selectTagRows.eq(i).children("a").on("click",function(){
            $(this).addClass("selected");
            $(this).siblings().removeClass("selected");
        });
	});
    var tabs = $(".tab_box");
    tabs.children("a").on("click",function(){
        $(this).addClass("hover");
        $(this).siblings().removeClass("hover");
    });

});

