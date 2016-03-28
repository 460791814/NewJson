<%@ Page Title="在线htpasswd生成器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Htpasswd.aspx.cs" Inherits="NewJson.EncDec.Htpasswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content=" 在线工具,加密/解密,在线htpasswd生成器">
    <meta name="description" content="在线工具,在线htpasswd生成器">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线htpasswd生成器</h2>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group input1" style="width:60%">
                <span class="input-group-addon" id="basic-addon1" style=" width:80px">用户名</span>
                <input type="text" class="form-control " id="name_input" placeholder="用户名" aria-describedby="basic-addon1">
            </div>
            <div class="input-group input1" style="width:60%;margin-top:15px">
                <span class="input-group-addon" id="Span1" style=" width:80px;">密码</span>
                <input type="text" class="form-control " id="password_input" placeholder="密码" aria-describedby="basic-addon1">
            </div>
              <div class="input-group input1" style="width:60%;margin-top:15px">
               <span class="input-group-addon" id="Span4" style=" width:80px">加密方式</span>
                <button id="btn_type" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    MD5 (Apache servers only)<span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="javascript:;" onclick="t(0,this)" >plain (Windows & TPF servers)</a></li>
                    <li><a href="javascript:;" onclick="t(1,this)">Crypt (all Unix servers)</a></li>
                      <li><a href="javascript:;" onclick="t(2,this)">MD5 (Apache servers only)</a></li>
                        <li><a href="javascript:;" onclick="t(3,this)">SHA-1 (Netscape-LDIF / Apache servers)</a></li>
                </ul>
                  <input type="hidden" name="name" value="2" id="hid_type" />
              </div>
            
            <button type="button" class="btn btn-primary" onclick="create()" style="margin-top:15px">
                            加密生成</button>
            <div class="input-group input1" style="width:60%;margin-top:15px">
                <span class="input-group-addon" id="Span2" style=" width:80px">生成结果</span>
                <input type="text" class="form-control " id="result_input" placeholder="生成结果" aria-describedby="basic-addon1">
            </div>
        </div>
    </div>
         <div style="padding:30px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
         <div  style="font-family: 微软雅黑, Verdana, sans-serif, 宋体;">
			<h4>什么是 htpasswd ?</h4>
			<p>htpasswd 是开源 http 服务器 <a href="http://www.oschina.net/p/apache+http+server" target="_blank">apache httpd</a> 的一个命令工具，用于生成 http 基本认证的密码文件。</p>
			<h4>加密方式有什么区别？</h4>
			<p><strong>MD5:</strong>使用MD5加密密码。在Windows, Netware 和TPF上，这是默认的加密方式。</p>
			<p><strong>crypt:</strong>使用crypt()加密密码。在除了Windows, Netware和TPF的平台上，这是默认的。 虽然它在所有平台上可以为htpasswd所支持， 但是在Windows, Netware和TPF上不能为httpd服务器所支持。</p>
			<p><strong>SHA:</strong>使用SHA加密密码。 它是为了方便转入或移植到使用LDAP Directory Interchange Format (ldif)的Netscape而设计的。</p>
			<p><strong>plain:</strong>不加密，使用纯文本的密码。虽然在所有平台上 htpasswd 都可以建立这样的密码， 但是httpd后台只在Windows, Netware和TPF上支持纯文本的密码。</p>
			<h4>为什么要做成在线的？</h4>
			<p>如果我们不使用apache服务器，例如使用nginx等，可能手头没有这个命令行工具，就无法生成密码文件，有了在线版的可以方便服务器管理员使用。</p>
		</div>
         </div>
    <script src="/Js/encdec/htpaaword_md5.js" type="text/javascript"></script>
    <script src="/Js/encdec/htpaaword_sha1.js" type="text/javascript"></script>
    <script src="/Js/encdec/javacrypt.js" type="text/javascript"></script>

    
<script type="text/javascript">


var ALG_PLAIN = 0;           // mot de passe en clair : ne fonctionnera pas sur les serveurs Unix
var ALG_CRYPT = 1;           // chiffrement par la fonction crypt() d'Unix
var ALG_APMD5 = 2;           // chiffrement en MD5, utilisé par défaut sous Windows entre autres.
var ALG_APSHA = 3;           // chiffrement en SHA-1
var AP_SHA1PW_ID = "{SHA}";
var AP_MD5PW_ID  = "$apr1$";

// Convertit en sorte de base-64 le nombre v, sur n caractères. Fonction dérivée du code d'Apache 1.3
var itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";  /* 0 ... 63 => ASCII - 64 */
function ap_to64(v, n) {
  var s = '';
  while (--n >= 0) {
    s += itoa64.charAt(v&0x3f);  // prend les 6 bits les plus à droite.
    v >>>= 6;                    // décale de 6 bits.
  }
  return s;
}

