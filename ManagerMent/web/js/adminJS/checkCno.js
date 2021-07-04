function checkCno(cno){
    $.post({
        url:"../checkCno",
        dataType:"json",
        asyncL:true,
        data:{"cno":cno},
        success:function(data) {
            if(!(cno == null || cno == "" || cno == undefined))
            {
                console.log(2);
                if (data == true) {
                    $("#cno").parent().append("<span style='display: block; color: red; text-align: center' id='cnoInfo'>该课程编号不存在&nbsp;</span>");

                    document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                } else {

                    $("#submitBottom").removeAttr("disabled");
                }

            }
        }
    })
}

function removeCnoInfo(){
    $("#cnoInfo").remove();
}