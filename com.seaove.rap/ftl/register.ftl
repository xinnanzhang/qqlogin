<!DOCTYPE html>
<html class="p_AFMaximized" dir="ltr" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>SITEVIEW | 创建帐户</title>
		<link data-afr-stylesheet="1" rel="stylesheet" type="text/css" charset="UTF-8" href="${user.url}/register.css">
		<script type="text/javascript" language="JavaScript" src="${user.url}/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" charset="UTF-8">
			function check(){
				var username=  $("#username").val();
				var password=  $("#password").val();
				var retypePassword=  $("#retypePassword").val();
				var workPhone=  $("#workPhone").val();
				//alert(workPhone);
				//alert(verifyTelNumber(workPhone));
				if($.trim(password) != $.trim(retypePassword)){
					alert("重新输入的密码与原密码不匹配!");
					return false;

				}else if(!verifyTelNumber(workPhone)){

					alert("请填写正确的电话号码，如：13988888888或0731-7777777或0731-88888888");
					return false;
				}else{
					return true;
				}			
			}

			function verifyTelNumber(obj){
			    var pattern_Mobile =/^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; //手机格式，需改动
			    var pattern_Phone=/^(\d{3}-\d{8}|\d{4}-\d{7,8})$/;
			    if(pattern_Mobile.test(obj) || pattern_Phone.test(obj)){        
			        return true;
			    }else{
			    	return false;
			    }
			}
		</script>
	</head>
<body class="x1wr x17b p_AFMaximized" >

<div id="content" class="x1wv x1vt xdj">
	<table style="font-size:1px;line-height:1px;height:7px" class="xt5 p_AFCore p_AFDefault" cellpadding="0" cellspacing="0" border="0" width="0" summary=""><tbody><tr></tr></tbody></table><div class="x1e4 p_AFCore p_AFDefault">
	<div class="x5s p_AFCore p_AFDefault" id="content::content">
	<span class="x1wy">创建您的 SITEVIEW 帐户</span><div id="s1" style="margin-top:50px"></div>

	<span class="x1wz">您可以通过 SITEVIEW 帐户访问各种在线服务、应用程序和社区。您可以在创建帐户时选择接收 SITEVIEW 通信，并注册各项订阅。</span>
	<div id="s2" style="margin-top:21px"></div><span class="x1wz">已有 SITEVIEW 帐户？</span><img id="s3" src="" alt="" width="3px" height="0px"><a id="signinlink" class="x1x1 xh6 p_AFTextOnly" href="http://om.SITEVIEW.com/itsm/webloader">
	<span class="x15r">登录</span></a><div id="m1" class="x71" _afrglobalonly="true"></div>

	<form id="f1" name="f1" class="x1y1 x11b" method="post" onsubmit="return check()" action="" >
		<span id="usrinf" class="x1a" style="width=100%">
		<span id="j_id6" class="x1a"><div id="j_id7" class="x19">
		<table cellpadding="0" cellspacing="0" border="0" summary="" style="width: auto"><tbody><tr><td class="x4w" colspan="1">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="">
		<tbody>
			<tr><td></td><td></td></tr>

			<tr class="x1zt xry">
				<td class="x15 x4z">
					<label>用户名</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
								<span class="x1x8 x1u">
															<input id="username" name="username" class="x25" maxlength="80" placeholder="" type="text" pattern="[\u4e00-\u9fa5_a-zA-Z0-9_]{5,16}" title="用户名最短5个字符最长不超过16个字符,不能包含特殊字符" required="required"><label for="username" class="x9w">用户名</label>
														</span>
														</td>
														<td class="xu6">
															<span class="x1xz">请输入不要包含特殊字符的用户名。</span>

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

			<!-- <tr><td></td>
				<td class="x51"><div id="j_id8:j_id9"><div id="afr::msgForemail"></div></div></td></tr> -->

			<tr class="x1zt xry">
				<td class="x15 x4z">
					<label>密码</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x8 x1u">
																<input id="password" name="password" class="x25" maxlength="80" placeholder="" type="password" pattern="^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,18}$" autocomplete="off" title="长度为6-18 任意组合的密码,且不能包含空格" required="required"><label for="password" class="x9w">密码</label>
															</span>
														</td>
															<td class="xu6"><span id="passwordinfo" class="x1xz">密码最短6个字符最长不超过18个字符,且不能包含空格。</span>
