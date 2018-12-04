


$(document).ready(
    function () {

        var token = $("meta[name='_csrf']").attr("content");
        $.ajaxSetup({
            headers: {
                "X-CSRF-Token": token
            }
        });

        $("#changewarning").hide();
        $("#fillwarning").hide();
        $("#usernameorpasswordwarning").hide();
        $("#loginwarning").hide();
        $("#newoldpasswordwarning").hide();

    });


function controlChange() {
    var name = document.getElementById("name").value;
    var surname = document.getElementById("surname").value
    var tc_id = document.getElementById("tc_id").value
    var phone = document.getElementById("phone").value
    var blood_type = document.getElementById("blood_type").value
    var username = document.getElementById("username").value
    var password = document.getElementById("password").value
    var patient = document.getElementById("patient").value
    var donor = document.getElementById("donor").value
    console.log(name);
    $.ajax({
        type: "POST",
        url: "/aa",
        async: false,
        data: {
            name: JSON.stringify(name),
            surname: JSON.stringify(surname),
            tc_id: JSON.stringify(tc_id),
            phone: JSON.stringify(phone),
            blood_type: JSON.stringify(blood_type),
            username: JSON.stringify(username),
            password: JSON.stringify(password),
            patient: JSON.stringify(patient),
            donor: JSON.stringify(donor)
        },
        success: function (response) {
            console.log("test");
            console.log(response);
            if (response == "1") {
                console.log("test");
                alertify.alert('Başarılı!', 'Kaydınız başarıyla oluşturuldu!', function () {
                    window.location = "/login"
                });
            }
        },

        error: function (e) {
            console.log("test");
            alertify.alert('Hata!', 'Geçici bir sebep dolayısıyla şifreniz değiştirilemedi.Daha sonra tekrar deneyin', function () {
                window.location = "/login"
            });
        }
    })
}
