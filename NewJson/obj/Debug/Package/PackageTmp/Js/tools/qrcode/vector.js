String.prototype.colorHex = function() {
    var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
    var that = this;
    if (/^(rgb|RGB)/.test(that)) {
        var aColor = that.replace(/(?:\(|\)|rgb|RGB)*/g, "").split(",");
        var strHex = "#";
        for (var i = 0; i < aColor.length; i++) {
            var hex = Number(aColor[i]).toString(16);
            if (hex === "0") {
                hex += hex;
            }
            strHex += hex;
        }
        if (strHex.length !== 7) {
            strHex = that;
        }
        return strHex;
    } else if (reg.test(that)) {
        var aNum = that.replace(/#/, "").split("");
        if (aNum.length === 6) {
            return that;
        } else if (aNum.length === 3) {
            var numHex = "#";
            for (var i = 0; i < aNum.length; i += 1) {
                numHex += (aNum[i] + aNum[i]);
            }
            return numHex;
        }
    } else {
        return that;
    }
};
function format() {
    $('#pictype a').bind('click', function() {
        var text = $('#apiText').attr('title');
        if (!text) {
            text = "http://m.liantu.com/";
        }
        text=encodeURIComponent(text);
        var vt = $(this).attr('data-format');
        var param = '';
        var fg = $('#fgcolor').attr('data-color');
        if (fg) {
            param += '&fg=' + fg.colorHex().replace('#', '');
        }
        var bg = $('#bgcolor').attr('data-color');
        if (bg) {
            param += '&bg=' + bg.colorHex().replace('#', '');
        }
        var pt = $('#ptcolor').attr('data-color');
        if (pt) {
            param += '&pt=' + pt.colorHex().replace('#', '');
        }
        var inpt = $('#inptcolor').attr('data-color');
        if (inpt) {
            param += '&inpt=' + inpt.colorHex().replace('#', '');
        }
        var el = $('#level').val();
        var m = parseInt($('#margin').val());
        var href = '/savevector.php?text=' + text + param + '&el=' + el + '&m=' + m + '&vt=' + vt;
        location.href = href;
        return false;
    })
}
format();

//如果文本内容为粘贴来的
$("#text_text,#card_n,#card_tel,#card_phone,#car_note,#card_org,#card_til,#card_mail,#card_adr,#card_url,#url_url,#sms_sms,#sms_tel,#wifi_ssid,#wifi_p,#telephone_tel,#mail_mail").bind({
    "paste": function() {
        var $this = $(this);
        $this.trigger("keyup");
    }
});