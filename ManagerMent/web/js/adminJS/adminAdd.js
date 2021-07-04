$().ready(function () {
    $("#addForm").validate({
        rules:{
            "sno":{
                required:true,
            },
            "name":{
                required:true,
            },
            "sex":{
                required:true,
            },
            "admission_data":{
                required:true,
            },
            "major":{
                required:true,
            },
            "id_card":{
                required:true,
            }
        },
        messages:{
            "sno":{
                required:"请输入学号",
            },
            "name":{
                required:"请输入姓名",
            },
            "sex":{
                required:"请选择性别",
            },
            "admission_data":{
                required:"请输入入学日期",
            },
            "major":{
                required:"请输入专业",
            },
            "id_card":{
                required:"请输入省份证号",
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

function check(sno){
    $.post({
        url:"../checkSno",
        dataType:"json",
        asyncL:true,
        data:{"sno":sno},
        success:function(data) {
            if(!(sno == null || sno == "" || sno == undefined))
            {
                if (data == false) {
                    $("#sno").parent().append("<span style='display: block; color: red; text-align: center' id='info'>该学号已存在&nbsp;</span>");

                    document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                } else {

                    $("#submitBottom").removeAttr("disabled");
                }
            }
        }
    })
}

function removeInfo(){
    $("#info").remove();
}