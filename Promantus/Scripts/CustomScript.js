function DatePick(id) {
    $(id).datepicker({
        showOn: 'button',
        buttonImageOnly: true,
        buttonImage: '/images/calendar.png',
        changeMonth: true,
        changeYear: true,
        beforeShow: function () {
            $('.ui-datepicker').css(
                { 'font-size': 11, 'line-height': 1.2 }
            )
        }
    });
}
function LoadData(url) {
    $.ajax({
        type: "POST",
        url: url,
        //data: JSON.stringify(Student),
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        success: function (data) {

            if (data.length > 0) {
                DataBind(data)
            }
            else {
                $("#LoadingStatus").html("No Data Found...");
            }
        },
        error: function (e) {
            debugger;

            alert("Error occured!!")
        }
    });
}
function AddDetails() {
    $("#from")[0].reset();
    $("#ModalTitle").html("Add New User");
    $("#Mymodel").modal();
}

function saveData(data,Url) {
    $.ajax({
        type: "Post",
        url: Url,
        data: data,
        success: function (Result) {
            if (Result) {
                alert("Save Success ! .....");

                $("#Mymodel").modal("hide");
                location.reload(true);
            }
            else {
                alert("Check the data again");
            }
        },
        error: function (re) {

            alert(re);
        }
    });
}
function Delete(ID, Name) {

    $("#DeleteID").val(ID);
    $("#DeleteValue").text(Name);
    $("#DeleteConfirm").modal("show");
}

function ConfirmDelete(DeleteID, Deleteurl, LoadUrl) {
       $.ajax({
        type: "POST",
        url: Deleteurl,
        data: { "ID": DeleteID },
        success: function (Response) {
            if (Response) {
                alert("Deleted Successfuly .....!");
                $("#DeleteConfirm").modal("hide");
                location.reload(true);
            }

        }
    });
}