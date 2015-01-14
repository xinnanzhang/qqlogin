<!DOCTYPE html>
<html class="p_AFMaximized" dir="ltr" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SITEVIEW | 创建帐户</title>
        <link data-afr-stylesheet="1" rel="stylesheet" type="text/css" charset="UTF-8" href="${user.url}/register1.css">
		<script type="text/javascript" language="JavaScript" src="${user.url}/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" charset="UTF-8">
            function check(){
				
                var username = $("#username").val();
                var password = $("#password").val();
                var retypePassword = $("#retypePassword").val();
                var workPhone = $("#workPhone").val();
                //alert(workPhone);
                //alert(verifyTelNumber(workPhone));
                if ($.trim(password) != $.trim(retypePassword)) {
                    alert("重新输入的密码与原密码不匹配!");
                    return false;       
                }
                else 
                    if (!verifyTelNumber(workPhone)) {
                    
                        alert("请填写正确的电话号码，如：13988888888或0731-7777777或0731-88888888");
                        return false;
                    }
                    else {
                        return true;
                    }
            }
            
            function verifyTelNumber(obj){
                var pattern_Mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; //手机格式，需改动
                var pattern_Phone = /^(\d{3}-\d{8}|\d{4}-\d{7,8})$/;
                if (pattern_Mobile.test(obj) || pattern_Phone.test(obj)) {
                    return true;
                }
                else {
                    return false;
                }
            }
        </script>
    </head>
    <body class="x1wr x17b p_AFMaximized">
        <style type="text/css">
            .seaove {
                color: #4F4F4F;
                padding: 0px 6px 0px 0px;
                font-weight: normal;
                font-size: 15px;
                text-align: left;
                margin-right: 8px;
                float: right;
                position: relative;
                top: 7px;
                width: 170px;
                word-wrap: break-word;
                font-family: Arial, Helvetica, sans-serif
            }
        </style>

        <input type="hidden" id="oracle.adf.view.faces.RICH_UPDATE">
        <div id="docCreate" class="p_AFHoverTarget">
            <div id="wrapper" class="x1wq">
