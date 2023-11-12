// Add name attribute
$(".input-name-atrribute").on("keypress", function (e) {
    if (e.which === 13) {
        e.preventDefault();
        let nameAttribute = $(e.target).val();
        if (!nameAttribute) {
            messageNotication(isEmpty, "rgba(255, 99, 71, 1)");
        } else {
            $(".card-text-none-attribute").remove();
            const slugAttribute = customNameToSlug(nameAttribute);
            if (findBySlug(slugAttribute) !== undefined) {
                messageNotication(attributeExsits, "rgba(255, 99, 71, 1)");
            } else {
                valueAttributes.push({
                    slug: slugAttribute,
                    ten: nameAttribute,
                    giatris: [],
                });

                const eleDivProductsHasAtributes = $(
                    `<div class="product-has-attribute mb-3" data-code="${slugAttribute}"></div>`
                );
                const eleNameAttribute = `<div class="name-attribute">
                                      <button type="button" class="btn btn-success position-relative btn-remove-parent">
                                          ${nameAttribute}
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                            <i class="btn-remove-parent fa-solid fa-trash"></i>
                                        </span>
                                      </button>
                                  </div>

                                  <div class="input-group mt-3">
                                      <input type="text" class="form-control input-value-attribute" placeholder="Nhập giá trị"/>
                                  </div>`;
                eleDivProductsHasAtributes.html(eleNameAttribute);
                $(".card-body:first").append(eleDivProductsHasAtributes);
            }
            $(e.target).val("");
        }
    }
});

// Add value attribute
$(".card-body:first").on("click", function (e) {
    const eleClick = $(e.target);
    if (eleClick.hasClass("input-value-attribute")) {
        if (!eleClick.parent().prev().hasClass("list-value-attribute")) {
            const eleListValueAtributes = $(
                '<div class="list-value-attribute mt-3"></div>'
            );
            eleListValueAtributes.insertBefore(eleClick.parent());
        }
        eleClick.on("keypress", function (e) {
            if (e.which === 13) {
                e.preventDefault();
                const valueAttr = eleClick.val();
                const slugCurrent = eleClick.parent().parent().data("code");
                if (checkValuExsits(slugCurrent, valueAttr) !== undefined) {
                    messageNotication(valueExsits, "rgba(255, 99, 71, 1)");
                } else {
                    if (valueAttr) {
                        const eleValueAttr = `<button type="button" class="btn btn-secondary btn-sm position-relative me-3 btn-value-attr btn-remove-children">
                                          ${valueAttr}
                                          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                            <i class="btn-remove-children fa-solid fa-trash"></i>
                                          </span>
                                    </button>`;
                        const res = findBySlug(slugCurrent);
                        eleClick.parent().prev().append(eleValueAttr);

                        res.giatris.push(valueAttr);
                        generateValueAttr();
                    }
                }
                eleClick.val("");
            }
        });
    }
});

// Remove attribute
$(".card-body:first").on("click", function (e) {
    const eleClick = $(e.target);
    const isClickParent = eleClick.hasClass("btn-remove-parent");
    const isClickChildren = eleClick.hasClass("btn-remove-children");
    if (isClickParent || isClickChildren) {
        if (confirm(confirmRemove)) {
            let slug = eleClick.parent().parent().data("code");
            if (slug === undefined) {
                slug = eleClick.parent().parent().parent().parent().data("code");
            }
            const ele = findBySlug(slug);
            if (isClickParent) {
                valueAttributes = valueAttributes.filter(
                    (valueAttribute) => valueAttribute !== ele
                );
                removeAllProducHasAttribute(slug);
            } else {
                let valueRemove = eleClick.text().trim();
                if (
                    valueRemove === undefined ||
                    valueRemove === null ||
                    valueRemove === ""
                ) {
                    valueRemove = eleClick.parent().parent().text().trim();
                    console.log(valueRemove);
                    eleClick.parent().parent().remove();
                } else {
                    eleClick.remove();
                }
                let giatrithuoctinh = ele.giatris;
                giatrithuoctinh = giatrithuoctinh.filter((val) => val !== valueRemove);
                ele.giatris = giatrithuoctinh;
            }
            generateValueAttr();
            messageNotication("Xóa thành công", "rgb(3, 138, 255)");
        }
    }
});

// Function find element of valueAttributes using slug
function findBySlug(slug) {
    return valueAttributes.find((ele) => {
        return ele.slug === slug;
    });
}

// Function check value inside element attributes exsits
function checkValuExsits(slug, value) {
    const ele = findBySlug(slug);
    return ele.giatris.find((val) => {
        return val.toLowerCase() === value.toLowerCase();
    });
}

// Remove AlL
function removeAllProducHasAttribute(slug) {
    $(".product-has-attribute").each(function () {
        const dataCode = $(this).data("code");
        if (dataCode === slug) {
            $(this).remove();
        }
    });
}

// Generate product variants
function generateValueAttr() {
    let attributenames = [];
    let attributes = {};
    valueAttributes.forEach((ele) => {
        let attributename = ele.ten;
        attributenames.push(attributename);
        let attributevalue = [];
        ele.giatris.forEach((val) => {
            attributevalue.push(val);
        });
        attributes[attributename] = attributevalue;
    });
    let attrs = [];

    for (const [attr, values] of Object.entries(attributes)){
        if (values.length > 0) {
            attrs.push(values.map(v => ({ [attr]: v })));
        }
    }

    attrs = attrs.reduce((a, b) =>
        a.flatMap((d) => b.map((e) => ({ ...d, ...e })))
    );
    $(".table-variant-body").html("");
    for (const attr of attrs) {
        let row = [];
        for (const attrname of attributenames) {
            if (attr[attrname] !== undefined) {
                row.push(attr[attrname]);
            }
        }
        row = row.join(",");

        const trcontent = `<tr>
                              <td class="text-center ten">${row}</td>
                              <td>
                                <input type="text" class="form-control btn-input-price gia" />
                              </td>
                              <td>                     
                                <input class="form-control variant-image hinhanh" type="file">
                              </td>
                          </tr> `;
        $(".table-variant-body").append(trcontent);
    }
}

$("#ten").keyup(function () {
    const name = $(this).val();
    const slug = customNameToSlug(name);
    $("#slug").val(slug);
});



