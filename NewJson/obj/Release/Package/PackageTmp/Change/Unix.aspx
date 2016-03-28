<%@ Page Title="Unix时间戳" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Unix.aspx.cs"
    Inherits="NewJson.Change.Unix" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="Unix时间戳">
<meta name="description" content="Unix时间戳转换">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Unix时间戳</h2>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">当前时间戳</span>
                <input type="text" class="form-control" id="now_timestamp" style="width: 300px" placeholder=""
                    aria-describedby="basic-addon1">
            </div>
            <div style="margin-top: 20px;">
                <p>
                    Unix时间戳(Unix timestamp) → 北京时间</p>
                <div class="input-group" style="float: left; width: 400px;">
                    <span class="input-group-addon" id="basic-addon1">Unix时间戳</span>
                    <input type="text" class="form-control" style="width: 300px" id="unixtime" placeholder="要转换的时间戳"
                        aria-describedby="basic-addon1">
                </div>
                <button type="button" class="btn btn-primary" style="float: left; width: 200px" id="toGMT">
                    转换日期→
                </button>
                <div class="input-group" style="float: left; width: 200px; margin-left: 10px;">
                    <span class="input-group-addon" id="basic-addon1">北京时间</span>
                    <input type="text" class="form-control" id="result_GMT" style="width: 200px" placeholder="转换后的时间戳"
                        aria-describedby="basic-addon1">
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div style="margin-top: 40px;">
                <p>
                    北京时间 → Unix时间戳(Unix timestamp)</p>
                <div class="input-group" id="bjc1" style="float: left; width: 400px">
                    <input type="text" class="bjtime" id="year"><span>年</span>
                    <input type="text" class="bjtime" id="month"><span>月</span>
                    <input type="text" class="bjtime" id="day"><span>日</span>
                    <input type="text" class="bjtime" id="hour"><span>时</span>
                    <input type="text" class="bjtime" id="minute"><span>分</span>
                    <input type="text" class="bjtime" id="second"><span>秒</span>
                </div>
                <button type="button" class="btn btn-primary" style="float: left; width: 200px" id="toUNIX">
                    转换时间戳→
                </button>
                <div class="input-group" style="float: left; width: 200px; margin-left: 10px;">
                    <span class="input-group-addon" id="basic-addon1">时间戳</span>
                    <input type="text" class="form-control" id="result_unix" style="width: 200px" placeholder="转换后的时间戳"
                        aria-describedby="basic-addon1">
                </div>
            </div>
        </div>
        <input type="hidden" id="encode" value="1" />
    </div>

        <div  style="padding:30px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
   

