// JavaScript Document

$(function(){
	$(".index_contentData").each(function(){
		$(".index_contentData p:odd").addClass("index_contentData_border")
		$(".index_contentData li:odd").css("background","#f9f9f9")
	})
	/*$(".dropLayer_style").each(function(){
		$(".dropLayer_style p:odd").addClass("index_contentData_border")
		$(".dropLayer_style li:odd").css("background","#f9f9f9")
	})*/
	
	$(".index_contentLeft_title_btn").click(function(){
		if($(".index_contentData").is(":visible")==false)
		{
			$(".index_contentData").slideDown(333)
			$(".index_contentLeft_title_btn").removeClass("index_btnClick")
		}
		else
		{
			$(".index_contentData").slideUp(333)
			$(".index_contentLeft_title_btn").addClass("index_btnClick")
		}
	})
	$(".index_contentRight_title_btn").click(function(){
		if($(".index_contentNews").is(":visible")==false)
		{
			$(".index_contentNews").slideDown(333)
			$(".index_contentRight_title_btn").removeClass("index_btnClick")
		}
		else
		{
			$(".index_contentNews").slideUp(333)
			$(".index_contentRight_title_btn").addClass("index_btnClick")
		}
	})
	$(".dropLayer_btnStyle").click(function(){
		oDrop=$(".dropLayer_btnStyle").index(this)
		if($(".boxs").eq(oDrop).is(":visible")==false)
		{
			$(".boxs").eq(oDrop).slideDown(333)
			$(".dropLayer_btn").eq(oDrop).removeClass("dropLayer_btnClick")
		}
		else
		{
			$(".boxs").eq(oDrop).slideUp(333)
			$(".dropLayer_btn").eq(oDrop).addClass("dropLayer_btnClick")
		}
	})
	
	
	$(".dataTitle_p:first").addClass("dataTitle_pClick")
	$(".index_control:first").show()
	$(".dataTitle_p").click(function(){
		oData=$(".dataTitle_p").index(this)
		if($(".index_control").eq(oData).is(":visible")==false)
		{
			$(".dataTitle_p").removeClass("dataTitle_pClick")	
			$(this).addClass("dataTitle_pClick")
			$(".index_control").hide()
			$(".index_control").eq(oData).show()
		}
			
	})
})

















































