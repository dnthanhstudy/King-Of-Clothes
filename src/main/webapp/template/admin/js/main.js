
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