</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

			<!-- <tr><td></td><td class="x51"><div id="j_id10:j_id11"><div id="afr::msgForpassword"></div></div></td></tr> -->

			<tr class="x1zt xry" id="retypePasswordPanel">
				<td class="x15 x4z">	
					<label>重新输入密码</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x8 x1u">
										<input id="retypePassword" name="retypePassword" class="x25" maxlength="80" placeholder="" type="password" autocomplete="off" equalTo="password" title="请重新输入密码" required="required">
										<label for="retypePassword" class="x9w">重新输入密码</label>
									</span>
								</td>
								<td class="xu6"><span id="passwordinfo" class="x1xz">密码一样。</span></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>


			<tr class="x1zt xry" id="sexPanel">
				<td class="x15 x4z">
					<label>性别</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
								<span class="seaove">
									<input id="sex" type="radio" name="sex" value="先生" checked="checked" />先生 <input id="sex2" type="radio" name="sex" value="小姐" />小姐
								</span>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>



			<!-- <tr><td></td><td class="x51"><div id="j_id12:j_id13"><div id="afr::msgForretypePassword"></div></div></td></tr>
			</tbody></table></td></tr></tbody></table></div><div id="j_id14" class="x19"><table cellpadding="0" cellspacing="0" border="0" summary="" style="width: auto"><tbody><tr><td class="x4w" colspan="1"><table cellpadding="0" cellspacing="0" border="0" width="100%" summary=""><tbody><tr><td></td><td></td></tr><tr><td></td><td class="x51"><div id="j_id15" style="margin-top:10px"></div></td></tr> -->

			<tr class="x1zt xry" id="countryPanel"><td class="x15 x4z">
			<label>国家/地区</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1z"><select id="country" name="country" class="x2h" title="-选择-" required="required"><option value="">-选择-</option><option value="0">中国</option><option value="1">香港</option><option value="2">澳门</option><option value="3">台湾</option><option value="4">阿富汗</option><option value="5">阿尔巴尼亚</option><option value="6">阿尔及利亚</option><option value="7">美属萨摩亚</option><option value="8">安道尔</option><option value="9">安哥拉</option><option value="10">安圭拉岛</option><option value="11">南极洲</option><option value="12">安提瓜和巴布达</option><option value="13">阿根廷</option><option value="14">亚美尼亚</option><option value="15">阿鲁巴岛</option><option value="16">澳大利亚</option><option value="17">奥地利</option><option value="18">阿塞拜疆</option><option value="19">巴哈马</option><option value="20">巴林</option><option value="21">孟加拉国</option><option value="22">巴巴多斯</option><option value="23">白俄罗斯</option><option value="24">比利时</option><option value="25">伯利兹</option><option value="26">贝宁</option><option value="27">百慕大群岛</option><option value="28">不丹</option><option value="29">玻利维亚</option><option value="30">波斯尼亚和黑塞哥维那</option><option value="31">博茨瓦纳</option><option value="32">博维特岛</option><option value="33">巴西</option><option value="34">英属印度洋地区</option><option value="35">文莱达鲁萨兰国</option><option value="36">保加利亚</option><option value="37">布基纳法索</option><option value="38">布隆迪</option><option value="39">柬埔寨</option><option value="40">喀麦隆</option><option value="41">加拿大</option><option value="42">佛得角</option><option value="43">开曼群岛</option><option value="44">中非共和国</option><option value="45">乍得</option><option value="46">智利</option><option value="47">圣诞岛</option><option value="48">科科斯群岛</option><option value="49">哥伦比亚</option><option value="50">科摩罗</option><option value="51">刚果</option><option value="52">刚果民主共和国</option><option value="53">库克群岛</option><option value="54">哥斯达黎加</option><option value="55">科特迪瓦</option><option value="56">克罗地亚</option><option value="57">塞浦路斯</option><option value="58">捷克共和国</option><option value="59">丹麦</option><option value="60">吉布提</option><option value="61">多米尼加</option><option value="62">多米尼加共和国</option><option value="63">厄瓜多尔</option><option value="64">埃及</option><option value="65">萨尔瓦多</option><option value="66">赤道几内亚</option><option value="67">厄立特里亚</option><option value="68">爱沙尼亚</option><option value="69">埃塞俄比亚</option><option value="70">福克兰群岛（马尔维纳斯群岛）</option><option value="71">法罗群岛</option><option value="72">斐济</option><option value="73">芬兰</option><option value="74">法国</option><option value="75">法属圭亚那</option><option value="76">法属波利尼西亚</option><option value="77">法属南半球地区</option><option value="78">加蓬</option><option value="79">冈比亚</option><option value="80">佐治亚州</option><option value="81">德国</option><option value="82">加纳</option><option value="83">直布罗陀</option><option value="84">希腊</option><option value="85">格陵兰</option><option value="86">格林纳达</option><option value="87">瓜德罗普</option><option value="88">关岛</option><option value="89">危地马拉</option><option value="90">几内亚</option><option value="91">几内亚比绍</option><option value="92">圭亚那</option><option value="93">海地</option><option value="94">赫德和麦克唐纳群岛</option><option value="95">梵蒂冈</option><option value="96">洪都拉斯</option><option value="97">匈牙利</option><option value="98">冰岛</option><option value="99">印度</option><option value="100">印度尼西亚</option><option value="101">伊拉克</option><option value="102">爱尔兰</option><option value="103">以色列</option><option value="104">意大利</option><option value="105">牙买加</option><option value="106">日本</option><option value="107">约旦</option><option value="108">哈萨克斯坦</option><option value="109">肯尼亚</option><option value="110">基里巴斯</option><option value="111">韩国</option><option value="112">科索沃</option><option value="113">科威特</option><option value="114">吉尔吉斯斯坦</option><option value="115">老挝人民民主共和国</option><option value="116">拉托维亚</option><option value="117">黎巴嫩</option><option value="118">莱索托</option><option value="119">利比里亚</option><option value="120">利比亚</option><option value="121">列支敦士登</option><option value="122">立陶宛</option><option value="123">卢森堡</option><option value="124">马其顿</option><option value="125">马达加斯加</option><option value="126">马拉维</option><option value="127">马来西亚</option><option value="128">马尔代夫</option><option value="129">马里</option><option value="130">马耳他</option><option value="131">马绍尔群岛</option><option value="132">马提尼克</option><option value="133">毛里塔尼亚</option><option value="134">毛里求斯</option><option value="135">马约特岛</option><option value="136">墨西哥</option><option value="137">密克罗尼西亚联邦</option><option value="138">摩尔多瓦共和国</option><option value="139">摩纳哥</option><option value="140">蒙古</option><option value="141">黑山</option><option value="142">蒙特塞拉特</option><option value="143">摩洛哥</option><option value="144">莫桑比克</option><option value="145">缅甸</option><option value="146">纳米比亚</option><option value="147">瑙鲁</option><option value="148">尼泊尔</option><option value="149">荷兰</option><option value="150">荷属安的列斯</option><option value="151">新喀里多尼亚</option><option value="152">新西兰</option><option value="153">尼加拉瓜</option><option value="154">尼日尔</option><option value="155">尼日利亚</option><option value="156">纽埃岛</option><option value="157">诺福克岛</option><option value="158">北马里亚纳群岛</option><option value="159">挪威</option><option value="160">阿曼</option><option value="161">巴基斯坦</option><option value="162">帕劳群岛</option><option value="163">巴勒斯坦地区</option><option value="164">巴拿马</option><option value="165">巴布亚新几内亚</option><option value="166">巴拉圭</option><option value="167">秘鲁</option><option value="168">菲律宾</option><option value="169">皮特凯恩</option><option value="170">波兰</option><option value="171">葡萄牙</option><option value="172">波多黎各</option><option value="173">卡塔尔</option><option value="174">留尼汪</option><option value="175">罗马尼亚</option><option value="176">俄罗斯联邦</option><option value="177">卢旺达</option><option value="178">圣赫勒拿</option><option value="179">圣基茨和尼维斯</option><option value="180">圣卢西亚</option><option value="181">圣文森特和格林纳丁斯</option><option value="182">萨摩亚</option><option value="183">圣马力诺</option><option value="184">圣多美和普林西比</option><option value="185">沙特阿拉伯</option><option value="186">塞内加尔</option><option value="187">塞尔维亚</option><option value="188">塞舌尔</option><option value="189">塞拉利昂</option><option value="190">新加坡</option><option value="191">斯洛伐克共和国</option><option value="192">斯洛文尼亚</option><option value="193">所罗门群岛</option><option value="194">索马里</option><option value="195">南非</option><option value="196">南乔治亚和南桑德威奇群岛</option><option value="197">南苏丹</option><option value="198">西班牙</option><option value="199">斯里兰卡</option><option value="200">圣皮埃尔和密克隆</option><option value="201">苏里南</option><option value="202">斯瓦尔巴和扬马延群岛</option><option value="203">斯威士兰</option><option value="204">瑞典</option><option value="205">瑞士</option><option value="206">塔吉克斯坦</option><option value="207">坦桑尼亚联合共和国</option><option value="208">泰国</option><option value="209">东帝汶</option><option value="210">多哥</option><option value="211">托克劳</option><option value="212">汤加</option><option value="213">特立尼达和多巴哥</option><option value="214">突尼斯</option><option value="215">土尔其</option><option value="216">土库曼斯坦</option><option value="217">特克斯和凯科斯群岛</option><option value="218">图瓦卢</option><option value="219">美国</option><option value="220">乌干达</option><option value="221">乌克兰</option><option value="222">阿拉伯联合酋长国</option><option value="223">英国</option><option value="224">美国本土外小岛屿</option><option value="225">乌拉圭</option><option value="226">乌兹别克斯坦</option><option value="227">瓦努阿图</option><option value="228">委内瑞拉</option><option value="229">越南</option><option value="230">英属维尔京群岛</option><option value="231">美属维尔京群岛</option><option value="232">瓦利斯和富图纳群岛</option><option value="233">西撒哈拉</option><option value="234">也门</option><option value="235">赞比亚</option><option value="236">津巴布韦</option></select><label for="country::content" class="x9w">国家/地区</label></span></td><td class="xu6"><img id="countrySuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td></tr><tr><td></td><td class="x51"><div id="j_id16:j_id17"><div id="afr::msgForcountry"></div></div></td></tr>

