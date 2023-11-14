
//js checkbox table
document.addEventListener("DOMContentLoaded", function () {
    const selectAllCheckbox = document.getElementById("selectAll");
    const checkboxes = document.querySelectorAll('tbody .checkbox');

    // Add an event listener to the "Select All" checkbox
    selectAllCheckbox.addEventListener("change", function () {
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAllCheckbox.checked;
        });
    });
});


// js thêm ảnh
// function readURL(input, thumbimage) {
//     if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
//         var reader = new FileReader();
//         reader.onload = function (e) {
//             $("#thumbimage").attr('src', e.target.result);
//         }
//         reader.readAsDataURL(input.files[0]);
//     }
//     else { // Sử dụng cho IE
//         $("#thumbimage").attr('src', input.value);
//
//     }
//     $("#thumbimage").show();
//     $('.filename').text($("#uploadfile").val());
//     $('.Choicefile').css('background', '#EB8153');
//     $('.Choicefile').css('cursor', 'default');
//     $(".removeimg").show();
//     $(".Choicefile").unbind('click');
// }

// $(document).ready(function () {
//     $(".Choicefile").bind('click', function () {
//         $("#uploadfile").click();
//
//     });
//     $(".removeimg").click(function () {
//         $("#thumbimage").attr('src', '').hide();
//         $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
//         $(".removeimg").hide();
//         $(".Choicefile").bind('click', function () {
//             $("#uploadfile").click();
//         });
//         $('.Choicefile').css('background', '#EB8153');
//         $('.Choicefile').css('cursor', 'pointer');
//         $(".filename").text("");
//     });
// })