// Convertit une chaîne en tableau de codes ASCII.
function stringToArray(s) {
  var a=[];
  for (var i = 0; i < s.length; i++) a.push(s.charCodeAt(i));
  return a;
}

function htpasswd(user, pw, alg) {
/*
  if (!user || !pw) {
    alert('Il faut un nom d\'utilisateur et un mot de passe.');
    return '';
  }
*/
  // un peu de sel pour mettre dans les mots de passe en MD5 ou Crypt : 8 caractères aléatoires en base 64.
  // On fait 4 + 4, parce que 8 caractères c'est trop pour être stocké dans un entier.
  var salt = ap_to64(Math.floor(Math.random()*16777215), 4)    // 2^24-1 : 4 * 6 bits.
           + ap_to64(Math.floor(Math.random()*16777215), 4);   // 2^24-1 : 4 * 6 bits.


  var plus127 = 0;
  for (var i=0; i<user.length; i++) if (user.charCodeAt(i) > 127) plus127++;
  if (plus127) alert("Apache doesn't like non-ascii characters in the user name.");

  var cpw  = '';         // Mot de passe chiffré ; max 119 caractères.
  switch (alg) {
    /*
     * output of base64 encoded SHA1 is always 28 chars + AP_SHA1PW_ID length (ce qui fait 33 caractères)
     */
    case ALG_APSHA:
      cpw = AP_SHA1PW_ID + b64_sha1(pw);
      break;

    case ALG_APMD5:
      var msg = pw;          // On commence par le mot de passe en clair
      msg += AP_MD5PW_ID;    // puis le petit mot magique
      msg += salt;           // et un peu de sel.
      /*
       * Then just as many characters of the MD5(pw, salt, pw)
       */
      var final_ = str_md5(pw + salt + pw);
      for (var pl = pw.length; pl > 0; pl -= 16) msg += final_.substr(0, (pl > 16) ? 16 : pl);

      /*
       * Then something really weird...
       */
      for (i = pw.length; i != 0; i >>= 1)
        if (i & 1) msg += String.fromCharCode(0);
        else msg += pw.charAt(0);
      final_ = str_md5(msg);

      /*
       * Ensuite une partie pour ralenir les choses ! En JavaScript ça va être vraiment lent !
       */
      var msg2;
      for (i = 0; i < 1000; i++) {
        msg2 = '';
        if (i & 1) msg2 += pw; else msg2 += final_.substr(0, 16);
        if (i % 3) msg2 += salt;
        if (i % 7) msg2 += pw;
        if (i & 1) msg2 += final_.substr(0, 16); else msg2 += pw;
        final_ = str_md5(msg2);
      }
      final_ = stringToArray(final_);

      /*
       * Now make the output string.
       */
      cpw = AP_MD5PW_ID + salt + '$';
      cpw += ap_to64((final_[ 0]<<16) | (final_[ 6]<<8) | final_[12], 4);
      cpw += ap_to64((final_[ 1]<<16) | (final_[ 7]<<8) | final_[13], 4);
      cpw += ap_to64((final_[ 2]<<16) | (final_[ 8]<<8) | final_[14], 4);
      cpw += ap_to64((final_[ 3]<<16) | (final_[ 9]<<8) | final_[15], 4);
      cpw += ap_to64((final_[ 4]<<16) | (final_[10]<<8) | final_[ 5], 4);
      cpw += ap_to64(                    final_[11]               , 2);
      break;

    case ALG_PLAIN:
      cpw = pw;
      break;

    case ALG_CRYPT:
    default:
      cpw = Javacrypt.displayPassword(pw, salt);
      break;
  }

  /*
   * Check to see if the buffer is large enough to hold the username,
   * hash, and delimiters.
   */
  if (user.length + 1 + cpw.length > 255) alert('Your login and password are too long.');
  else return user + ':' + cpw;
}

//=========================================
// Génération d'un mot de passe
//=========================================
function pwgen(pwl) {
  // On peut mettre d'autres caractères, y compris des lettres accentuées (encore faut-il que
  // le code ASCII soit le même sur les 3 systèmes codeur, client et serveur)
  // Mais on gagne nettement plus en augmentant la taille du mot de passe que le nombre de caractères.
  var source = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-@+_()[]{}=%*!§";
  var pw = '';
  for (var i = 1; i <= pwl; i++) {
    pw += source.substr(Math.floor(Math.random()*source.length),1);
  }
  return pw;
}

function generation(f) {
  var pw = pwgen(f.taille.options[f.taille.selectedIndex].text);
  f.pwd1.value = pw;
  f.pwd2.value = htpasswd(f.user.value, pw, f.alg.selectedIndex);
}


</script>
    <script type="text/javascript">
        function t(i, t) {
            $("#hid_type").val(i);
            $("#btn_type").text($(t).text());
        }
        function create() {
          
            $('#result_input').val(htpasswd($('#name_input').val(), $('#password_input').val(), +$('#hid_type').val()));
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
