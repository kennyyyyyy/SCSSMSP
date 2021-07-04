function checkSno(sno, type){
    $.post({
        url:"../checkSno",
        dataType:"json",
        asyncL:true,
        data:{"sno":sno},
        success:function(data) {
            if(!(sno == null || sno == "" || sno == undefined))
            {
                switch (type) {
                    case 0:
                        if (data == false) {
                            $("#sno").parent().append("<span style='display: block; color: red; text-align: center' id='snoInfo'>该学号已存在&nbsp;</span>");

                            document.getElementById("submitBottom").setAttribute("disabled", "disabled");
                        } else {

                            $("#submitBottom").removeAttr("disabled");
                        }
                        break;
                    case 1:
                        if (data == true) {
                            $("#sno").parent().append("<span style='display: block; color: red; text-align: center' id='snoInfo'>该学号不存在&nbsp;</span>");

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

function removeSnoInfo(){
    $("#snoInfo").remove();
}