<!-- 			<tr class="x1zt xry" id="namePanel">
			<td class="x15 x4z">
			<label>姓名</label>
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
											<span class="x1x9 x1u">
												<input id="firstName" name="firstName" class="x25" maxlength="100" placeholder="中文名字" type="text"><label for="firstName" class="x9w" title="请输入您的名字" required="required">中文名字</label>
											</span>
											</td>
											<td><img id="firstNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td>
										</tr>
										</tbody>
									</table>
								</div>
								<div><div id="j_id21:j_id22"><div id="afr::msgForfirstName"></div></div></div>
								</div>
							</td>
							<td valign="top">
								<div id="j_id23" class="x1a">
								<div>
								<table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id24" class="x1a">
								<tbody><tr><td><img id="j_id25" src="" alt="" width="3" height="0px"></td></tr></tbody>
								</table>
								</div>
								<div><div id="j_id26:j_id27"><div id="afr::msgFornull"></div></div></div>
								</div>
							</td>
							<td valign="top">
								<div id="j_id28" class="x1a">
									<div>
									<table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id29" class="x1a">
										<tbody>
											<tr>
											<td>
												<span class="p_AFHoverTarget x1x9 x1u">
													<input id="lastName" name="lastName" class="x25" maxlength="100" placeholder="中文姓氏" type="text"><label for="lastName" class="x9w" title="请输入您的姓氏" required="required">中文姓氏</label>
												</span>
											</td><td><img id="lastNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td>
											</tr>
										</tbody>
									</table>
									</div><div><div id="j_id30:j_id49"><div id="afr::msgForlastName"></div></div></div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			</tr> -->
