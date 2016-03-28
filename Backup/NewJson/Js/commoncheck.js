if (window.top != window.self) window.top.location.href = 'http://www.ip138.com/';


function checkMobile() {
    var sMobile = document.mobileform.mobile.value
    if (!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test(sMobile))) {
        alert("不是完整的11位手机号或者正确的手机号前七位");
        document.mobileform.mobile.focus();
        return false;
    }
}

function checkZip() {
    var sZip = document.zipform.zip.value
    if (!(/^\d{4,6}$/.test(sZip))) {
        alert("请输入邮政编码前4-6位");
        return false;
    }
}

function checkZone() {
    var sZone = document.zoneform.zone.value
    if (!(/^0\d{2,6}$/.test(sZone))) {
        alert("请输入以“0”开头的3-7位区号");
        return false;
    }
}

function checkArea2Zip() {
    var sArea = document.area2zipForm.area.value
    if (sArea == "") {
        alert("请输入地址");
        document.area2zipForm.area.focus();
        return false;
    }
    if (sArea.length < 2) {
        alert("地址至少要有2个字");
        document.area2zipForm.area.focus();
        return false;
    }
}

function checkArea2Zone() {
    var sArea = document.area2zoneForm.area.value
    if (sArea == "") {
        alert("请输入地址");
        document.area2zoneForm.area.focus();
        return false;
    }
    if (sArea.length < 2) {
        alert("地址至少要有2个字");
        document.area2zoneForm.area.focus();
        return false;
    }
}

function checkID() {
    var sID = document.IDform.userid.value
    if (!(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(sID))) {
        alert("请输入15位或18位身份证号");
        document.IDform.userid.focus();
        return false;
    }
}