<!--                 <div class="header">
                </div>
                <div>
                </div>
                <div>
                </div> -->
                <div id="content" class="x1wv x1vt xdj">
                    <table style="font-size:1px;line-height:1px;height:7px" class="xt5 p_AFCore p_AFDefault" cellpadding="0" cellspacing="0" border="0" width="0" summary="">
                        <tbody>
                            <tr>
                            </tr>
                        </tbody>
                    </table>
                    <div class="x1e4 p_AFCore p_AFDefault">
                        <div class="x5s p_AFCore p_AFDefault" id="content::content">
                            <span class="x1wy">创建您的 SITEVIEW 云平台帐户</span>
                            <div id="s1" style="margin-top:50px">
                            </div>
                            <span class="x1wz">您可以通过 SITEVIEW 帐户访问各种在线服务、应用程序和社区。您可以在创建帐户时选择接收 SITEVIEW 通信，并注册各项订阅。</span>
                            <div id="s2" style="margin-top:21px">
                            </div>
                            <span class="x1wz">已有 SITEVIEW 帐户？</span>
                            <img id="s3" src="" alt="" width="3px" height="0px"><a id="signinlink" class="x1x1 xh6 p_AFTextOnly" href="http://om.siteview.com/itsm/webloader">
                            	<span class="x15r">登录</span></a>
                            <div id="m1" class="x71" _afrglobalonly="true">
                            </div>
                            <form id="f1" name="f1" class="x1y1 x11b" method="post" onsubmit="return check()" action="http://cloud.siteview.com/sv/register">
                                <span id="usrinf" class="x1a" style="width=100%"><span id="j_id6" class="x1a">
                                        <div id="j_id7" class="x19">
                                            <table cellpadding="0" cellspacing="0" border="0" summary="" style="width: auto">
                                                <tbody>
                                                    <tr>
                                                        <td class="x4w" colspan="1">
                                                            <table cellpadding="0" cellspacing="0" border="0" width="100%" summary="">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="x1zt xry">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                用户名
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x8 x1u">
                                                                                            	<input id="username" name="username" class="x25" maxlength="80" placeholder="" type="text" 
																								pattern="[\u4e00-\u9fa5_a-zA-Z0-9_]{5,16}" title="用户名最短5个字符最长不超过16个字符,不能包含特殊字符" required="required">
                                                                                                <label for="username" class="x9w">
                                                                                                    用户名
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <!-- <td class="xu6">
                                                                                            <span class="x1xz">请输入不要包含特殊字符的用户名。</span>
                                                                                        </td> -->
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                密码
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x8 x1u"><input id="password" name="password" class="x25" maxlength="80" placeholder="" type="password" pattern="^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,18}$" autocomplete="off" title="长度为6-18 任意组合的密码,且不能包含空格" required="required">
                                                                                                <label for="password" class="x9w">
                                                                                                    密码
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <!-- <td class="xu6">
                                                                                            <span id="passwordinfo" class="x1xz">密码最短6个字符最长不超过18个字符,且不能包含空格。</span>
                                                                                        </td> -->
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
    
                                                                    <tr class="x1zt xry" id="retypePasswordPanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                重新输入密码
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x8 x1u"><input id="retypePassword" name="retypePassword" class="x25" maxlength="80" placeholder="" type="password" autocomplete="off" equalTo="password" title="请重新输入密码" required="required">
                                                                                                <label for="retypePassword" class="x9w">
                                                                                                    重新输入密码
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <!-- <td class="xu6">
                                                                                            <span id="passwordinfo" class="x1xz">密码一样。</span>
                                                                                        </td> -->
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div id="j_id14" class="x19">
                                            <table cellpadding="0" cellspacing="0" border="0" summary="" style="width: auto">
                                                <tbody>
                                                    <tr>
                                                        <td class="x4w" colspan="1">
                                                            <table cellpadding="0" cellspacing="0" border="0" width="100%" summary="">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td class="x51">
                                                                            <div id="j_id15" style="margin-top:10px">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="x1zt xry" id="countryPanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                国家/地区
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1z">
                                                                                                <select id="country" name="country" class="x2h" title="中国" required="required">
                                                                                                    <option value="中国">中国</option>
                                                                                                    <option value="香港">香港</option>
                                                                                                    <option value="澳门">澳门</option>
                                                                                                    <option value="台湾">台湾</option>
                                                                                                    <option value="俄罗斯">俄罗斯</option>
                                                                                                    <option value="美国">美国</option>
                                                                                                    <option value="法国">法国</option>
                                                                                                    <option value="英国">英国</option>
                                                                                                    <option value="德国">德国</option>
                                                                                                    <option value="韩国">韩国</option>
                                                                                                    <option value="日本">日本</option>
                                                                                                </select>
                                                                                                <label for="country" class="x9w">
                                                                                                    国家/地区
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="countrySuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry" id="namePanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                姓名
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id18" class="x1a">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td valign="top">
                                                                                            <div id="j_id19" class="x1a">
                                                                                                <div>
                                                                                                    <table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id20" class="x1a">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <span class="x1x9 x1u"><input id="firstName" name="firstName" class="x25" maxlength="20" placeholder="中文名字" type="text" title="请输入您的名字" required="required">
                                                                                                                        <label for="firstName" class="x9w">
                                                                                                                            中文名字
                                                                                                                        </label>
                                                                                                                    </span>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <img id="firstNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </div>
                                                                                                <div>
                                                                                                    <div id="j_id21:j_id22">
                                                                                                        <div id="afr">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td valign="top">
                                                                                            <div id="j_id23" class="x1a">
                                                                                                <div>
                                                                                                    <table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id24" class="x1a">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <img id="j_id25" src="" alt="" width="3" height="0px">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </div>
                                                                                                <div>
                                                                                                    <div id="j_id26:j_id27">
                                                                                                        <div id="afr">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td valign="top">
                                                                                            <div id="j_id28" class="x1a">
                                                                                                <div>
                                                                                                    <table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id29" class="x1a">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <span class="x1x9 x1u"><input id="lastName" name="lastName" class="x25" maxlength="30" placeholder="中文姓氏" type="text" title="请输入您的姓氏" required="required">
                                                                                                                        <label for="lastName" class="x9w">
                                                                                                                            中文姓氏
                                                                                                                        </label>
                                                                                                                    </span>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <img id="lastNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </div>
                                                                                                <div>
                                                                                                    <div id="j_id30:j_id49">
                                                                                                        <div id="afr">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="x1zt xry" id="sexPanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                性别
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="seaove"><input id="sex" type="radio" name="sex" value="先生" checked="checked" />先生 <input id="sex2" type="radio" name="sex" value="小姐" />小姐</span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="x1zt xry" id="jobTitlePanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                职位
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1z">
                                                                                                <select id="jobTitle" name="jobTitle" class="x2h" title="-选择-" required="required">
                                                                                                    <option value="">-选择-</option>
                                                                                                    <option value="局域网管理员">局域网管理员</option>
                                                                                                    <option value="网络工程师">网络工程师</option>
                                                                                                    <option value="硬件工程师">硬件工程师</option>
                                                                                                    <option value="软件工程师">软件工程师</option>
                                                                                                    <option value="电脑技术员">电脑技术员</option>
                                                                                                    <option value="系统管理员/网管">系统管理员/网管</option>
                                                                                                    <option value="IT管理员">IT管理员</option>
                                                                                                    <option value="通信技术工程师">通信技术工程师</option>
                                                                                                    <option value="数据库工程师">数据库工程师</option>
                                                                                                    <option value="IT从业人员">IT从业人员</option>
                                                                                                    <option value="企业管理员">企业管理员</option>
                                                                                                    <option value="信息处主任">信息处主任</option>
                                                                                                    <option value="销售经理">销售经理</option>
                                                                                                    <option value="项目经理">项目经理</option>
                                                                                                    <option value="商务">商务</option>
                                                                                                    <option value="财务">财务</option>
                                                                                                    <option value="营销">营销</option>
                                                                                                    <option value="教师">教师</option>
                                                                                                    <option value="医疗/护理">医疗/护理</option>
                                                                                                    <option value="律师/法务">律师/法务</option>
                                                                                                    <option value="其它">其它</option>
                                                                                                </select>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="jobTitleSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry" id="workPhonePanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                电话
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1xa x1u"><input id="workPhone" name="workPhone" class="x25" maxlength="50" placeholder="" type="text" required="required">
                                                                                                <label for="workPhone" class="x9w">
                                                                                                    办公电话
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="workPhoneSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry" id="companyNamePanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                邮箱
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="email" name="email" class="x25" maxlength="100" placeholder="" type="text" pattern="^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$" title="您的电子邮件格式不正确" required="required">
                                                                                                <label for="email" class="x9w">
                                                                                                    邮箱
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="x1zt xry" id="address1Panel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                公司名称
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="companyName" name="companyName" class="x25" maxlength="240" placeholder="" type="text" title="为了更好的服务您>请输入您的公司名称" required="required">
                                                                                                <label for="companyName" class="x9w">
                                                                                                    公司名称
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry" id="address1Panel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                地址
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x7 x1u"><input id="address" name="address" class="x25" maxlength="240" placeholder="" type="text" title="为了更好的服务您>请输入您的地址" required="required">
                                                                                                <label for="address" class="x9w">
                                                                                                    地址
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="address1SuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="x1zt xry" id="cityPanel">
                                                                        <td class="x15 x4z">
                                                                            <label>
                                                                                城市
                                                                            </label>
                                                                        </td>
                                                                        <td valign="top" class="xu4 xs8">
                                                                            <table cellpadding="0" cellspacing="0" border="0" summary="">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <span class="x1x7 x1u"><input id="city" name="city" class="x25" maxlength="50" placeholder="" type="text" title="为了更好的服务您>请输入您所在的城市" required="required">
                                                                                                <label for="city" class="x9w">
                                                                                                    城市
                                                                                                </label>
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="xu6">
                                                                                            <img id="citySuccessIcon" alt="" class="x1z1 xkx" style="display:none" src="">
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td class="x51">
                                                                            <span id="subscription1" class="x1y2 x1v" _adftrc="subscription1::icon-style"><span class="x2e"><span class="xjw"><input id="subscription1::content" name="subscription1" class="xsq" type="checkbox" value="t" onclick="this.focus()"></span>
                                                                                    <label for="subscription1::content" class="xss">
                                                                                        是的，请向我发送有关 SITEVIEW 产品、服务和活动的电子邮件。
                                                                                    </label>
                                                                                </span></span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td class="x51">
                                                                            <!-- <div id="cb1" class="x1xp xg5 p_AFTextOnly" _afrgrp="0">
                                                                            <a href="#" onclick="this.focus();return false" class="xg7"><span class="xgf">注册</span></a>
                                                                            </div> --><input class="x1xp xg5 p_AFTextOnly" _afrgrp="0" type="submit" value="注册">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </span></span>
                            </form>
                        </div>
                    </div>
                    <div class="xtv p_AFCore p_AFDefault">
                    </div>
                </div>
                <div>
                </div>
                <div>
                </div>﻿ 
            </div>

        </div>
    </body>
</html>
