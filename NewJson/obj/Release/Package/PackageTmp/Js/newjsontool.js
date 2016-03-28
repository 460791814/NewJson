//给URL增加http头部
function addhttp(url) {
    if (!(url.toLowerCase().indexOf("http://") > -1) && !(url.toLowerCase().indexOf("https://") > -1)) {
        url = "http://" + url;

    }
    return url;
}