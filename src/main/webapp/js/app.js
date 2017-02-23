$(document).ready(function(){
	
	$(document).on('click','table tr td a[id^="edit_"]',function(){	
		$(this).removeAttr('class');
		$(this).attr('class','btn btn-info');
		$(this).parent().next().find('.btn_edit').attr("disabled","disabled");
		
		
	})
});	
