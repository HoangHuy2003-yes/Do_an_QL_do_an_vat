$(document).ready(function () {
    function loadTable() {
        var tbody = $("#infoTable").find('tbody');
        tbody.empty();
        tbody.append('<tr><td colspan="4">Dữ liệu trống</td></tr>');

        $.post('SP_API.aspx', { action: 'get_infor_sp' }, function (data) {
            tbody.empty();
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    var sanpham = data[i];
                    var hangMoi = $("<tr></tr>");
                    hangMoi.append($("<td></td>").text(sanpham.MaSanPham));
                    hangMoi.append($("<td></td>").text(sanpham.TenSanPham));
                    hangMoi.append($("<td></td>").text(sanpham.MoTa));
                    hangMoi.append($("<td></td>").text(sanpham.Gia));
                    hangMoi.append($("<td></td>").text(sanpham.SoLuongTon));
                    hangMoi.append($("<td></td>").html(
                        `<button class="edit-btn" onclick="chinhSuaHang('${sanpham.MaSanPham}', this)">Sửa</button>
                         <button class="delete-btn" onclick="xoaHang('${sanpham.MaSanPham}', this)">Xóa</button>`
                    ));
                    tbody.append(hangMoi);
                }
            } else {
                tbody.append('<tr><td colspan="4">Không có dữ liệu nào.</td></tr>');
            }
        }, 'json');
    }


    function themHang() {
        var html =
            `<form id="addDeviceForm">
                         <div class="mb-3">
                            <label for="MaSanPhamInput" class="form-label">Mã sản phẩm</label>
                            <input type="text" class="form-control" id="MaSanPhamInput" placeholder="Nhập mã sản phẩm">
                        </div>
                         <div class="mb-3">
                            <label for="TenSanPhamInput" class="form-label">Tên sản phẩm</label>
                            <input type="text" class="form-control" id="TenSanPhamInput" placeholder="Nhập tên sản phầm">
                        </div>
                        <div class="mb-3">
                            <label for="MoTaSanPhamInput" class="form-label">Mô tả sản phẩm</label>
                            <input type="text" class="form-control" id="MoTaSanPhamInput" placeholder="Nhập phần mô tả sản phầm">
                        </div>
                        <div class="mb-3">
                            <label for="GiaSanPhamInput" class="form-label">Giá sản phẩm</label>
                            <input type="text" class="form-control" id="GiaSanPhamInput" placeholder="Nhập giá sản phầm">
                        </div>
                       <div class="mb-3">
                            <label for="SLTonSanPhamInput" class="form-label">Số lượng sản phầm tồn</label>
                            <input type="text" class="form-control" id="SLTonSanPhamInput" placeholder="Nhập số lượng sản phầm">
                        </div>
                       
                        </div>
                    </form>`;

        var confirmBox = $.confirm({
            title: 'Thêm Phòng',
            content: html,
            boxWidth: '20%',
            theme: 'material',
            buttons: {
                add: {
                    text: 'Thêm',
                    btnClass: 'btn-primary',
                    action: function () {
                        var MaSanPham = $('#MaSanPhamInput').val();
                        var TenSanPham = $('#TenSanPhamInput').val();
                        var MoTa = $('#MoTaSanPhamInput').val();
                        var Gia = $('#GiaSanPhamInput').val();
                        var SoLuongTon = $('#SLTonSanPhamInput').val();

                        if (!MaSanPham || !TenSanPham || !Gia || !SoLuongTon) {
                            $.alert('Vui lòng nhập đầy đủ thông tin!');
                            return false;
                        }

                        $.post('SP_API.aspx', {
                            action: 'add_sp',
                            MaSanPham: MaSanPham,
                            TenSanPham: TenSanPham,
                            MoTa: MoTa,
                            Gia: Gia,
                            SoLuongTon: SoLuongTon,
                        }, function (data) {
                            if (data.ok) {
                                $.alert('Đã Thêm Thành Công');
                                loadTable();
                                confirmBox.close();
                            } else {
                                $.alert('Thêm Thất Bại');
                            }
                        }, 'json');
                        return false;
                    }
                },
                cancel: {
                    text: 'Hủy',
                    btnClass: 'btn-secondary',
                }
            }
        });
    }

    window.xoaHang = function (MaSanPham, button) {
        $.post('SP_API.aspx', { action: 'delete_sp', MaSanPham: MaSanPham }, function (data) {
            if (data.ok) {
                $(button).closest('tr').remove();
            } else {
                alert('Xoá thất bại');
            }
        }, 'json');
    }

    window.chinhSuaHang = function (MaSanPham, button) {
        var hang = $(button).closest('tr');

        hang.find('td').each(function (index) {
            if (index < 5) { 
                var text = $(this).text();
                $(this).attr('data-old-value', text); 
                if (index === 3) { 
                    $(this).html(`<input type="number" class="editable-input" step="0.01" value="${text}">`);
                } else if (index === 4) { 
                    $(this).html(`<input type="number" class="editable-input" step="1" value="${text}">`);
                } else {
                    $(this).html(`<input type="text" class="editable-input" value="${text}">`);
                }
            }
        });

        $(button).replaceWith(`
        <button class="save-btn" onclick="luuHang('${MaSanPham}', this)">Lưu</button>
        <button class="cancel-btn" onclick="huyChinhSua('${MaSanPham}', this)">Hủy</button>
    `);
    }

    window.luuHang = function (MaSanPham, button) {
        var hang = $(button).closest('tr');

        var updatedData = {
            MaSanPham: MaSanPham,
            TenSanPham: hang.find('td').eq(1).find('input').val(),
            MoTa: hang.find('td').eq(2).find('input').val(),
            Gia: parseFloat(hang.find('td').eq(3).find('input').val()),
            SoLuongTon: parseInt(hang.find('td').eq(4).find('input').val(), 10)
        };

        if (isNaN(updatedData.Gia) || updatedData.Gia < 0) {
            alert("Vui lòng nhập giá hợp lệ!");
            return;
        }
        if (isNaN(updatedData.SoLuongTon) || updatedData.SoLuongTon < 0) {
            alert("Vui lòng nhập số lượng tồn hợp lệ!");
            return;
        }

        $.post('SP_API.aspx', {
            action: 'update_sp',
            ...updatedData
        }, function (data) {
            if (data.ok) {
                hang.find('td').each(function (index) {
                    if (index < 5) {
                        var newValue = $(this).find('input').val();
                        $(this).text(newValue);
                    }
                });
                $(button).siblings('.cancel-btn').remove(); 
                $(button).replaceWith(`
                <button class="edit-btn" onclick="chinhSuaHang('${MaSanPham}', this)">Sửa</button>
            `);
            } else {
                alert('Cập nhật thất bại');
            }
        }, 'json');
    }

    window.huyChinhSua = function (MaSanPham, button) {
        var hang = $(button).closest('tr');

        hang.find('td').each(function (index) {
            if (index < 5) {
                var oldValue = $(this).attr('data-old-value');
                $(this).text(oldValue);
            }
        });

        $(button).siblings('.save-btn').remove(); 
        $(button).replaceWith(`
        <button class="edit-btn" onclick="chinhSuaHang('${MaSanPham}', this)">Sửa</button>
    `);
    }

    
    $(".add_btn").click(themHang);
    loadTable();

    //$(window).click(function (event) {
    //    if (event.target.id === "loginModal") {
    //        $("#loginModal").hide();
    //    }
    //});
});
