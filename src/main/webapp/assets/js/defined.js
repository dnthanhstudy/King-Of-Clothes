const confirmRemove = "Bạn muốn xóa phần tử này phải không. Bạn muốn xóa click vào OK. Ngược lại click vào Cancel";

/********************************* MESSGAE ATTRIBUTE *************************************************/

const errorMoreAttributes = "Bạn chỉ thêm được tối đa 3 thuộc tính. Xin lỗi vì sự bất tiện này";
const isEmpty = "Không được để trống. Vui lòng kiểm tra lại";
const attributeExsits = "Thuộc tính này đã tồn tại. Xin vui lòng kiểm tra lại";
const valueExsits = "Phần tử bạn thêm đã tồn tại. Xin vui lòng kiểm tra lại";
const isNumber = "Giá trị bạn nhập không hợp lệ. Xin kiểm tra lại";

/*******************************************************************************************/

/********************************* MESSGAE PRODUCTS *************************************************/

const createdProductSuccess = "Thêm mới sản phẩm thành công";
const createdProductError = "Thêm mới sản phẩm thất bại. Xin kiểm tra lại";

/*******************************************************************************************/


let valueAttributes = [];

function messageNotication(text, bg) {
    Toastify({
        text: text,
        duration: 4000,
        style: {
            background: bg,
        },
        close: true,
    }).showToast();
}

// Function generate name to slug
function customNameToSlug(name) {
    name = name.replace(/\s+/g, ' ');
    let slug = name.toLowerCase();
    slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, "a");
    slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, "e");
    slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, "i");
    slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, "o");
    slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, "u");
    slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, "y");
    slug = slug.replace(/đ/gi, "d");
    slug = slug.replace(
        /\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi,
        ""
    );
    slug = slug.replace(/ /gi, "-");
    slug = slug.replace(/\-\-\-\-\-/gi, "-");
    slug = slug.replace(/\-\-\-\-/gi, "-");
    slug = slug.replace(/\-\-\-/gi, "-");
    slug = slug.replace(/\-\-/gi, "-");
    slug = "@" + slug + "@";
    slug = slug.replace(/\@\-|\-\@|\@/gi, "");
    return slug;
}
