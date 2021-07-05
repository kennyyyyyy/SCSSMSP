function checkCno(cno, type){
    $.post({
        url:"../checkCno",
        dataType:"json",
        asyncL:true,
        data:{"cno":cno},
        success:function(data) {
            if(!(cno == null || cno == "" || cno == undefined))
            {
                switch (type) {
                    case 0:
                        if (data == false) {
                            $("#cno").parent().append("<span style='display: block; color: red; text-align: center' id='cnoInfo'>该课程编号已存在&nbsp;</span>");

                            document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                        } else {

                            $("#submitBottom").removeAttr("disabled");
                        }
                        break;
                    case 1:
                        if (data == true) {
                            $("#cno").parent().append("<span style='display: block; color: red; text-align: center' id='cnoInfo'>该课程编号不存在&nbsp;</span>");

                            document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                        } else {

                            $("#submitBottom").removeAttr("disabled");
                        }
                        break;
                }
            }
        }
    })
}

function removeCnoInfo(){
    $("#cnoInfo").remove();
}