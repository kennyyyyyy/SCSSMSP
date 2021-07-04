$().ready(function () {
    $("#addForm").validate({
        rules:{
            "sno":{
                required:true,
            },
            "cno":{
                required:true,
            },
            "grade":{
                required:true,
            }
        },
        messages:{
            "sno":{
                required:"请输入学号",
            },
            "cno":{
                required:"请输入课程编号",
            },
            "grade":{
                required:"请输入成绩",
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