<p class="tt">什么是时间戳？</p>
<p>Unix时间戳(Unix timestamp)，或称Unix时间(Unix time)、POSIX时间(POSIX time)，是一种时间表示方式，定义为从格林威治时间1970年01月01日00时00分00秒起至现在的总秒数。Unix时间戳不仅被使用在Unix系统、类Unix系统中，也在许多其他操作系统中被广泛采用。多数Unix系统将时间戳以一个32位整型进行保存，这可能会在2038年1月19日产生一些问题（Y2038问题）。</p>

    
    <p class="tt">如何在不同编程语言中 获取现在的Unix时间戳(Unix timestamp)？</p>
    <table width="95%"  class="table table-bordered">
      <tbody>
        <tr>
          <td width="20%">Java</td>
          <td width="80%">time</td>
        </tr>
        <tr>
          <td>JavaScript</td>
          <td> Math.round(new Date().getTime()/1000)<br>
            <span>getTime()返回数值的单位是毫秒</span></td>
        </tr>
        <tr>
          <td>Microsoft .NET / C#</td>
          <td>epoch = (DateTime.Now.ToUniversalTime().Ticks - 621355968000000000) / 10000000</td>
        </tr>
        <tr>
          <td>MySQL</td>
          <td>SELECT unix_timestamp(now())</td>
        </tr>
        <tr>
          <td>Perl</td>
          <td>time</td>
        </tr>
        <tr>
          <td>PHP</td>
          <td>time()</td>
        </tr>
        <tr>
          <td>PostgreSQL</td>
          <td>SELECT extract(epoch FROM now())</td>
        </tr>
        <tr>
          <td>Python</td>
          <td><span>先</span> import time <span>然后</span> time.time()</td>
        </tr>
        <tr>
          <td>Ruby</td>
          <td><span>获取Unix时间戳：</span>Time.now <span>或</span> Time.new<br>
            <span>显示Unix时间戳：</span>Time.now.to_i </td>
        </tr>
        <tr>
          <td>SQL Server</td>
          <td>SELECT DATEDIFF(s, '1970-01-01 00:00:00', GETUTCDATE())</td>
        </tr>
        <tr>
          <td>Unix / Linux</td>
          <td>date +%s</td>
        </tr>
        <tr>
          <td>VBScript / ASP</td>
          <td>DateDiff("s", "01/01/1970 00:00:00", Now())</td>
        </tr>
        <tr>
          <td> 其他操作系统<br>
            <span style="font-weight:normal;font-size:12px;">(如果Perl被安装在系统中)</span></td>
          <td><span>命令行状态：</span>perl -e "print time" </td>
        </tr>
      </tbody>
    </table>
    
    <p class="tt">如何在不同编程语言中 实现Unix时间戳(<i>Unix timestamp</i>) → 普通时间？</p>
    
    <table width="95%" class="table table-bordered">
      <tbody>
        <tr>
          <td width="20%">Java</td>
          <td width="80%">String date = new java.text.SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new java.util.Date(<u>Unix timestamp</u> * 1000))</td>
        </tr>
        <tr>
          <td>JavaScript</td>
          <td><span>先</span> var unixTimestamp = new Date(<u>Unix timestamp</u> * 1000) <span>然后</span> commonTime = unixTimestamp.toLocaleString()</td>
        </tr>
        <tr>
          <td>Linux</td>
          <td>date -d @<u>Unix timestamp</u></td>
        </tr>
        <tr>
          <td>MySQL</td>
          <td>from_unixtime(<u>Unix timestamp</u>)</td>
        </tr>
        <tr>
          <td>Perl</td>
          <td><span>先</span> my $time = <u>Unix timestamp</u> <span>然后</span> my ($sec, $min, $hour, $day, $month, $year) = (localtime($time))[0,1,2,3,4,5,6]</td>
        </tr>
        <tr>
          <td>PHP</td>
          <td>date('r', <u>Unix timestamp</u>)</td>
        </tr>
        <tr>
          <td>PostgreSQL</td>
          <td>SELECT TIMESTAMP WITH TIME ZONE 'epoch' + <u>Unix timestamp</u>) * INTERVAL '1 second';</td>
        </tr>
        <tr>
          <td>Python</td>
          <td><span>先</span> import time <span>然后</span> time.gmtime(<u>Unix timestamp</u>)</td>
        </tr>
        <tr>
          <td>Ruby</td>
          <td>Time.at(<u>Unix timestamp</u>)</td>
        </tr>
        <tr>
          <td>SQL Server</td>
          <td>DATEADD(s, <u>Unix timestamp</u>, '1970-01-01 00:00:00')</td>
        </tr>
        <tr>
          <td>VBScript / ASP</td>
          <td>DateAdd("s", <u>Unix timestamp</u>, "01/01/1970 00:00:00")</td>
        </tr>
        <tr>
          <td> 其他操作系统<br>
            <span style="font-weight:normal;font-size:12px;">(如果Perl被安装在系统中)</span></td>
          <td><span>命令行状态：</span>perl -e "print scalar(localtime(<u>Unix timestamp</u>))" </td>
        </tr>
      </tbody>
    </table>
    
    <p class="tt">如何在不同编程语言中 实现普通时间 → Unix时间戳(<i>Unix timestamp</i>)？</p>

    <table width="95%" class="table table-bordered">
      <tbody>
        <tr>
          <td width="20%">Java</td>
          <td width="80%">long epoch = new java.text.SimpleDateFormat("<u>dd/MM/yyyy HH:mm:ss</u>").parse("01/01/1970 01:00:00");</td>
        </tr>
        <tr>
          <td>JavaScript</td>
          <td>var commonTime = new Date(Date.UTC(<u>year</u>, <u>month</u> - 1, <u>day</u>, <u>hour</u>, <u>minute</u>, <u>second</u>))</td>
        </tr>
        <tr>
          <td>MySQL</td>
          <td> SELECT unix_timestamp(<u>time</u>)<br>
            <span>时间格式: YYYY-MM-DD HH:MM:SS 或 YYMMDD 或 YYYYMMDD</span></td>
        </tr>
        <tr>
          <td>Perl</td>
          <td><span>先</span> use Time::Local <span>然后</span> my $time = timelocal($sec, $min, $hour, $day, $month, $year);</td>
        </tr>
        <tr>
          <td>PHP</td>
          <td>mktime(<u>hour</u>, <u>minute</u>, <u>second</u>, <u>month</u>, <u>day</u>, <u>year</u>)</td>
        </tr>
        <tr>
          <td>PostgreSQL</td>
          <td>SELECT extract(epoch FROM date('<u>YYYY-MM-DD HH:MM:SS</u>'));</td>
        </tr>
        <tr>
          <td>Python</td>
          <td><span>先</span> import time <span>然后</span> int(time.mktime(time.strptime('<u>YYYY-MM-DD HH:MM:SS</u>', '%Y-%m-%d %H:%M:%S')))</td>
        </tr>
        <tr>
          <td>Ruby</td>
          <td>Time.local(<u>year</u>, <u>month</u>, <u>day</u>, <u>hour</u>, <u>minute</u>, <u>second</u>)</td>
        </tr>
        <tr>
          <td>SQL Server</td>
          <td>SELECT DATEDIFF(s, '1970-01-01 00:00:00', <u>time</u>)</td>
        </tr>
        <tr>
          <td>Unix / Linux</td>
          <td>date +%s -d"Jan 1, 1970 00:00:01"</td>
        </tr>
        <tr>
          <td>VBScript / ASP</td>
          <td>DateDiff("s", "01/01/1970 00:00:00", <u>time</u>)</td>
        </tr>
      </tbody>
    </table>
    
    <!-- /工具结束 --></div>

    <script src="/Js/change/unix_time.js" type="text/javascript"></script>
    <style>
        .bjtime
        {
            float: left;
            width: 40px;
        }
        #bjc1 span
        {
            float: left;
            margin: 4px;
        }
    </style>
    <script type="text/javascript">
        function md5encode() {
            $("#estr").val(CryptoJS.MD5($("#str").val()));
        }

        function Empty() {
            document.getElementById('str').value = '';
            document.getElementById('estr').value = '';
            document.getElementById('str').select();
        }
        function GetFocus() {
            document.getElementById('str').focus();
        }
</script>
</asp:Content>