<tr class="x1zt xry" id="namePanel"><td class="x15 x4z"><label>姓名</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id18" class="x1a"><tbody><tr><td valign="top"><div id="j_id19" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id20" class="x1a"><tbody><tr><td><span class="x1x9 x1u"><input id="firstName" name="firstName" class="x25" maxlength="100" placeholder="中文名字" type="text" title="请输入您的名字" required="required"><label for="firstName" class="x9w">中文名字</label></span></td><td><img id="firstNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></div><div><div id="j_id21:j_id22"><div id="afr"></div></div></div></div></td><td valign="top"><div id="j_id23" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id24" class="x1a"><tbody><tr><td><img id="j_id25" src="" alt="" width="3" height="0px"></td></tr></tbody></table></div><div><div id="j_id26:j_id27"><div id="afr::msgFornull"></div></div></div></div></td><td valign="top"><div id="j_id28" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id29" class="x1a"><tbody><tr><td><span  class="x1x9 x1u"><input id="lastName" name="lastName" class="x25" maxlength="100" placeholder="中文姓氏" type="text" title="请输入您的姓氏" required="required"><label for="lastName::content" class="x9w">中文姓氏</label></span></td><td><img id="lastNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></div><div><div id="j_id30:j_id49"><div id="afr"></div></div></div></div></td></tr></tbody></table></td></tr>



			<tr class="x1zt xry" id="jobTitlePanel"><td class="x15 x4z">
			<label>职位</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr>
			   <td>
				 <span class="x1z">
					<select id="jobTitle" name="jobTitle" class="x2h" title="-选择-" required="required">
						<option value="">-选择-</option><option value="0">局域网管理员</option><option value="1">网络工程师</option><option value="2">硬件工程师</option>
						<option value="3">软件工程师</option><option value="4">电脑技术员</option><option value="5">系统管理员/网管</option><option value="6">IT管理员</option>
						<option value="7">通信技术工程师</option><option value="8">数据库工程师</option><option value="9">IT从业人员</option><option value="10">企业管理员</option>
						<option value="11">财务</option><option value="12">营销</option><option value="13">教师</option><option value="14">医疗/护理</option>
						<option value="15">律师/法务</option><option value="16">其它</option>
					</select>
				</span>
			   </td><td class="xu6"><img id="jobTitleSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			 </tr>

			<tr><td></td><td class="x51"><div id="j_id31:j_id50"><div id="afr::msgForjobTitle"></div></div></td></tr>


			<tr class="x1zt xry" id="workPhonePanel"><td class="x15 x4z">
			<label>办公电话</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1xa x1u"><input id="workPhone" name="workPhone" class="x25" maxlength="50" placeholder="" type="text"  required="required"><label for="workPhone" class="x9w">办公电话</label></span></td><td class="xu6"><img id="workPhoneSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id32:j_id51"><div id="afr::msgForworkPhone"></div></div></td></tr><tr><td></td><td class="x51"><div id="j_id33" style="margin-top:15px"></div></td></tr>


			<tr class="x1zt xry" id="companyNamePanel">
			<td class="x15 x4z"><label>邮箱</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="email" name="email" class="x25" maxlength="100" placeholder="" type="text" pattern="^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$" title="您的电子邮件格式不正确" required="required" ><label for="email" class="x9w">邮箱</label></span></td><td class="xu6"><img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<!-- <tr><td></td><td class="x51"><div id="j_id34:j_id52"><div id="afr::msgForcompanyName"></div></div></td></tr> -->


			<tr class="x1zt xry" id="address1Panel">
			<td class="x15 x4z">
			<label>公司名称</label></td>
			<td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="companyName" name="companyName" class="x25" maxlength="240" placeholder="" type="text" title="为了更好的服务您>请输入您的公司名称" required="required"><label for="companyName" class="x9w">公司名称</label></span></td><td class="xu6"><img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id34:j_id52"><div id="afr::msgForcompanyName"></div></div></td></tr><tr class="x1zt xry" id="address1Panel"><td class="x15 x4z">


			<label>地址</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u"><input id="address" name="address" class="x25" maxlength="240" placeholder="" type="text" title="为了更好的服务您>请输入您的地址" required="required"><label for="address" class="x9w">地址</label></span></td><td class="xu6"><img id="address1SuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td></tr><tr><td></td><td class="x51"><div id="j_id35:j_id53"><div id="afr::msgForaddress1"></div></div></td></tr><tr><td></td><td class="x51"><div id="j_id36:j_id54"><div id="afr::msgForaddress2"></div></div></td></tr>

			<!-- 城市 -->
			<tr class="x1zt xry" id="cityPanel">
				<td class="x15 x4z">
					<label>城市</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x7 x1u">
										<input id="city" name="city" class="x25" maxlength="50" placeholder="" type="text" title="为了更好的服务您>请输入您所在的城市" required="required">
										<label for="city" class="x9w">城市</label>
									</span>
								</td>
								<td class="xu6"><img id="citySuccessIcon" alt="" 	class="x1z1 xkx" style="display:none" src=""></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

	<!-- 		<tr><td></td><td class="x51"><div id="j_id37:j_id55"><div id="afr::msgForcity"></div></div></td>
			</tr> -->


			<!-- <tr class="x1zt xry" id="statePanel"><td class="x15 x4z">
			<label>省/自治区/直辖市</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span id="state" class="x1z"><select id="state::content" name="state" class="x2h"><option value="">-选择-</option></select><label for="state::content" class="x9w">省/自治区/直辖市</label></span></td><td class="xu6"><img id="stateSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id38:j_id56"><div id="afr::msgForstate"></div></div></td>
			</tr>

			<tr class="x1zt xry" id="postalCodePanel"><td class="x15 x4z">
			<label>邮政编码</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span id="postalCode" class="x1xf x1u"><input id="postalCode::content" name="postalCode" class="x25" maxlength="50" placeholder="" type="text"><label for="postalCode::content" class="x9w">邮政编码</label></span></td><td class="xu6"><img id="postalCodeSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr> -->


			<!-- <tr><td></td><td class="x51"><div id="j_id39:j_id57"><div id="afr::msgForpostalCode"></div></div></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id40" style="margin-top:7px"></div></td>
			</tr> -->

			<tr><td></td><td class="x51"><span id="subscription1" class="x1y2 x1v" _adftrc="subscription1::icon-style"><span class="x2e"><span class="xjw">
			<input id="subscription1::content" name="subscription1" class="xsq" type="checkbox" value="t" onclick="this.focus()"></span><label for="subscription1::content" class="xss">是的，请向我发送有关 SITEVIEW 产品、服务和活动的电子邮件。</label></span></span></td>
			</tr>

			<tr><td></td><td class="x51">
			<!-- <div id="cb1" class="x1xp xg5 p_AFTextOnly" _afrgrp="0">

			<a href="#" onclick="this.focus();return false" class="xg7"><span class="xgf">注册</span></a>
			
			</div> -->
			<input class="x1xp xg5 p_AFTextOnly" _afrgrp="0" type="submit" value="注册">
			</td>
			</tr>

			<!-- </tbody></table></td></tr></tbody></table></div></span></span>
			<input type="hidden" name="org.apache.myfaces.trinidad.faces.FORM" value="f1">
			<input name="Adf-Window-Id" type="hidden" value="w0">
			<span id="f1::postscript">
				<span id="f1::postscript:st"><input type="hidden" name="javax.faces.ViewState" value="!-2woq62x75"></span>
			</span>
			<input name="Adf-Page-Id" id="Adf-Page-Id" type="hidden" autocomplete="off" value="0"> -->

			
			</form>
			</div></div>

			<div class="xtv p_AFCore p_AFDefault"></div>
</div>

</body>
</html>