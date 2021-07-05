function checkGrade(grade){
    $.post({
        url:"../checkGrade",
        dataType:"json",
        asyncL:true,
        data:{"grade":grade},
        success:function(data) {
            if(!(grade == null || grade == "" || grade == undefined))
            {
                if (data == false) {
                    $("#grade").parent().append("<span style='display: block; color: red; text-align: center' id='gradeInfo'>成绩输入有误&nbsp;</span>");

                    document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                } else {

                    $("#submitBottom").removeAttr("disabled");
                }

            }
        }
    })
}

function removeGradeInfo(){
    $("#gradeInfo").remove();
}