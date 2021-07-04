$(document).ready(function() {
  $('#custom_indexfile_upload').uploadify({
		      'uploader' 	 : '../jqfile/css/uploadify.swf', 	//该swf文件是一个带有文字BROWSE的按钮，点击后淡出打开文件对话框，默认值：uploadify.swf。
	          'script'    	 : '../fileUpload',	// 设置后台处理程序的相对路径
	          'method'     	 : 'post',	 										// 提交方式Post 或Get 默认为Post 
	          
	          'cancelImg' 	   : '../jqfile/images/cancel.png',	// 设置取消按钮图片
	          'displayData'    : 'speed',											// 用来设置上传文件的进度(百分比)
	          'removeCompleted': true,												// 为false时，当文件上传完成后不关闭上传文件层信息，为true时，上传完成后即关闭上传文件层
	          'auto'           : true,												// 设置是否自动上传- 默认false
	          
	          'hideButton'     : false,												// 设置为true则隐藏上传按钮的图片,用此属性时，wmode属性必须设置为transparent,则可以去掉原flash的背景层
			  'wmode'          : 'opaque',	//transparent							// 设置该项为transparent 可以使浏览按钮的flash背景文件透明，并且flash文件会被置为页面的最高层。 默认值：opaque
			  'rollover'       : false,												// 值为true和false，设置为true时当鼠标移到浏览按钮上时有反转效果。 
			  'buttonImg' 	   : '../jqfile/images/up1.jpg',  // 修改上传button图片
	          'height'         : 34, 												// 设置上传按钮的高度，默认为30
			  'width'		   : 77, 		 											// 如果上传文件的flash不存在则使用此flash代替
	  
			  'onComplete': function(event, queueID, fileObj, response, data) {
				  $("#photos").val(response); // 把图片名称赋值给隐藏域提交form表单到后台
				  $("#showimg").html('<img class="img-rounded" src="/images/' + response + ' " width="200px;" height="90px;">');
 			  	} 
	});
});