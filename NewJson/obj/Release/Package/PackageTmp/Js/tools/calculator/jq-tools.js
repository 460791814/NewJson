var tools = {
    clear: function (array) {
        for (var i = 0; i < array.length; i++) {
            if (array[i]) {
                array[i].value = '';
                so(array[i]).siblings("b").show();
            }
        }
    },
    cssdesigner: function () {
        so(".cornerIco").click(function () {
            var obj = so(this).parents('ul');
            if (obj.find('.Csspad-widthEven').hasClass("autohide")) {
                obj.find('.Csspad-widthEven').removeClass('autohide');
                obj.find('.Csspad-widthOdd').addClass('autohide');
                so(this).addClass("cornerIco-open").removeClass("cornerIco");
            } else {
                obj.find('.Csspad-widthEven').addClass('autohide');
                obj.find('.Csspad-widthOdd').removeClass('autohide');
                so(this).addClass("cornerIco").removeClass("cornerIco-open");
            }
        });
        so("p.Typeleft a").click(function () {
            var index = so(this).index();
            so(this).addClass("TyLcurt").siblings().removeClass("TyLcurt");
            so("div.CssheadBoot div.QrCSSDesignerPad:eq(" + index + ")").removeClass("autohide").siblings().addClass("autohide");
        });
    },
    htmlcheck: function () {
        so("li.errorline a").click(function () {
            var line = so(this).attr("line");
            var htmltext = so('#htmltext');
            htmltext.focus();
            var linepos = htmltext.val().indexOf(line);
            SelectRange(htmltext[0], linepos, linepos);
        });
    },
    pagecode: function () {
        so("div.TabheadWrap a").click(function () {
            so(this).addClass("Tabon").siblings().removeClass("Tabon");
            so("#codecolor").val(so(this).attr("val"));
            so("form").submit();
        });
    },
    webdebugger: {
        Webtest: function () {
            var win = window.open();
            win.document.open();
            win.document.write(so('#content').val());
            win.document.close();
        },
        saveCode: function () {
            if (!document.all) {
                layer.msg('此功能在IE有效');
                return;
            }
            var win = window.open('', '', 'top=10000,left=10000');
            win.document.write(document.all.content.innerText)
            win.document.execCommand('SaveAs', '', '文件名称.htm')
            win.close();
        },
        init: function () {
            var _this = this;
            so("#test").click(function () {
                _this.Webtest();
            });
            so("#select").click(function () {
                so("#content").select();
            });
            so("#clear").click(function () {
                so("#content").val("");
            });
            so("#save").click(function () {
                _this.saveCode();
            });
        }
    },
    htmlfilter: {
        fhtml: true,
        fjs: false,
        fcss: false,
        fself: false,
        Filter: function () {
            var s = so("#content").val();
            if (!this.fhtml && !this.fjs && !this.fcss && !this.fself)
                this.fhtml = true;
            if (this.fjs)
                s = s.replace(/<\s*script[^>]*>(.|[\r\n])*?<\s*\/script[^>]*>/gi, '');
            if (this.fcss)
                s = s.replace(/<\s*style[^>]*>(.|[\r\n])*?<\s*\/style[^>]*>/gi, '');
            if (this.fhtml) {
                s = s.replace(/<\/?[^>]+>/g, '');
                s = s.replace(/\&[a-z]+;/gi, '');
                s = s.replace(/\s+/g, '\n');
            }
            if (this.fself)
                s = s.replace(new RegExp(so("#preplace").val(), 'g'), so("#nextplace").val());
            so("#result").val(s).removeClass("col-gray");
        },
        checked: function (obj) {
            var thisv = so(obj).val();
            var set = so(obj).prop("checked");
            if (thisv == 3) {
                if (set) {
                    this.fhtml = false;
                    this.fjs = false;
                    this.fcss = false;
                    this.fself = true;
                    so(obj).siblings("[name=type]").prop("checked", false);
                    so("#place").removeClass("autohide");
                }
                else {
                    this.fhtml = true;
                    this.fself = false;
                    so("#place").addClass("autohide");
                    so("input[name=type]").eq(1).prop("checked", true);
                }
            }
            else {
                so("#place").addClass("autohide");
                so("input[name=type]").eq(0).prop("checked", false);
                switch (thisv) {
                    case "0": if (set) { this.fhtml = true; this.fself = false; } else { this.fhtml = false; } break;
                    case "1": if (set) { this.fjs = true; this.fself = false; } else { this.fjs = false; } break;
                    case "2": if (set) { this.fcss = true; this.fself = false; } else { this.fcss = false; } break;
                }
                var _this = this;
                _this.Filter();
            }
        },
        init: function (path) {
            var _this = this;
            so("input[name=type]").bind("click", function () {
                _this.checked(this);
            });
            so("#filter").click(function () {
                _this.Filter();
                so("#result").siblings(".CentHid").hide();
            });
            so("#clear").click(function () {
                so("#content").val("");
                so("#result").val("");
            });
            tools.clipfn(path);
        }
    },
    clipfn: function (id) {
        var _clip = "clip";
        if (id) _clip = id;
        var clip = new ZeroClipboard(getid(_clip), {
        	 moviePath:  "/js/common/ZeroClipboard.swf"
        });
        clip.on('complete', function (client, args) {
            layer.msg("已成功复制到剪贴板！");
        });
    },
    checkbox: function (t) {
        so(".js-FilterItem li").click(function (e) {
            if (!so(this).hasClass("selected")) {
                so(this).addClass("selected");
                fn(this);
            } else {
                so(this).removeClass("selected");
                fn(this);
            }
        });
        function fn(obj) {
            if (t == "reg") {
                var index = so(obj).index();
                if (index == 5) {
                    so("#chkboxhide input").eq(6).prop("checkbox", false).removeAttr("checked");
                    so("#_chkboxhide li").eq(6).removeClass("selected");
                } else if (index == 6) {
                    so("#chkboxhide input").eq(5).prop("checkbox", false).removeAttr("checked");
                    so("#_chkboxhide li").eq(5).removeClass("selected");
                }
                so("#chkboxhide input").eq(index).click();
            }
            else
                if (so(obj).find("input").val()) so(obj).find("input").val(""); else so(obj).find("input").val(so(obj).attr("val"));
        }
    },
    openweb: {
        openAttr: function (istest) {
            var address = so("input[name='url']").val();
            var op_tool = so("input[name='tool']").val() ? "toolbar=yes," : "";
            var op_loc = so("input[name='loc']").val() ? "location=yes," : "";
            var op_stat = so("input[name='stat']").val() ? "status=yes," : "";
            var op_menu = so("input[name='menu']").val() ? "menubar=yes," : "";
            var op_scroll = so("input[name='scroll']").val() ? "scrollbars=yes," : "";
            var op_resize = so("input[name='resize']").val() ? "resizable=yes," : "";
            var op_selfopen = so("input[name='selfopen']").val() ? "_self" : "newwindow";
            var op_width = so("input[name='width']").val() ? "width=" + so("input[name='width']").val() + "," : "";
            var op_height = so("input[name='height']").val() ? "height=" + so("input[name='height']").val() + "," : "";
            var op_L = so("input[name='L']").val() ? "left=" + so("input[name='L']").val() + "," : "";
            var op_T = so("input[name='T']").val() ? "top=" + so("input[name='T']").val() + "," : "";
            if (op_tool == "" && op_loc == "" && op_stat == "" && op_menu == "" && op_scroll == "" && op_resize == "" && op_width == "" && op_height == "" && op_L == "" && op_T == "") {
                tempopenstyle = "";
            } else {
                tempopenstyle = op_width + op_height + op_L + op_T + op_tool + op_loc + op_stat + op_menu + op_scroll + op_resize;
                tempopenstyle = tempopenstyle.substring(0, tempopenstyle.length - 1);
                tempopenstyle = tempopenstyle;
            }
            if (istest) {
                if (address == "http://" || !address) { so("#errorinfo").text("请输入URL！").show(); return; }
                window.open(address, op_selfopen, tempopenstyle);
                return;
            }
            so("#errorinfo").text("").hide();
            return "window.open('" + address + "','" + op_selfopen + "'" + (tempopenstyle ? ",'" + tempopenstyle + "'" : "") + ")";
        },
        init: function (path) {
            tools.checkbox();
            var _this = this;
            so("#gen").click(function () {
                so('#showcode').val(_this.openAttr()).removeClass("col-gray"); ;
            });
            so("#test").click(function () {
                _this.openAttr(true);
            });
            so("#clear").click(function () {
                so("#showcode").val("");
            });
            tools.clipfn();
        }
    },
    regex: {
        regCommon: {
            chines: "[\\u4e00-\\u9fa5]", //中文
            doubleByte: "[^\\x00-\\xff]", //双字节（包含中文）
            nullLine: "\\s", //空白行
            email: "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}", //邮箱
            url: "^((https|http|ftp|rtsp|mms)?:\\/\\/)[^\\s]+", //网址（只验证是否包含某些前缀）
            phone: "0?(13|14|15|18)[0-9]{9}", //国内手机
            tel: "[0-9-()（）]{7,18}", //国内电话
            nFloat: "-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*)", //负浮点数
            interger: "-?[1-9]\\d*", //整型
            pFloat: "[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*", //正浮点数
            qq: "[1-9]([0-9]{5,11})", //QQ号
            postal: "\\d{6}", //国内邮政编码
            ip4: "(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)", //ip地址
            cardId: "\\d{17}[\\d|x]|\\d{15}", //身份证号码
            date: "\\d{4}(\\-|\\/|.)\\d{1,2}\\1\\d{1,2}", //日期
            pInterger: "[1-9]\\d*", //正整数
            nInterger: "-[1-9]\\d*", //负整数
            userName: "[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+"//用户名
        },
        checkReg: function () {
            var f = RegexPal.fields,
    o = f.options;
            onresize = function (e) {
                var isIE1 = !!window.ActiveXObject;
                var isIE61 = isIE1 && !window.XMLHttpRequest;
                if (isIE61) f.input.field.style.height = Math.max((window.innerHeight || document.documentElement.clientHeight) - 310, 268) + "px";
                else f.input.field.style.height = Math.max((window.innerHeight || document.documentElement.clientHeight) - 610, 268) + "px";
                f.search.setDimensions();
                f.input.setDimensions()
            };
            onresize();
            RegexPal.highlightSearchSyntax();
            RegexPal.highlightMatches();
            for (var flag in o.flags) {
                o.flags[flag].onclick = RegexPal.highlightMatches
            };
            o.highlightSyntax.onclick = RegexPal.highlightSearchSyntax;
            o.highlightMatches.onclick = RegexPal.highlightMatches;
            o.invertMatches.onclick = RegexPal.highlightMatches;
            function makeResetter(field) {
                return function () {
                    field.clearBg();
                    field.textbox.value = "";
                    field.textbox.onfocus = null
                }
            };
        },
        itemClick: function (_this, flage) {
            so("#regCommon a").click(function () {
                var t = so(this).attr("t");
                var reg = new RegExp(_this.regCommon[t]);
                so("#searchText").val(_this.regCommon[t]).siblings(".CentHid").hide();
                var val = so("#inputText").val();
                if (flage) _this.checkReg();
            });
        },
        init: function () {
            tools.checkbox("reg");
            var _this = this;
            _this.itemClick(_this, true);
            _this.checkReg(_this);
            so("#repbtn").click(function () {
                var reptext = so("#reptext").val();
                var inputText = so("#inputText");
                var reg = so("#searchText").val();
                inputText.val(inputText.val().replace(new RegExp(reg, "gi"), reptext));
                _this.checkReg();
            });
            so("#inputText").keyup(function () { so("#inputText").height(so("#inputBg").height()); });
        },
        languageCode: {
            js: "var pattern = /{0}/,\n\tstr = '{1}';\nconsole.log(pattern.test(str));",
            php: "sostr = '{1}';\nsoisMatched = preg_match('/{0}/', sostr, somatches);\nvar_dump(soisMatched, somatches);",
            go: "package main\n\nimport (\n\t\"fmt\"\n\t\"regexp\"\n)\n\nfunc main() {\n\tstr := \"{1}\"\n\tmatched, err := regexp.MatchString(\"{0}\", str)\n\tfmt.Println(matched, err)\n}",
            rb: "pattern = /{0}/\nstr = '{1}'\np pattern.match(str)",
            py: "import re\npattern = re.compile(ur'{0}')\nstr = u'{1}'\nprint(pattern.search(str))",
            java: "import java.util.regex.Matcher;\nimport java.util.regex.Pattern;\n\npublic class RegexMatches {\n\t\n\tpublic static void main(String args[]) {\n\t\tString str = \"{1}\";\n\t\tString pattern = \"{0}\";\n\n\t\tPattern r = Pattern.compile(pattern);\n\t\tMatcher m = r.matcher(str);\n\t\tSystem.out.println(m.matches());\n\t}\n\n}"
        },
        initgenerate: function () {
            var _this = this;
            _this.itemClick(_this);
            so("#test").click(function () {
                var pattern = so("#searchText").val();
                if (!pattern) return;
                var textarealist = so("#languagelist textarea");
                for (var i = 0; i < textarealist.length; i++) {
                    var textarea = so(textarealist[i]);
                    var language = textarea.attr("id");
                    if (language == 'go' || language == 'java') pattern.replace(/\\/gi, "\\");
                    textarea.val(_this.languageCode[language].format(pattern, ""));
                }
                so("#languagelist").removeClass("autohide");
            });


        }
    },
    transcoding: {
        fullhalf: {
            ///全角空格为12288，半角空格为32
            ///其他字符半角(33-126)与全角(65281-65374)的对应关系是：均相差65248
            //半角转换为全角函数
            ToFull: function () {
                var txtstring = so('#content').val();
                if (txtstring == '') {
                    layer.msg("请输入要转换的字符串");
                    return;
                }
                var tmp = "";
                for (var i = 0; i < txtstring.length; i++) {
                    if (txtstring.charCodeAt(i) == 32) {
                        tmp = tmp + String.fromCharCode(12288);
                    }
                    else if (txtstring.charCodeAt(i) < 127) {
                        tmp = tmp + String.fromCharCode(txtstring.charCodeAt(i) + 65248);
                    }
                    else
                        tmp = tmp + String.fromCharCode(txtstring.charCodeAt(i));
                }
                so('#result').val(tmp);
            },
            //全角转换为半角函数
            ToHalf: function () {
                var str = so('#content').val();
                if (str == '') {
                    layer.msg('请输入要转换的字符');
                    return;
                }
                var tmp = "";
                for (var i = 0; i < str.length; i++) {
                    if (str.charCodeAt(i) > 65280 && str.charCodeAt(i) < 65375) {
                        tmp += String.fromCharCode(str.charCodeAt(i) - 65248);
                    }
                    else if (str.charCodeAt(i) == 12288) {
                        tmp += String.fromCharCode(32);
                    }
                    else {
                        tmp += String.fromCharCode(str.charCodeAt(i));
                    }
                }
                so('#result').val(tmp);

            },
            init: function () {
                var _this = this;
                so("#tohalf").click(function () {
                    _this.ToHalf();
                    if (so("#result").val()) so("#result").siblings().hide();
                });
                so("#tofull").click(function () {
                    _this.ToFull();
                    if (so("#result").val()) so("#result").siblings().hide();
                });
                so("#clear").click(function () {
                    so("textarea").val("");
                });
                so("textarea").keydown(function () {
                    so(this).removeClass("col-gray");
                });
            }
        },
        wordspell: function () {
            var forms = document.forms[0];
            forms.content.onclick = function () {
                so(this).removeClass("col-gray");
            };
            forms.trans.onclick = function () {
                var str = toPinyin({ str: forms.content.value, dz: forms.hidesel.value, sym: forms.sym.checked, sym1: forms.sym1.checked, sym2: forms.sym2.checked });
                forms.result.value = str;
                if (so("textarea[name=\"result\"]").val()) so("textarea[name=\"result\"]").siblings().hide();
                so(forms.result).removeClass("col-gray");
            }
            var clear = getid("clear");
            clear.onclick = function () {
                forms.result.value = '';
                forms.content.value = '';
            }
        },
        gbbig: function () {
            var forms = document.forms[0];
            forms.tosim.onclick = function () {
                convert(0); so(forms.result).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.totra.onclick = function () {
                convert(1); so(forms.result).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.toother.onclick = function () {
                convert(2); so(forms.result).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.clear.onclick = function () {
                forms.result.value = '';
                forms.textarea.value = '';
            }
        },
        pinyindictionary: function (path) {
            var forms = getid('fm');
            forms.content.onclick = function () {
                so(this).removeClass("col-gray");
            };
            forms.seach.onclick = function () {
                trans(); so(forms.result).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.clear.onclick = function () {
                forms.result.value = '';
                forms.content.value = '';
            }
            tools.clipfn();
        },
        lowtoupp: function (path) {
            tools.clipfn( "clip1");
            var forms = getid('fm');
            //forms.num.onkeydown = function (e) { entNumber(e); so(forms.trans).removeClass("col-gray"); so(forms.num).removeClass("col-gray"); }
            so("#num").keydown(function (e) {
                entNumber(e);
                so(forms.trans).removeClass("col-gray");
                so(forms.num).removeClass("col-gray");
            });
            forms.toupp.onclick = function () {
                englishConvert('touppercase'); so(forms.content).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.tolow.onclick = function () {
                englishConvert('tolowercase'); so(forms.content).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.firstupp.onclick = function () {
                englishConvert('touppercaseF'); so(forms.content).removeClass("col-gray");
                if (so("#result").val()) so("#result").siblings().hide();
            }
            forms.clear1.onclick = function () { tools.clear([getid('content')]); }
            if( forms &&  forms.content)
            forms.content.onclick = function () { so(this).removeClass("col-gray"); }
        },
        lowupRMB: function (path) {
            tools.clipfn( "clip");
            var forms = getid('fm');
            //forms.num.onkeydown = function (e) { entNumber(e); so(forms.trans).removeClass("col-gray"); so(forms.num).removeClass("col-gray"); }
            so("#num").keydown(function (e) {
                entNumber(e);
                so(forms.trans).removeClass("col-gray");
                so(forms.num).removeClass("col-gray");
            });
            forms.seach.onclick = function () {
                TransConvert();
                if (so("#trans").val()) so("#trans").siblings().hide();
            }
            forms.clear.onclick = function () { tools.clear([getid('trans'), getid('num')]); }
            if( forms &&  forms.content)
            forms.content.onclick = function () { so(this).removeClass("col-gray"); }
        },
        qrcode: {
            loadSWF: function () {
                var swfu = new SWFUpload({
                    upload_url: "/ajaxseo.aspx?t=pload",
                    file_size_limit: "100 KB",
                    file_types: "*.jpg;*.gif;*.png;*.jpe;*.jpeg",
                    file_upload_limit: "50",
                    file_queue_limit: 1,
                    file_dialog_start_handler: fileDialogStart,
                    file_queued_handler: fileQueued,
                    file_queue_error_handler: fileQueueError,
                    file_dialog_complete_handler: fileDialogComplete,
                    upload_progress_handler: uploadProgress,
                    upload_error_handler: uploadError,
                    upload_success_handler: uploadSuccess,
                    upload_complete_handler: uploadComplete,
                    //button_image_url: "/template/default/images/public/tool-pus.png",
                    button_width: 213,
                    button_height: 80,
                    button_placeholder_id: "buttonPlaceHolder",
                    //button_text: "选择二维码图片",
                    button_text_style: "",
                    /*button_text_top_padding: 3,
                    button_text_left_padding: 12,*/
                    button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
                    button_cursor: SWFUpload.CURSOR.HAND,
                    flash_url: "/template/default/js/swfup/swfupload.swf",
                    custom_settings: {
                        progressTarget: "fsUploadProgress",
                        cancelButtonId: "btnCancel"
                    },
                    debug: false
                });
            },
            init: function () {
                var _this = this;
                so("#txtarea").focus(function () {
                    var v = so(this).val();
                    so(this).removeClass("col-gray");
                    if (v == '200字符以内') so(this).val('')
                }).blur(function () {
                    var v = so(this).val();
                    if (v == '') {
                        so(this).val('200字符以内');
                        so(this).addClass("col-gray");
                    }
                }).keyup(function () {
                    var v = so(this).val();
                    var length = so.trim(v).length;
                    if (length > 199) {
                        so(this).val(v.substr(0, 200));
                        so("#fontnum").html('200');
                        return
                    };
                    so("#fontnum").html(length)
                });
                _this.loadSWF();
                so("#generate").click(function () {
                    if (!so("#decodingbox").hasClass("autohide")) {
                        so("#decodingbox").addClass("autohide");
                        so("#generatebox").removeClass("autohide");
                        if (so("#imgdiv").length) so("#imgdiv").removeClass("autohide");
                        so("#fsUploadProgress").html('');
                        so(this).addClass("currtBtn").removeClass("LinkBrn");
                        so("#decoding").addClass("LinkBrn").removeClass("currtBtn");
                    } else {
                        so("form").submit();
                    }
                });
                so("#decoding").click(function () {
                    so("#generatebox").addClass("autohide");
                    so("#decodingbox").removeClass("autohide");
                    if (so("#imgdiv").length) so("#imgdiv").addClass("autohide");
                    so(this).addClass("currtBtn").removeClass("LinkBrn");
                    so("#generate").addClass("LinkBrn").removeClass("currtBtn");
                });
            }
        },
        utf_8: function () {
            so("#conv").click(function () {
                so("#result").val(so("#content").val().replace(/[^\u0000-\u00FF]/g, function (so0) { return escape(so0).replace(/(%u)(\w{4})/gi, "&#xso2;") }));
                if (so("#result").val()) so("#result").siblings().hide();
            });
            so("#res").click(function () {
                so("#content").val(unescape(so("#result").val().replace(/&#x/g, '%u').replace(/;/g, '')));
                if (so("#content").val()) so("#content").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("content"), getid("result")]);
                so(".CentHid").show();
            });
        }
    },
    other: {
        wordcounter: {
            wordStats: {
                unsortedWords: null,
                topWords: null,
                topWeights: null,
                _computed: false,
                addWords: function (str, weight) {
                    if (str && str.length > 1) {
                        var keywords = so("#keywordstxt").val().split(',');
                        var regstr = "";
                        //keywords = this.bubbleSort(keywords);
                        keywords = keywords.trimArray();
                        for (var i = 0; i < keywords.length; i++) {
                            var kw = keywords[i].replace(/(\\)/g, "\\").replace(/(\^)/g, "\\^").replace(/(\so)/g, "\\so").replace(/(\.)/g, "\\.").replace(/(\*)/g, "\\*").replace(/(\?)/g, "\\?").replace(/(\+)/g, "\\+");
                            if (kw) {
                                regstr += "(" + kw + ")";
                                if (i < keywords.length - 1)
                                    regstr += "|";
                            }
                        }
                        if (regstr)
                            try {
                                this.getWords(str.toLowerCase(), new RegExp(regstr, "gi"), weight);
                            } catch (e) {

                            }
                    }
                },
                bubbleSort: function (arr) {
                    for (var i = 0; i < arr.length; i++) {
                        for (var j = i; j < arr.length; j++) {
                            if (arr[i].length < arr[j].length) {
                                var temp = arr[i];
                                arr[i] = arr[j];
                                arr[j] = temp;
                            }
                        }
                    }
                    return arr;
                },
                addWordsFromTextNodes: function (node, weight) {
                    var nodes = node.childNodes;
                    for (var i = 0, j = nodes.length; i < j; i++) {
                        if (nodes[i].nodeType == 3)
                            this.addWords(nodes[i].nodeValue, weight);
                    }
                },
                getWords: function (words, reg, weight) {
                    this.unsortedWords = new Array();
                    var arr = words.match(reg);
                    if (arr == null) return;
                    for (var i = 0; i < arr.length; i++) {
                        if (arr[i] != ',') {
                            var word = arr[i].toLowerCase();
                            if (this.unsortedWords[word])
                                this.unsortedWords[word] += weight;
                            else this.unsortedWords[word] = weight;
                        }
                    }
                },
                computeWords: function (elem) {
                    if (!elem) elem = window.document;
                    this.unsortedWords = new Array();
                    if (elem.is("textarea")) {
                        this.addWords(elem.val(), 1);
                        return;
                    }
                    this.addWords(so('title', elem).text(), 20); wordstats = this; so('h1', elem).each(function () {
                        wordstats.addWordsFromTextNodes(so(this).get(0), 15);
                    }); so('h2', elem).each(function () {
                        wordstats.addWordsFromTextNodes(so(this).get(0), 10);
                    }); so('h3, h4, h5, h6', elem).each(function () {
                        wordstats.addWordsFromTextNodes(so(this).get(0), 5);
                    }); so('strong, b, em, i', elem).each(function () {
                        wordstats.addWordsFromTextNodes(so(this).get(0), 3);
                    }); so('p, div, th, td, li, a, span', elem).each(function () {
                        wordstats.addWordsFromTextNodes(so(this).get(0), 2);
                    }); so('img', elem).each(function () {
                        wordstats.addWords(so(this).attr('alt'), 1);
                        wordstats.addWords(so(this).attr('title'), 1);
                    }); this._computed = true;
                },
                computeTopWords: function (count, elem) {
                    if (!this._computed)
                        this.computeWords(elem);
                    this.topWords = new Array();
                    this.topWeights = new Array();
                    this.topWeights.push(0);
                    for (word in this.unsortedWords) {
                        for (var i = 0; i < count; i++) {
                            if (this.unsortedWords[word] > this.topWeights[i]) {
                                this.topWeights.splice(i, 0, this.unsortedWords[word]);
                                this.topWords.splice(i, 0, word);
                                break;
                            }
                        }
                    }
                }, clear: function () {
                    this.unsortedWords = this.sortedWords = this.topWords = this.topWeights = null;
                    this._computed = false;
                }
            },
            displayCount: function (count) {
                if (count['words'] == 1) {
                    wordOrWords = " Word";
                } else {
                    wordOrWords = " Words";
                }
                if (count['chars'] == 1) {
                    charOrChars = " Character";
                } else {
                    charOrChars = " Characters";
                }
                str = '<strong class="col-blue02 pr10">{5}</strong><span class="pr40">Total</span><strong class="col-blue02 pr10">{0}</strong><span class="pr40">{1}</span><strong class="col-blue02 pr10">{2}</strong><span class="pr40">{3}</span><strong class="col-blue02 pr10">{4}</strong><span>Chinese</span>';
                so(".counted").html(str.format(count['words'], wordOrWords, count['chars'], charOrChars, count['chinese'], so("#box").val().length));
            },
            displayTextBoxes: function (count) {
                so("#word_count").text(count['words']);
                so("#character_count").text(count['chars']);
                so("#character_count_no_spaces").text(count['chars_no_spaces']);
                so("#chinese_count_no_spaces").text(count['chinese']);
                so("#sentence_count").text(count['sentences']);
                so("#paragraph_count").text(count['paragraphs']);
                so("#avg_sentence_words").text(count['avg_sentence_words']);
                so("#avg_sentence_chars").text(count['avg_sentence_chars']);
            },
            countWords: function (text, language) {
                if (language == 2) {
                    var words = text.match(/\S+/g);
                } else {
                    var words = text.replace(/[,;.!:—\/]/g, ' ').replace(/[^a-zA-Z\d\s&:]/g, '').match(/\S+/g);
                }
                return (words !== null ? words.length : 0);
            },
            countChinese: function (text) {
                iTotal = 0;
                for (i = 0; i < text.length; i++) {
                    var c = text.charAt(i);
                    if (c.match(/[\u4e00-\u9fa5]/)) {
                        iTotal++;
                    }
                }
                return iTotal;
            },
            wordCountInternational: function () {
                var _this = tools.other.wordcounter;
                var box = so("#box");
                var count = [];
                count['words'] = _this.countWords(box.val(), 0);
                chars = box.val().match(/(?:[^\r\n]|\r(?!\n))/g);
                count['chars'] = (chars !== null ? chars.length : 0);
                count['chinese'] = _this.countChinese(box.val());
                chars_no_spaces = box.val().match(/\S/g);
                count['chars_no_spaces'] = (chars_no_spaces !== null ? chars_no_spaces.length : 0);
                sentences = box.val().match(/[^.!?\s][^.!?]*(?:[.!?](?!['"]?\s|so)[^.!?]*)*[.!?]?['"]?(?=\s|so)/g);
                count['sentences'] = (sentences !== null ? sentences.length : 0);
                paragraphs = box.val().match(/(\n\n?|^).*?(?=\n\n?|so)/g);
                count['paragraphs'] = (box.val() != '' ? (paragraphs !== null ? paragraphs.length : 0) : 0);
                count['avg_sentence_words'] = (box.val() != '' ? Math.ceil(count['words'] / count['sentences']) : 0);
                count['avg_sentence_chars'] = (box.val() != '' ? Math.ceil(count['chars'] / count['sentences']) : 0);
                _this.displayCount(count);
                _this.displayTextBoxes(count);
            },
            keywordDensity: function () {
                var max = 1000;
                var stats = tools.other.wordcounter.wordStats;
                var _this = tools.other.wordcounter;
                stats.computeTopWords(max, so('#box'));
                var density_list = so("#density_list");
                density_list.empty();
                var text = '';
                var percentage;
                so("#keywords li:first").nextAll().remove();
                for (i = 0; i < stats.topWords.length; i++) {
                    var percentage = (100 * (stats.topWeights[i] * stats.topWords[i].length / so("#box").val().length)).toFixed(0);
                    var str = '<div class="w32-0{3}">{0}</div><div class="w15-0 col-blue02">{1}({2}%)</div>';
                    if (i % 2 == 0) {
                        str = '<li class="DelListCent DelRLlist">' + str + '</li>';
                        so("#keywords").append(str.format(stats.topWords[i].html2Escape(), stats.topWeights[i], percentage, ''));
                    } else {
                        so("#keywords li:last").append(str.format(stats.topWords[i].html2Escape(), stats.topWeights[i], percentage, ' bor-l1s'));
                    }
                }
                stats.clear();
            },
            init: function () {
                var _this = this;
                so("#box").bind("keypress keyup keydown blur focus change load", _this.wordCountInternational);
                so("#box").bind("keypress keyup keydown blur focus change load", _this.keywordDensity);
                so("#clear").click(function () {
                    tools.clear([getid('box')]);
                });
                so("#keywordstxt").bind("keypress keyup keydown blur focus change load", _this.keywordDensity);
                so("#clkshowbox").click(function () {
                    var showbox = so("#showbox");
                    if (showbox.hasClass("autohide"))
                        showbox.removeClass("autohide");
                    else
                        showbox.addClass("autohide");
                });
            }
        },
        httptest: function () {
            var pramsHtml = '<div class="portTestWrap clearfix pt20">';
            pramsHtml += '<div class="Porname"><input type="text" class="TitInput _WrapHid w240" name="paramsname" value="{0}" /><b class="search-hint CentHid mt5" style="display:{2}">参数名</b></div>';
            pramsHtml += '<div class="Porname ml10"><input type="text" class="TitInput _WrapHid w360" name="paramsval" value="{1}" /><b class="search-hint CentHid mt5" style="display:{2}">值</b></div>';
            pramsHtml += '<div class="fl pl10"><input type="button" value="删除" class="TitInBtn w70 removeparams" /></div></div>';
            so("#addparams").click(function () {
                if (so("#isRAW").prop("checked")) {
                    so(".portTestWrap").remove();
                    so("#RAW").removeClass("autohide");
                } else {
                    so("#RAW").addClass("autohide");
                    so("#totest").after(pramsHtml.format("", "", "block"));
                    so("input.removeparams").click(function () {
                        so(this).parent().remove();
                    });
                    so("._WrapHid").each(function () {
                        checkFocus({
                            obj_input: so(this),
                            msgBox: so(this).siblings(".CentHid"),
                            Tip: "CentHid"
                        });
                        clearInput({
                            obj_input: so(this),
                            msgBox: so(this).siblings("._CentHid"),
                            Tip: "_CentHid"
                        });
                    });
                }
                so("input.removeparams").off("click");
                so("input.removeparams").click(function () {
                    so(this).parents(".portTestWrap").remove();
                });
            });
            so("#OK").click(function () {
                so("#hideRAW").val(so("#RAWval").val());
                so("#RAW").addClass("autohide");
                so(".portTestWrap").remove();
                var arr = so("#RAWval").val().queryString();
                for (var i = 0; i < arr.length; i++) {
                    so("#totest").after(pramsHtml.format(arr[i].k, arr[i].v, "none"));
                }
            });
        }
    },
    encryptDecode: {
        base64: function () {
            so("#conv").click(function () {
                var str = CryptoJS.enc.Utf8.parse(so("#content").val());
                var base64 = CryptoJS.enc.Base64.stringify(str);
                so("#result").val(base64);
                if (so("#result").val()) so("#result").siblings().hide();
            });
            so("#res").click(function () {
                var words = CryptoJS.enc.Base64.parse(so("#result").val());
                try {
                    so("#content").val(words.toString(CryptoJS.enc.Utf8));
                } catch (e) {
                    so("#content").val("格式有误");
                }
                if (so("#content").val()) so("#content").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("content"), getid("result")]);
                so(".CentHid").show();
            });
        },
        unicode: function () {
            //ASCII 转换 Unicode
            so("#asicctounicode").click(function () {
                if (document.getElementById('content').value == '') {
                    layer.msg('文本框中没有代码！');
                    return;
                }
                document.getElementById('result').value = '';
                for (var i = 0; i < document.getElementById('content').value.length; i++)
                    result.value += '&#' + document.getElementById('content').value.charCodeAt(i) + ';';
                document.getElementById('content').focus();
                if (so("#result").val()) so("#result").siblings().hide();
            });
            //Unicode 转换 ASCII
            so("#unicodetoasicc").click(function () {
                var code = document.getElementById('content').value.match(/&#(\d+);/g);
                if (code == null) {
                    layer.msg('文本框中没有合法的Unicode代码！'); document.getElementById('content').focus();
                    return;
                }
                document.getElementById('result').value = '';
                for (var i = 0; i < code.length; i++)
                    document.getElementById('result').value += String.fromCharCode(code[i].replace(/[&#;]/g, ''));
                document.getElementById('content').focus();
                if (so("#result").val()) so("#result").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("content"), getid("result")]);
                so(".CentHid").show();
            });
        },
        scriptEncode: function () {
            so("#jsencode").click(function () {
                var v = getid('ipt').value;
                if (!v) return;
                var es = escape(v);
                getid('result').value = "document.write(unescape('{0}'));".format(es);
                if (so("#result").val()) so("#result").siblings().hide();
            });
            so("#jsdecode").click(function () {
                var v = getid('result').value;
                var regex = /unescape\('([a-z%0-9].*)'\)/i;
                if (v.match(regex)) {
                    getid('ipt').value = unescape(RegExp.so1);
                }
                if (so("#ipt").val()) so("#ipt").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("ipt"), getid("result")]);
                so(".CentHid").show();
            });
        },
        textEncrypt: function () {
            so("#encrypt").click(function () {
                var v = so('input[name="encrypt_type"]').val();
                if (!v) return;
                switch (v) {
                    case "aes":
                        so("#result").val(CryptoJS.AES.encrypt(so("#content").val(), so("#pwd").val()));
                        break;
                    case "des":
                        so("#result").val(CryptoJS.DES.encrypt(so("#content").val(), so("#pwd").val()));
                        break;
                    case "rabbit":
                        so("#result").val(CryptoJS.Rabbit.encrypt(so("#content").val(), so("#pwd").val()));
                        break;
                    case "rc4":
                        so("#result").val(CryptoJS.RC4.encrypt(so("#content").val(), so("#pwd").val()));
                        break;
                    case "tripledes":
                        so("#result").val(CryptoJS.TripleDES.encrypt(so("#content").val(), so("#pwd").val()));
                        break;
                }
                if (so("#result").val()) so("#result").siblings().hide();
            });
            so("#decrypt").click(function () {
                switch (so('input[name="encrypt_type"]').val()) {
                    case "aes":
                        so("#content").val(CryptoJS.AES.decrypt(so("#result").val(), so("#pwd").val()).toString(CryptoJS.enc.Utf8));
                        break;
                    case "des":
                        so("#content").val(CryptoJS.DES.decrypt(so("#result").val(), so("#pwd").val()).toString(CryptoJS.enc.Utf8));
                        break;
                    case "rabbit":
                        so("#content").val(CryptoJS.Rabbit.decrypt(so("#result").val(), so("#pwd").val()).toString(CryptoJS.enc.Utf8));
                        break;
                    case "rc4":
                        so("#content").val(CryptoJS.RC4.decrypt(so("#result").val(), so("#pwd").val()).toString(CryptoJS.enc.Utf8));
                        break;
                    case "tripledes":
                        so("#content").val(CryptoJS.TripleDES.decrypt(so("#result").val(), so("#pwd").val()).toString(CryptoJS.enc.Utf8));
                        break;
                }
                if (so("#content").val()) so("#content").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("content"), getid("result")]);
                so(".CentHid").show();
            });
        },
        nativeAscii: function () {
            so("#nativeConvertAscii").click(function () {
                var nativecode = getid("nativecode").value.split("");
                var ascii = "";
                for (var i = 0; i < nativecode.length; i++) {
                    var code = Number(nativecode[i].charCodeAt(0));
                    if (!document.getElementById("ignoreLetter").checked || code > 127) {
                        var charAscii = code.toString(16);
                        charAscii = new String("0000").substring(charAscii.length, 4) + charAscii;
                        ascii += "\\u" + charAscii;
                    } else {
                        ascii += nativecode[i];
                    }
                }
                getid("asciicode").value = ascii;
                if (so("#asciicode").val()) so("#asciicode").siblings().hide();
            });

            so("#asciiConvertNative").click(function () {
                var asciicode = getid("asciicode").value.split("\\u");
                var nativeValue = asciicode[0];
                for (var i = 1; i < asciicode.length; i++) {
                    var code = asciicode[i];
                    nativeValue += String.fromCharCode(parseInt("0x" + code.substring(0, 4)));
                    if (code.length > 4) {
                        nativeValue += code.substring(4, code.length);
                    }
                }
                getid("nativecode").value = nativeValue;
                if (so("#nativecode").val()) so("#nativecode").siblings().hide();
            });
            so("#clear").click(function () {
                tools.clear([getid("nativecode"), getid("asciicode")]);
                so(".CentHid").show();
            });
        },
        unixtime: {
            currentTimeActive: 1,
            unixTimer: 0,
            unix2human: function () {
                var v = document.unix.timestamp.value;
                alert(v)
                if (/^\d{10}$/.test(v)) {
                    v = v * 1000;
                } else if (/^\d{13}$/.test(v)) {
                    v = v * 1;
                } else {
                    layer.msg("时间戳格式不正确");
                    return;
                }
                var dateObj = new Date(v);
                if (dateObj.format('yyyy') == "NaN") { /*layer.msg("时间戳格式不正确");*/return; }
                var UnixTimeToDate = dateObj.getFullYear() + '/' + (dateObj.getMonth() + 1) + '/' + dateObj.getDate() + ' ' + dateObj.getHours() + ':' + dateObj.getMinutes() + ':' + dateObj.getSeconds();
                document.unix.unixtoutc8result.value = UnixTimeToDate;
            },
            human2unix: function () {
                var _this = ted.unixtime;
                var form = document.unix;
                var year = form.year.value; if (!year) { /*layer.msg("时间格式不正确");*/return; }
                var month = _this.stripLeadingZeroes(form.month.value);
                var day = _this.stripLeadingZeroes(form.day.value);
                var hour = _this.stripLeadingZeroes(form.hour.value);
                var minute = _this.stripLeadingZeroes(form.minute.value);
                var second = _this.stripLeadingZeroes(form.second.value);
                year = year ? year : new Date().getFullYear(), month = month ? month - 1 : 0, day = day ? day : 1, hour = hour ? hour : (year == 1970 ? 8 : 0), minute = minute ? minute : 0, second = second ? second : 0;
                var humanDate = new Date(Date.UTC(year, month, day, hour, minute, second));
                if (humanDate.format('yyyy') == "NaN") { /*layer.msg("时间格式不正确");*/return; }
                document.unix.utc8tounixresult.value = (humanDate.getTime() / 1000 - 8 * 60 * 60);
            },
            human2unix1: function () {
                var _this = ted.unixtime;
                var form = document.unix;
                var datetime = form.utc8.value;
                if (!datetime) return;
                var ndate = new Date(datetime);
                var year = ndate.getFullYear();
                var month = ndate.getMonth();
                var day = ndate.getDate();
                var hour = ndate.getHours();
                var minute = ndate.getMinutes();
                var second = ndate.getSeconds();
                var humanDate = new Date(Date.UTC(year, month, day, hour, minute, second));
                if (humanDate.format('yyyy') == "NaN") { /*layer.msg("时间格式不正确");*/return; }
                form.unixtoutc8result1.value = (humanDate.getTime() / 1000 - 8 * 60 * 60);
            },
            stripLeadingZeroes: function (input) {
                if ((input.length > 1) && (input.substr(0, 1) == "0")) {
                    return input.substr(1);
                } else {
                    return input;
                }
            },
            currentTime: function () {
                var _this = ted.unixtime;
                var timeNow = new Date();
                document.getElementById("currentunixtime").innerHTML = Math.round(timeNow.getTime() / 1000);
                if (_this.currentTimeActive) {
                    this.unixTimer = setTimeout(function () { _this.currentTime() }, 1000);
                }
            },
            nowDate: function () {
                var form = document.unix;
                var timeNow = new Date();
                form.timestamp.value = Math.round(timeNow.getTime() / 1000);
                form.year.value = timeNow.getFullYear();
                //                form.month.value = timeNow.getMonth() + 1;
                //                form.day.value = timeNow.getDate();
                //                form.hour.value = timeNow.getHours();
                //                form.minute.value = timeNow.getMinutes();
                //                form.second.value = timeNow.getSeconds();
            },
            init: function () {
                var _this = this;
                _this.nowDate();
                _this.currentTime();
                so("#start").click(function () {
                    _this.currentTimeActive = 1;
                    _this.currentTime();
                });
                so("#stop").click(function () {
                    _this.currentTimeActive = 0;
                    clearTimeout(_this.unixTimer);
                });
                so("#refresh").click(_this.currentTime);
                so("#unixtoutc8").click(_this.unix2human);
                so("#utc8tounix").click(_this.human2unix);
                so("#utc8tounix1").click(_this.human2unix1);
                //so("form input").keydown(function (e) { entNumber(e, true); });
            }
        },
        hash: {
            setHash: function (type, val, pwd) {
                switch (type) {
                    case "sha1":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.SHA1(val));
                        break;
                    case "sha224":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.SHA224(val));
                        break;
                    case "sha256":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.SHA256(val));
                        break;
                    case "sha384":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.SHA384(val));
                        break;
                    case "sha512":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.SHA512(val));
                        break;
                    case "md5":
                        so("#p_div").addClass("autohide")
                        so("#result").val(CryptoJS.MD5(val));
                        break;
                    case "hmacsha1":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacSHA1(val, pwd));
                        break;
                    case "hmacsha224":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacSHA224(val, pwd));
                        break;
                    case "hmacsha256":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacSHA256(val, pwd));
                        break;
                    case "hmacsha384":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacSHA384(val, pwd));
                        break;
                    case "hmacsha512":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacSHA512(val, pwd));
                        break;
                    case "hmacmd5":
                        so("#p_div").removeClass("autohide");
                        so("#result").val(CryptoJS.HmacMD5(val, pwd));
                        break;
                }
            },
            init: function () {
                var _this = this;
                so("#btnlist .GLOkBtn").click(function () {
                    var val = so("#content").val();
                    var pwd = so("#pwd").val();
                    if (val) {
                        _this.setHash(so(this).attr("t"), val, pwd);
                        if (so("#result").val()) so("#result").siblings().hide();
                    }
                });
                so("#clear").click(function () { tools.clear([getid("result"), getid("content")]) });
            }
        }
    },
    htmlcssjs: {
        htmljs: function () {
            var oresul = getid("oresult");
            var osource = getid("osource");
            oresul.onfocus = oresul.onkeyup = function () {
                getid('re').value = getid('oresult').value.replace(/document.writeln\("/g, "").replace(/"\);/g, "").replace(/\\\"/g, "\"").replace(/\\\'/g, "\'").replace(/\\\//g, "\/").replace(/\\\\/g, "\\");
                if (so("#re").val()) so("#re").siblings().hide();
            }
            osource.onfocus = osource.onkeyup = function () {
                getid('oresult2').value = "document.writeln(\"" + getid('osource').value.replace(/\\/g, "\\\\").replace(/\\/g, "\\/").replace(/\'/g, "\\\'").replace(/\"/g, "\\\"").split('\n').join("\");\ndocument.writeln(\"") + "\");";
                if (so("#oresult2").val()) so("#oresult2").siblings().hide();
            }
        },
        htmlubb: {
            pattern: function (str) {
                //str = str.replace(/(\r\n|\n|\r)/ig, '');
                str = str.replace(/<br[^>]*>/ig, '\n');
                str = str.replace(/<p[^>\/]*\/>/ig, '\n');
                //str = str.replace(/\[code\](.+?)\[\/code\]/ig, function(so1, so2) {return phpcode(so2);});	
                str = str.replace(/\son[\w]{3,16}\s?=\s*([\'\"]).+?\1/ig, '');

                str = str.replace(/<hr[^>]*>/ig, '[hr]');
                str = str.replace(/<(sub|sup|u|strike|b|i|pre)>/ig, '[so1]');
                str = str.replace(/<\/(sub|sup|u|strike|b|i|pre)>/ig, '[/so1]');
                str = str.replace(/<(\/)?strong>/ig, '[so1b]');
                str = str.replace(/<(\/)?em>/ig, '[so1i]');
                str = str.replace(/<(\/)?blockquote([^>]*)>/ig, '[so1blockquote]');

                str = str.replace(/<img[^>]*smile=\"(\d+)\"[^>]*>/ig, '[s:so1]');
                str = str.replace(/<img[^>]*src=[\'\"\s]*([^\s\'\"]+)[^>]*>/ig, '[img]' + 'so1' + '[/img]');
                str = str.replace(/<a[^>]*href=[\'\"\s]*([^\s\'\"]*)[^>]*>(.+?)<\/a>/ig, '[url=so1]' + 'so2' + '[/url]');
                //str = str.replace(/<h([1-6]+)([^>]*)>(.*?)<\/h\1>/ig,function(so1,so2,so3,so4){return h(so3,so4,so2);});

                str = str.replace(/<[^>]*?>/ig, '');
                str = str.replace(/&amp;/ig, '&');
                str = str.replace(/&lt;/ig, '<');
                str = str.replace(/&gt;/ig, '>');

                return str;
            },
            up: function (str) {
                str = str.replace(/</ig, '&lt;');
                str = str.replace(/>/ig, '&gt;');
                str = str.replace(/\n/ig, '<br />');
                str = str.replace(/\[code\](.+?)\[\/code\]/ig, function (so1, so2) { return phpcode(so2); });

                str = str.replace(/\[hr\]/ig, '<hr />');
                str = str.replace(/\[\/(size|color|font|backcolor)\]/ig, '</font>');
                str = str.replace(/\[(sub|sup|u|i|strike|b|blockquote|li)\]/ig, '<so1>');
                str = str.replace(/\[\/(sub|sup|u|i|strike|b|blockquote|li)\]/ig, '</so1>');
                str = str.replace(/\[\/align\]/ig, '</p>');
                str = str.replace(/\[(\/)?h([1-6])\]/ig, '<so1hso2>');

                str = str.replace(/\[align=(left|center|right|justify)\]/ig, '<p align="so1">');
                str = str.replace(/\[size=(\d+?)\]/ig, '<font size="so1">');
                str = str.replace(/\[color=([^\[\<]+?)\]/ig, '<font color="so1">');
                str = str.replace(/\[backcolor=([^\[\<]+?)\]/ig, '<font style="background-color:so1">');
                str = str.replace(/\[font=([^\[\<]+?)\]/ig, '<font face="so1">');
                str = str.replace(/\[list=(a|A|1)\](.+?)\[\/list\]/ig, '<ol type="so1">so2</ol>');
                str = str.replace(/\[(\/)?list\]/ig, '<so1ul>');

                str = str.replace(/\[s:(\d+)\]/ig, function (so1, so2) { return smilepath(so2); });
                str = str.replace(/\[img\]([^\[]*)\[\/img\]/ig, '<img src="so1" border="0" />');
                str = str.replace(/\[url=([^\]]+)\]([^\[]+)\[\/url\]/ig, '<a href="so1">' + 'so2' + '</a>');
                str = str.replace(/\[url\]([^\[]+)\[\/url\]/ig, '<a href="so1">' + 'so1' + '</a>');
                return str;
            },
            htmltoubb: function () {
                str = hcj.htmlubb.pattern(getid("Hsource").value);
                getid("Uresult").value = str;
                if (so("#Uresult").val()) so("#Uresult").siblings().hide();
            },
            ubbtohtml: function () {
                str = hcj.htmlubb.up(getid("Usource").value);
                getid("Hresult").value = str;
                if (so("#Hresult").val()) so("#Hresult").siblings().hide();
            },
            init: function () {
                var Hsource = getid("Hsource");
                var Usource = getid("Usource");
                var _this = this;
                Hsource.onfocus = Hsource.onkeyup = _this.htmltoubb;
                Usource.onfocus = Usource.onkeyup = _this.ubbtohtml;
            }

        },
        htmlCodeCov: {
            //html代码转换javascript代码
            javascript: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = "<script language=\"JavaScript\">\n<!--\n/\/\-->\n</script>";
                }
                else {
                    output = "document.writeln(\"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\");";
                            if (c != input.length - 1) output += "\ndocument.writeln(\"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "/\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\");";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = "<script language=\"JavaScript\">\n<!--\n" + output + "\n/\/\-->\n</script>";
                }

            },

            //html代码转换asp代码
            asp: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = "<%\n%>";
                }
                else {
                    output = "Response.Write \"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\"";
                            if (c != input.length - 1) output += "\nResponse.Write \"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\"\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\"";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = "<%\n" + output + "\n%>";
                }
            },

            //html代码转换php代码
            php: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = "<?php\n?>";
                }
                else {
                    output = "echo \"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\\n\";";
                            if (c != input.length - 1) output += "\necho \"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\\\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\\n\";";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = "<?php\n" + output + "\n?>";
                }
            },

            //html代码转换Jsp代码
            Jsp: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = "<%\n%>";
                }
                else {
                    output = "out.println(\"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\");";
                            if (c != input.length - 1) output += "\nout.println(\"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\\\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\");";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = "<%\n" + output + "\n%>";
                }
            },

            //html代码转换Perl代码
            Perl: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = output;
                }
                else {
                    output = "print \"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\\n\";";
                            if (c != input.length - 1) output += "\nprint \"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\\\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\\n\";";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = output;
                }
            },


            //html代码转换vbnet代码
            vbnet: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = "<%\n%>";
                }
                else {
                    output = "Response.Write (\"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\");";
                            if (c != input.length - 1) output += "\nResponse.Write (\"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\"\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\");";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = "<%\n" + output + "\n%>";
                }
            },

            //html代码转换Sws代码
            Sws: function () {
                var input = document.getElementById("content").value;
                if (input == "") {
                    document.getElementById("result").value = output;
                }
                else {
                    output = "STRING \"";
                    for (var c = 0; c < input.length; c++) {
                        if ((input.charAt(c) == "\n" || input.charAt(c) == "\r")) {
                            output += "\"";
                            if (c != input.length - 1) output += "\nSTRING \"";
                            c++;
                        }
                        else {
                            if (input.charAt(c) == "\"") {
                                output += "\\\"";
                            }
                            else {
                                if (input.charAt(c) == "\\") {
                                    output += "\\\\";
                                }

                                else {
                                    output += input.charAt(c);
                                    if (c == input.length - 1) output += "\"";
                                }
                            }
                        }

                    }
                    document.getElementById("result").value = output;
                }
            },

            //开始转换按钮
            htmlCov: function () {
                var _this = hcj.htmlCodeCov;
                var type = getid("html").value;
                switch (type) {
                    case "javascript": _this.javascript(); break;
                    case "asp": _this.asp(); break;
                    case "php": _this.php(); break;
                    case "jsp": _this.Jsp(); break;
                    case "perl": _this.Perl(); break;
                    case "sws": _this.Sws(); break;
                    case "vbnet": _this.vbnet(); break;
                    default: getid("result").value = '转换错误'; break;
                }
                if (so("#result").val()) so("#result").siblings().hide();
            },
            init: function (path) {
                var _this = this;
                so("#trans").click(_this.htmlCov);
                tools.clipfn( "clip");
                so("._ToolChoese").each(function () {
                    _select({
                        select: so(this).find(".SearChoese"),
                        options: so(this).find("ul.SearChoese-show"),
                        option: so(this).find("ul.SearChoese-show li a"),
                        t: "slide",
                        callback: _this.htmlCov//下拉选项
                    });
                });
                so("#clear").click(function () { tools.clear([getid("content"), getid("resultCode")]) });
            }

        },
        jsCodeConfusion: function (id) {
            so("#confused").click(function () {
            	var code = document.getElementById("JScode").value;
            	if("" == $.trim(code)){
            		return layer.msg(so.msg()),!1;
            	}
                var xx = new CLASS_CONFUSION(code);
                var a = new Date();
                getid(id).value = xx.confusion();
                if (so("#" + id).val()) so("#" +id).siblings().hide();
                layer.msg("加密成功。");
            });
            tools.clipfn( "clip");
            so("#clear").click(function () { tools.clear([getid("JScode"), getid("id")]) });
        },
        jstool: {
            jsonData: { action: '', content: '', enkey: '' },
            jsbeauty: function (_this) {
                var source = so('#txtInitCode').val(),
                output,
                opts = {};

                opts.indent_size = 4;
                opts.indent_char = ' ';
                opts.max_preserve_newlines = 5;
                opts.preserve_newlines = opts.max_preserve_newlines !== "-1";
                opts.keep_array_indentation = false;
                opts.break_chained_methods = false;
                opts.indent_scripts = 'normal';
                opts.brace_style = 'collapse';
                opts.space_before_conditional = true;
                opts.unescape_strings = false;
                opts.jslint_happy = false;
                opts.wrap_line_length = 0;
                opts.space_after_anon_function = true;
                source = _this.unpacker_filter(source, _this);
                output = js_beautify(source, opts);
                so('#txtResultCode').val(output);
                if (so("#txtResultCode").val()) so("#txtResultCode").siblings("b").hide();
            },
            unpacker_filter: function (source) {
                var trailing_comments = '',
                comment = '',
                unpacked = '',
                found = false;

                do {
                    found = false;
                    if (/^\s*\/\*/.test(source)) {
                        found = true;
                        comment = source.substr(0, source.indexOf('*/') + 2);
                        source = source.substr(comment.length).replace(/^\s+/, '');
                        trailing_comments += comment + "\n";
                    } else if (/^\s*\/\//.test(source)) {
                        found = true;
                        comment = source.match(/^\s*\/\/.*/)[0];
                        source = source.substr(comment.length).replace(/^\s+/, '');
                        trailing_comments += comment + "\n";
                    }
                } while (found);

                var unpackers = [P_A_C_K_E_R, Urlencoded, MyObfuscate];
                for (var i = 0; i < unpackers.length; i++) {
                    if (unpackers[i].detect(source)) {
                        unpacked = unpackers[i].unpack(source);
                        if (unpacked != source) {
                            source = this.unpacker_filter(unpacked);
                        }
                    }
                }
                return trailing_comments + source;
            },
            ajaxdata: function (_this) {
                so.ajax({
                    type: 'post',
                    url: 'http://www.sojson.com/iping/encrypt.shtml',//?encrypt=jsformat
                    data: _this.jsonData,
                    beforeSend: function (e) {
                        so("#txtResultCode").val("");
                        so("#loading").removeClass("autohide");
                    },
                    dataType: 'jsonp',
                    success: function (json) {
                        so("#loading").addClass("autohide");
                        if (json.state == 0) {
                        	so.w.console ? console.log(json.msg):"";
                            layer.msg("请求失败，多次出现联系站长反馈。");
                        }
                        else {
                            so("#txtResultCode").val(json.txt);
                            if (so("#txtResultCode").val()) so("#txtResultCode").siblings("b").hide();
                        }
                    }
                });
            },
            init: function () {
                var _this = this,
                _code = $.trim($("#_code").val());
                if(_code == ''){
                	return  layer.msg('\u5B89\u5168\u6A21\u5757\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u5237\u65B0\u91CD\u8BD5\uFF01',so.defn),!1;;
                }
                _this.jsonData.enkey = _code;
                so("#btndiv [ref]").click(function () {
                    _this.jsonData.action = so(this).attr("ref");
                    _this.jsonData.content = so.trim(so("#txtInitCode").val());
                    if (_this.jsonData.content == '') {
                        layer.msg('请输入要转换的内容');
                        return;
                    }
                    console.log(_this.jsonData.action);
                    switch (_this.jsonData.action) {
                        case "beauty": _this.jsbeauty(_this); return;
                        case "filtercomment": _this.ajaxdata(_this); break;
                        case "basiccompress": _this.ajaxdata(_this); break;
                        case "encodecompress": _this.ajaxdata(_this); break;
                        case "decodebeauty": _this.jsbeauty(_this); return;
                    }
                });
                tools.clipfn( "clip");
                so("#clear").click(function () { tools.clear([getid("txtInitCode"), getid("txtResultCode")]) });
            }
        },
        jsFormat: function (path) {
            so("#beautify").click(function () {
                document.getElementById('beautify').disabled = true;
                js_source = document.getElementById('content').value.replace(/^\s+/, '');
                tabsize = document.getElementById('tabsize').value;
                tabchar = ' ';
                if (tabsize == 1) {
                    tabchar = '\t';
                }
                if (js_source && js_source.charAt(0) === '<') {
                    document.getElementById('result').value = style_html(js_source, tabsize, tabchar, 80);
                } else {
                    document.getElementById('result').value = js_beautify(js_source, tabsize, tabchar);
                }
                if (so("#result").val()) so("#result").siblings().hide();
                document.getElementById('beautify').disabled = false;
                return false;
            });
            so("#pack0").click(function (base64) {
                pack_js(0);
            });
            so("#pack1").click(function (base64) {
                pack_js(1);
            });
            tools.clipfn( "clip");
            so("#clear").click(function () { tools.clear([getid("result"), getid("content")]) });
            function pack_js(base64) {
                var input = document.getElementById('content').value;
                var packer = new Packer;
                if (base64) {
                    var output = packer.pack(input, 1, 0);
                } else {
                    var output = packer.pack(input, 0, 0);
                }
                document.getElementById('result').value = output;
                if (so("#result").val()) so("#result").siblings().hide();
            }
        }
    },
    jsonTool: {
        jsontocsharp: {
            init: function (path) {
                var _this = this;

                so(".ToolChoesecj").each(function () {
                    _select({
                        select: so(this).find(".SearChoese"),
                        options: so(this).find("ul.SearChoese-show"),
                        option: so(this).find("ul.SearChoese-show li a"),
                        t: "slide",
                        parents: so(".ToolChoesecj"),
                        callback: function () {
                            if (so("#showtype").val() == 0)
                                so(".javawh").addClass("autohide");
                            else
                                so(".javawh").removeClass("autohide");
                        }
                    });
                });

                tools.clipfn();
                so("#2csharp").click(function () {
                    if (!so("#jsonval").val().trim()) {
                        layer.msg("请填写JSON",so.defn);
                        return false;
                    }
                    try {
                    	layer.load();
                        var v = eval("(" + document.getElementById("jsonval").value + ")");
                        var res = "";
                        if (so("#showtype").val() == 0)
                            res = _this.JSON2CSharp.convert(v);
                        else
                            res = _this.JSON2POJO.convert(v);
                        so("#result").val(res).siblings("b").hide();
                        layer.closeAll();
                    } catch (e) {
                    	layer.closeAll();
                        layer.msg("生成实体类异常，请检查JSON是否错误。",so.defn);
                    }
                });
                so("#testjson").click(function () {
                    var testjson = '{\r\n    "name":"so json 在线工具",\r\n    "url":"http://www.sojson.com",\r\n    "address":{\r\n        "city":"北京",\r\n        "country":"中国"\r\n    },\r\n    "arrayBrowser":[{\r\n        "name":"Google",\r\n        "url":"http://www.google.com"\r\n    },\r\n    {\r\n       "name":"Baidu",\r\n       "url":"http://www.baidu.com"\r\n   },\r\n   {\r\n       "name":"SoSo",\r\n       "url":"http://www.SoSo.com"\r\n   }]\r\n}';
                    so("#jsonval").val(testjson).siblings("b").hide();
                });
                so("#clear").click(function () {
                    tools.clear([getid('result'), getid('jsonval')]);
                });
            },
            JSON2CSharp: {
                _allClass: [],
                _genClassCode: function (obj, name) {
                    var clas = "public class {0}\r\n{\r\n".format(name || "Root");
                    for (var n in obj) {
                        var v = obj[n];
                        n = n.trim();
                        clas += "    {0}    public {1} {2} { get; set; }\r\n".format(this._genComment(v, n), this._genTypeByProp(n, v), n);
                    }
                    clas += "}\r\n";
                    this._allClass.push(clas);
                    return this._allClass.join("\r\n");
                },
                _genTypeByProp: function (name, val) {
                    try {
                        if (typeof val == "string") {
                            var regdt = /^(\d{4})(-|\/|年)(\d{2})(-|\/|月)(\d{2})(日)?(\s((\d{1,2}):)?((\d{1,2}):)?(\d{1,2})?)?$/
                            if (regdt.test(val.trim()))
                                val = new Date(val);
                        }
                    } catch (e) {

                    }
                    switch (Object.prototype.toString.apply(val)) {
                        case "[object Number]":
                            {
                                return val.toString().indexOf(".") > -1 ? "double" : "int";
                            }
                        case "[object Date]":
                            {
                                return "DateTime";
                            }
                        case "[object Object]":
                            {
                                name = name.substring(0, 1).toUpperCase() + name.substring(1);
                                this._genClassCode(val, name);
                                return name;
                            }
                        case "[object Array]":
                            {
                                return "List<{0}>".format(this._genTypeByProp(name, val[0]));
                            }
                        case "[object Boolean]":
                            {
                                return "bool";
                            }
                        default:
                            {
                                return "string";
                            }
                    }
                },
                _genComment: function (val,n) {
                    //var commm = typeof (val) == "string" && /.*[\u4e00-\u9fa5]+.*$/.test(val) ? val : "";
                    var s = Object.prototype.toString.apply(val);
                    var commm = typeof (val) == "string" ? val : n.substring(0, 1).toUpperCase() + n.substring(1); ;
                    return "/// <summary>\r\n    /// " + commm + "\r\n    /// </summary>\r\n";
                },
                convert: function (jsonObj) {
                    this._allClass = [];
                    return this._genClassCode(jsonObj);
                }
            },
            JSON2POJO: {
                _allClass: [],
                _genClassCode: function (obj, name) {
                    var packageval = so("#packageval").val(), isfill = so("#isfill").prop("checked");
                    var clas = "";
                    var str = "";
                    var privateAttr = "", publicAttr = "", fill = "", filllist = "";
                    if (isfill) {
                        fill += "    public static {0} fill(JSONObject jsonobj){\r\n".format(name || "Root");
                        fill += "        {0} entity = new {0}();\r\n".format(name || "Root");

                        filllist += "    public static List<{0}> fillList(JSONArray jsonarray) {\r\n";
                        filllist += "        if (jsonarray == null || jsonarray.size() == 0)\r\n";
                        filllist += "            return null;\r\n";
                        filllist += "        List<{0}> olist = new ArrayList<{0}>();\r\n";
                        filllist += "        for (int i = 0; i < jsonarray.size(); i++) {\r\n";
                        filllist += "            olist.add(fill(jsonarray.getJSONObject(i)));\r\n";
                        filllist += "        }\r\n";
                        filllist += "        return olist;\r\n";
                        filllist += "    }\r\n";
                        filllist = filllist.format(name || "Root");
                    }
                    for (var n in obj) {
                        var v = obj[n];
                        n = n.trim();
                        var tp = this._genTypeByProp(n, v);
                        var _type = tp.type;
                        if (tp.islist) {
                            if (isfill)
                                str = "package {1};\r\nimport java.util.ArrayList;\r\nimport java.util.List;\r\nimport net.sf.json.JSONObject;\r\nimport net.sf.json.JSONArray;\r\npublic class {0}\r\n{\r\n".format(name || "Root", packageval);
                            else
                                str = "package {1};\r\nimport java.util.ArrayList;\r\nimport java.util.List;\r\npublic class {0}\r\n{\r\n".format(name || "Root", packageval, "\r\nimport java.util.List;");
                        }
                        privateAttr += "    private {0} {1};\r\n\r\n".format(_type, n);
                        var firstChar = n.substring(0, 1).toUpperCase() + n.substring(1);
                        publicAttr += "    public void set{2}({0} {1}){\r\n        this.{1} = {1};\r\n    }\r\n".format(_type, n, firstChar);
                        publicAttr += "    public {0} get{2}(){\r\n        return this.{1};\r\n    }\r\n".format(_type, n, firstChar);

                        if (isfill) {
                            fill += "        if (jsonobj.containsKey(\"{0}\")) {\r\n".format(n);
                            var _typefirstChartoUpper = _type.substring(0, 1).toUpperCase() + _type.substring(1);
                            fill += "            entity.set{1}(jsonobj.get{2}(\"{0}\"));        \r\n        }\r\n".format(n, n.substring(0, 1).toUpperCase() + n.substring(1), _typefirstChartoUpper.indexOf("List") >= 0 ? "JSONArray" : _typefirstChartoUpper);
                        }
                    }
                    clas += "==================================\r\n"
                    if (!str) {
                        if (isfill)
                            clas += "package {1};\r\nimport net.sf.json.JSONObject;\r\nimport net.sf.json.JSONArray;\r\npublic class {0}\r\n{\r\n".format(name || "Root", packageval);
                        else
                            clas += "package {1};\r\npublic class {0}\r\n{\r\n".format(name || "Root", packageval);
                    }
                    else
                        clas += str;
                    if (isfill) {
                        fill += "        return entity;\r\n    }\r\n";
                    }
                    clas += privateAttr;
                    clas += publicAttr;
                    clas += fill;
                    clas += filllist;
                    clas += "}\r\n";
                    this._allClass.push(clas);
                    return this._allClass.join("\r\n");
                },
                _genTypeByProp: function (name, val) {
                    try {
                        if (typeof val == "string") {
                            //xxxx(-|/|年)xx(-|/|月)xx(-|/|日) xx:xx:xx
                            var regdt = /^(\d{4})(-|\/|年)(\d{2})(-|\/|月)(\d{2})(日)?(\s((\d{1,2}):)?((\d{1,2}):)?(\d{1,2})?)?$/
                            if (regdt.test(val.trim()))
                                val = new Date(val);
                        }
                    } catch (e) {

                    }
                    switch (Object.prototype.toString.apply(val)) {
                        case "[object Number]":
                            {
                                return { type: val.toString().indexOf(".") > -1 ? "double" : "int" };
                            }
                        case "[object Date]":
                            {
                                return { type: "DateTime" };
                            }
                        case "[object Object]":
                            {
                                name = name.substring(0, 1).toUpperCase() + name.substring(1);
                                this._genClassCode(val, name);
                                return { type: name };
                            }
                        case "[object Array]":
                            {
                                return { type: "List<{0}>".format(this._genTypeByProp(name, val[0]).type), islist: true };
                            }
                        case "[object Boolean]":
                            {
                                return { type: "boolean" };
                            }
                        default:
                            {
                                return { type: "String" };
                            }
                    }
                },
                convert: function (jsonObj) {
                    this._allClass = [];
                    return this._genClassCode(jsonObj);
                }
            }
        },
        jsontoxml: function () {
            so("#2json").click(function () {
                var xmlobjtree = new XML.ObjTree();
                var dumper = new JKL.Dumper();
                var xmlText = so("#xmljsonval").val();
                if (!xmlText) {
                    layer.msg("请输入XML字符串");
                    so("#xmljsonval").focus();
                    return false;
                }
                xmlText = xmlText.replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(/&quot;/g, "\""); //HTML转义
                var tree = xmlobjtree.parseXML(xmlText);
                if (tree) {
                    if (!tree.html)
                        so("#result").val(dumper.dump(tree)).siblings("b").hide();
                    else {
                        layer.msg("请检查XML是否错误。");
                        so("#xmljsonval").focus();
                    }
                }
            });

            so("#2xml").click(function () {
                var xmlobjtree = new XML.ObjTree();
                if (!so("#xmljsonval").val()) {
                    layer.msg("请输入JSON字符串");
                    so("#xmljsonval").focus();
                    return false;
                }
                try {
                    var json = eval("(" + so("#xmljsonval").val() + ")");
                    so("#result").val(formatXml(xmlobjtree.writeXML(json))).siblings("b").hide();
                } catch (e) {
                    layer.msg("转XML异常，请检查JSON是否错误。");
                    so("#xmljsonval").focus();
                }
            });

            so("#clear").click(function () {
                tools.clear([getid('xmljsonval'), getid('result')]);
            });

        },
        jsontoget: function () {
            so("#getjsonval").bind("keyup paste", function (e) {
                var obj = so(this);
                var etype = e.type;
                setTimeout(function () {
                    if (etype == "paste")
                        obj.val(obj.val().trim().replace(/(\r|\n|\t|\s)/g, ""));
                }, 100);
            });
            so("#2json").click(function () {
                var val = so("#getjsonval").val();
                val = val.replace(/&/g, '","').replace(/=/g, '":"');
                val = '{"' + val + '"}';
                so("#result").val(val).siblings("b").hide();
            });
            so("#2get").click(function () {
                var val = so("#getjsonval").val();
                val = val.replace(/\t/g, "");
                val = val.replace(/\"/g, "").replace("{", "").replace("}", "").replace(",", "&").replace(":", "=");
                val = val.replace(/\"/g, "").replace(/{/g, "").replace(/}/g, "").replace(/,/g, "&").replace(/:/g, "=");
                so("#result").val(val).siblings("b").hide();
            });
            so("#clear").click(function () {
                tools.clear([getid('getjsonval'), getid('result')]);
            });
        },
        exceltojson: {
            getresult: function (totype) {
                var splitchar = so("#splitchar").val() || /\t/;
                var txt = so("#excelval").val();
                if (!txt.trim()) {
                    layer.msg("请输入EXCEL格式的字符串。");
                    return false;
                }
                var datas = txt.split("\n");
                var html = "[\n";
                var keys = [];
                for (var i = 0; i < datas.length; i++) {
                    var ds = datas[i].split(splitchar);
                    if (i == 0) {
                        if (totype == "0") {
                            keys = ds;
                        } else {
                            html += "[";
                            for (var j = 0; j < ds.length; j++) {
                                html += '"' + ds[j] + '"';
                                if (j < ds.length - 1) {
                                    html += ",";
                                }
                            }
                            html += "],\n";
                        }
                    } else {
                        if (ds.length == 0) continue;
                        if (ds.length == 1) {
                            ds[0] == "";
                            continue;
                        }
                        html += totype == "0" ? "{" : "[";
                        for (var j = 0; j < ds.length; j++) {
                            var d = ds[j];
                            if (d == "") continue;
                            if (totype == "0") {
                                html += '"' + keys[j] + '":"' + d + '"';
                            } else {
                                html += '"' + d + '"';
                            }
                            if (j < ds.length - 1) {
                                html += ',';
                            }
                        }
                        html += totype == "0" ? "}" : "]";
                        if (i < datas.length - 1)
                            html += ",\n";
                    }
                }
                html += "\n]";
                so("#result").val(html).siblings("b").hide();
            },
            init: function () {
                var _this = this;
                so("#2object").click(function () {
                    _this.getresult(0);
                });
                so("#2array").click(function () {
                    _this.getresult(1);
                });
                so("#clear").click(function () {
                    tools.clear([getid('excelval'), getid('result')]);
                });
            }
        },
        jsonescape: {
            //ctype: 1压缩  2转义  3压缩转义  4去除转义
            escapezip: function (ctype) {
                var txtA = document.getElementById("jsonval");
                var text = txtA.value;
                if (!text.trim()) {
                    layer.msg("请输入JSON字符串。");
                    return false;
                }
                if (ctype == 1 || ctype == 3) {
                    text = text.split("\n").join(" ");
                    var t = [];
                    var inString = false;
                    for (var i = 0, len = text.length; i < len; i++) {
                        var c = text.charAt(i);
                        if (inString && c === inString) {
                            if (text.charAt(i - 1) !== '\\') {
                                inString = false;
                            }
                        } else if (!inString && (c === '"' || c === "'")) {
                            inString = c;
                        } else if (!inString && (c === ' ' || c === "\t")) {
                            c = '';
                        }
                        t.push(c);
                    }
                    text = t.join('');
                }
                if (ctype == 2 || ctype == 3) {
                    text = text.replace(/\\/g, "\\\\").replace(/\"/g, "\\\"");
                }
                if (ctype == 4) {
                    text = text.replace(/\\\\/g, "\\").replace(/\\\"/g, '\"');
                }
                txtA.value = text;
            },
            GB2312UnicodeConverter: {
                ToUnicode: function (str) {
                    var txt = escape(str).toLocaleLowerCase().replace(/%u/gi, '\\u');
                    return txt.replace(/%7b/gi, '{').replace(/%7d/gi, '}').replace(/%3a/gi, ':').replace(/%2c/gi, ',').replace(/%27/gi, '\'').replace(/%22/gi, '"').replace(/%5b/gi, '[').replace(/%5d/gi, ']').replace(/%3D/gi, '=').replace(/%20/gi, ' ').replace(/%3E/gi, '>').replace(/%3C/gi, '<').replace(/%3F/gi, '?');
                },
                ToGB2312: function (str) {
                    return unescape(str.replace(/\\u/gi, '%u'));
                }
            },
            utozh: function () {
                var _this = this;
                var txtA = document.getElementById("jsonval");
                var text = txtA.value.trim();
                if (!text) {
                    layer.msg("请输入JSON字符串。");
                    return false;
                }
                txtA.value = _this.GB2312UnicodeConverter.ToGB2312(text);
            },
            zhtou: function () {
                var _this = this;
                var txtA = document.getElementById("jsonval");
                var text = txtA.value.trim();
                if (!text) {
                    layer.msg("请输入JSON字符串。");
                    return false;
                }
                txtA.value = _this.GB2312UnicodeConverter.ToUnicode(text);
            },
            cntoenehar: function () {
                var txtA = document.getElementById("jsonval");
                var str = txtA.value;
                str = str.replace(/\’|\‘/g, "'").replace(/\“|\”/g, "\"");
                str = str.replace(/\【/g, "[").replace(/\】/g, "]").replace(/\｛/g, "{").replace(/\｝/g, "}");
                str = str.replace(/，/g, ",").replace(/：/g, ":");
                txtA.value = str;
            },
            init: function () {
                so('#jsonval').linedtextarea({ resize: "none" });
                var _this = this;
                so("#zip").click(function () {
                    _this.escapezip(1);
                });
                so("#escape").click(function () {
                    _this.escapezip(2);
                });
                so("#zipescape").click(function () {
                    _this.escapezip(3);
                });
                so("#delescape").click(function () {
                    _this.escapezip(4);
                });
                so("#u2zh-cn").click(function () {
                    _this.utozh();
                });
                so("#zh-cn2u").click(function () {
                    _this.zhtou();
                });
                so("#zh-cn2enchar").click(function () {
                    _this.cntoenehar();
                });
            }
        }
    }
}
var tc = tools.transcoding;
var to = tools.other;
var ted = tools.encryptDecode;
var hcj = tools.htmlcssjs;
var jsontool = tools.jsonTool;