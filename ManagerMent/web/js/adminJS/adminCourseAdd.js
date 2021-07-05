$().ready(function () {
    $("#addForm").validate({
        rules:{
            "cno":{
                required:true,
            },
            "cname":{
                required:true,
            },
            "course_nature":{
                required:true,
            },
            "credits":{
                required:true,
            }
        },
        messages:{
            "cno":{
                required:"请输入课程编号",
            },
            "cname":{
                required:"请输入课程名称",
            },
            "course_nature":{
                required:"请输入课程性质",
            },
            "credits":{
                required:"请输入学分",
            }
        },
        errorPlacement: function(error, element) {
            $( element )
                .closest( "form" )
                .find( "label[for='" + element.attr( "id" ) + "']" ).parent()
                .append( error );
        },
        errorElement: "span",

    })
});
