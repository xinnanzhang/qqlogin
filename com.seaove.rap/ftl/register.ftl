<!DOCTYPE html>
<html class="p_AFMaximized" dir="ltr" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>SITEVIEW | �����ʻ�</title>
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
					alert("���������������ԭ���벻ƥ��!");
					return false;

				}else if(!verifyTelNumber(workPhone)){

					alert("����д��ȷ�ĵ绰���룬�磺13988888888��0731-7777777��0731-88888888");
					return false;
				}else{
					return true;
				}			
			}

			function verifyTelNumber(obj){
			    var pattern_Mobile =/^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; //�ֻ���ʽ����Ķ�
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
	<span class="x1wy">�������� SITEVIEW �ʻ�</span><div id="s1" style="margin-top:50px"></div>

	<span class="x1wz">������ͨ�� SITEVIEW �ʻ����ʸ������߷���Ӧ�ó�����������������ڴ����ʻ�ʱѡ����� SITEVIEW ͨ�ţ���ע�����ġ�</span>
	<div id="s2" style="margin-top:21px"></div><span class="x1wz">���� SITEVIEW �ʻ���</span><img id="s3" src="" alt="" width="3px" height="0px"><a id="signinlink" class="x1x1 xh6 p_AFTextOnly" href="http://om.SITEVIEW.com/itsm/webloader">
	<span class="x15r">��¼</span></a><div id="m1" class="x71" _afrglobalonly="true"></div>

	<form id="f1" name="f1" class="x1y1 x11b" method="post" onsubmit="return check()" action="" >
		<span id="usrinf" class="x1a" style="width=100%">
		<span id="j_id6" class="x1a"><div id="j_id7" class="x19">
		<table cellpadding="0" cellspacing="0" border="0" summary="" style="width: auto"><tbody><tr><td class="x4w" colspan="1">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="">
		<tbody>
			<tr><td></td><td></td></tr>

			<tr class="x1zt xry">
				<td class="x15 x4z">
					<label>�û���</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
								<span class="x1x8 x1u">
															<input id="username" name="username" class="x25" maxlength="80" placeholder="" type="text" pattern="[\u4e00-\u9fa5_a-zA-Z0-9_]{5,16}" title="�û������5���ַ��������16���ַ�,���ܰ��������ַ�" required="required"><label for="username" class="x9w">�û���</label>
														</span>
														</td>
														<td class="xu6">
															<span class="x1xz">�����벻Ҫ���������ַ����û�����</span>

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
					<label>����</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x8 x1u">
																<input id="password" name="password" class="x25" maxlength="80" placeholder="" type="password" pattern="^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,18}$" autocomplete="off" title="����Ϊ6-18 ������ϵ�����,�Ҳ��ܰ����ո�" required="required"><label for="password" class="x9w">����</label>
															</span>
														</td>
															<td class="xu6"><span id="passwordinfo" class="x1xz">�������6���ַ��������18���ַ�,�Ҳ��ܰ����ո�</span>
</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

			<!-- <tr><td></td><td class="x51"><div id="j_id10:j_id11"><div id="afr::msgForpassword"></div></div></td></tr> -->

			<tr class="x1zt xry" id="retypePasswordPanel">
				<td class="x15 x4z">	
					<label>������������</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x8 x1u">
										<input id="retypePassword" name="retypePassword" class="x25" maxlength="80" placeholder="" type="password" autocomplete="off" equalTo="password" title="��������������" required="required">
										<label for="retypePassword" class="x9w">������������</label>
									</span>
								</td>
								<td class="xu6"><span id="passwordinfo" class="x1xz">����һ����</span></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>


			<tr class="x1zt xry" id="sexPanel">
				<td class="x15 x4z">
					<label>�Ա�</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
								<span class="seaove">
									<input id="sex" type="radio" name="sex" value="����" checked="checked" />���� <input id="sex2" type="radio" name="sex" value="С��" />С��
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
			<label>����/����</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1z"><select id="country" name="country" class="x2h" title="-ѡ��-" required="required"><option value="">-ѡ��-</option><option value="0">�й�</option><option value="1">���</option><option value="2">����</option><option value="3">̨��</option><option value="4">������</option><option value="5">����������</option><option value="6">����������</option><option value="7">������Ħ��</option><option value="8">������</option><option value="9">������</option><option value="10">��������</option><option value="11">�ϼ���</option><option value="12">����ϺͰͲ���</option><option value="13">����͢</option><option value="14">��������</option><option value="15">��³�͵�</option><option value="16">�Ĵ�����</option><option value="17">�µ���</option><option value="18">�����ݽ�</option><option value="19">�͹���</option><option value="20">����</option><option value="21">�ϼ�����</option><option value="22">�ͰͶ�˹</option><option value="23">�׶���˹</option><option value="24">����ʱ</option><option value="25">������</option><option value="26">����</option><option value="27">��Ľ��Ⱥ��</option><option value="28">����</option><option value="29">����ά��</option><option value="30">��˹���Ǻͺ�����ά��</option><option value="31">��������</option><option value="32">��ά�ص�</option><option value="33">����</option><option value="34">Ӣ��ӡ�������</option><option value="35">������³������</option><option value="36">��������</option><option value="37">�����ɷ���</option><option value="38">��¡��</option><option value="39">����կ</option><option value="40">����¡</option><option value="41">���ô�</option><option value="42">��ý�</option><option value="43">����Ⱥ��</option><option value="44">�зǹ��͹�</option><option value="45">է��</option><option value="46">����</option><option value="47">ʥ����</option><option value="48">�ƿ�˹Ⱥ��</option><option value="49">���ױ���</option><option value="50">��Ħ��</option><option value="51">�չ�</option><option value="52">�չ��������͹�</option><option value="53">���Ⱥ��</option><option value="54">��˹�����</option><option value="55">���ص���</option><option value="56">���޵���</option><option value="57">����·˹</option><option value="58">�ݿ˹��͹�</option><option value="59">����</option><option value="60">������</option><option value="61">�������</option><option value="62">������ӹ��͹�</option><option value="63">��϶��</option><option value="64">����</option><option value="65">�����߶�</option><option value="66">���������</option><option value="67">����������</option><option value="68">��ɳ����</option><option value="69">���������</option><option value="70">������Ⱥ�������ά��˹Ⱥ����</option><option value="71">����Ⱥ��</option><option value="72">쳼�</option><option value="73">����</option><option value="74">����</option><option value="75">����������</option><option value="76">��������������</option><option value="77">�����ϰ������</option><option value="78">����</option><option value="79">�Ա���</option><option value="80">��������</option><option value="81">�¹�</option><option value="82">����</option><option value="83">ֱ������</option><option value="84">ϣ��</option><option value="85">������</option><option value="86">�����ɴ�</option><option value="87">�ϵ�����</option><option value="88">�ص�</option><option value="89">Σ������</option><option value="90">������</option><option value="91">�����Ǳ���</option><option value="92">������</option><option value="93">����</option><option value="94">�յº��������Ⱥ��</option><option value="95">��ٸ�</option><option value="96">�鶼��˹</option><option value="97">������</option><option value="98">����</option><option value="99">ӡ��</option><option value="100">ӡ��������</option><option value="101">������</option><option value="102">������</option><option value="103">��ɫ��</option><option value="104">�����</option><option value="105">�����</option><option value="106">�ձ�</option><option value="107">Լ��</option><option value="108">������˹̹</option><option value="109">������</option><option value="110">�����˹</option><option value="111">����</option><option value="112">������</option><option value="113">������</option><option value="114">������˹˹̹</option><option value="115">���������������͹�</option><option value="116">����ά��</option><option value="117">�����</option><option value="118">������</option><option value="119">��������</option><option value="120">������</option><option value="121">��֧��ʿ��</option><option value="122">������</option><option value="123">¬ɭ��</option><option value="124">�����</option><option value="125">����˹��</option><option value="126">����ά</option><option value="127">��������</option><option value="128">�������</option><option value="129">����</option><option value="130">�����</option><option value="131">���ܶ�Ⱥ��</option><option value="132">�������</option><option value="133">ë��������</option><option value="134">ë����˹</option><option value="135">��Լ�ص�</option><option value="136">ī����</option><option value="137">�ܿ�������������</option><option value="138">Ħ�����߹��͹�</option><option value="139">Ħ�ɸ�</option><option value="140">�ɹ�</option><option value="141">��ɽ</option><option value="142">����������</option><option value="143">Ħ���</option><option value="144">Īɣ�ȿ�</option><option value="145">���</option><option value="146">���ױ���</option><option value="147">�³</option><option value="148">�Ჴ��</option><option value="149">����</option><option value="150">����������˹</option><option value="151">�¿��������</option><option value="152">������</option><option value="153">�������</option><option value="154">���ն�</option><option value="155">��������</option><option value="156">Ŧ����</option><option value="157">ŵ���˵�</option><option value="158">����������Ⱥ��</option><option value="159">Ų��</option><option value="160">����</option><option value="161">�ͻ�˹̹</option><option value="162">����Ⱥ��</option><option value="163">����˹̹����</option><option value="164">������</option><option value="165">�Ͳ����¼�����</option><option value="166">������</option><option value="167">��³</option><option value="168">���ɱ�</option><option value="169">Ƥ�ؿ���</option><option value="170">����</option><option value="171">������</option><option value="172">�������</option><option value="173">������</option><option value="174">������</option><option value="175">��������</option><option value="176">����˹����</option><option value="177">¬����</option><option value="178">ʥ������</option><option value="179">ʥ���ĺ���ά˹</option><option value="180">ʥ¬����</option><option value="181">ʥ��ɭ�غ͸����ɶ�˹</option><option value="182">��Ħ��</option><option value="183">ʥ����ŵ</option><option value="184">ʥ��������������</option><option value="185">ɳ�ذ�����</option><option value="186">���ڼӶ�</option><option value="187">����ά��</option><option value="188">�����</option><option value="189">��������</option><option value="190">�¼���</option><option value="191">˹�工�˹��͹�</option><option value="192">˹��������</option><option value="193">������Ⱥ��</option><option value="194">������</option><option value="195">�Ϸ�</option><option value="196">�������Ǻ���ɣ������Ⱥ��</option><option value="197">���յ�</option><option value="198">������</option><option value="199">˹������</option><option value="200">ʥƤ�������ܿ�¡</option><option value="201">������</option><option value="202">˹�߶��ͺ�������Ⱥ��</option><option value="203">˹��ʿ��</option><option value="204">���</option><option value="205">��ʿ</option><option value="206">������˹̹</option><option value="207">̹ɣ�������Ϲ��͹�</option><option value="208">̩��</option><option value="209">������</option><option value="210">���</option><option value="211">�п���</option><option value="212">����</option><option value="213">�������Ͷ�͸�</option><option value="214">ͻ��˹</option><option value="215">������</option><option value="216">������˹̹</option><option value="217">�ؿ�˹�Ϳ���˹Ⱥ��</option><option value="218">ͼ��¬</option><option value="219">����</option><option value="220">�ڸɴ�</option><option value="221">�ڿ���</option><option value="222">����������������</option><option value="223">Ӣ��</option><option value="224">����������С����</option><option value="225">������</option><option value="226">���ȱ��˹̹</option><option value="227">��Ŭ��ͼ</option><option value="228">ί������</option><option value="229">Խ��</option><option value="230">Ӣ��ά����Ⱥ��</option><option value="231">����ά����Ⱥ��</option><option value="232">����˹�͸�ͼ��Ⱥ��</option><option value="233">��������</option><option value="234">Ҳ��</option><option value="235">�ޱ���</option><option value="236">��Ͳ�Τ</option></select><label for="country::content" class="x9w">����/����</label></span></td><td class="xu6"><img id="countrySuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td></tr><tr><td></td><td class="x51"><div id="j_id16:j_id17"><div id="afr::msgForcountry"></div></div></td></tr>

<!-- 			<tr class="x1zt xry" id="namePanel">
			<td class="x15 x4z">
			<label>����</label>
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
												<input id="firstName" name="firstName" class="x25" maxlength="100" placeholder="��������" type="text"><label for="firstName" class="x9w" title="��������������" required="required">��������</label>
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
													<input id="lastName" name="lastName" class="x25" maxlength="100" placeholder="��������" type="text"><label for="lastName" class="x9w" title="��������������" required="required">��������</label>
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
<tr class="x1zt xry" id="namePanel"><td class="x15 x4z"><label>����</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id18" class="x1a"><tbody><tr><td valign="top"><div id="j_id19" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id20" class="x1a"><tbody><tr><td><span class="x1x9 x1u"><input id="firstName" name="firstName" class="x25" maxlength="100" placeholder="��������" type="text" title="��������������" required="required"><label for="firstName" class="x9w">��������</label></span></td><td><img id="firstNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></div><div><div id="j_id21:j_id22"><div id="afr"></div></div></div></div></td><td valign="top"><div id="j_id23" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id24" class="x1a"><tbody><tr><td><img id="j_id25" src="" alt="" width="3" height="0px"></td></tr></tbody></table></div><div><div id="j_id26:j_id27"><div id="afr::msgFornull"></div></div></div></div></td><td valign="top"><div id="j_id28" class="x1a"><div><table cellpadding="0" cellspacing="0" border="0" summary="" id="j_id29" class="x1a"><tbody><tr><td><span  class="x1x9 x1u"><input id="lastName" name="lastName" class="x25" maxlength="100" placeholder="��������" type="text" title="��������������" required="required"><label for="lastName::content" class="x9w">��������</label></span></td><td><img id="lastNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></div><div><div id="j_id30:j_id49"><div id="afr"></div></div></div></div></td></tr></tbody></table></td></tr>



			<tr class="x1zt xry" id="jobTitlePanel"><td class="x15 x4z">
			<label>ְλ</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr>
			   <td>
				 <span class="x1z">
					<select id="jobTitle" name="jobTitle" class="x2h" title="-ѡ��-" required="required">
						<option value="">-ѡ��-</option><option value="0">����������Ա</option><option value="1">���繤��ʦ</option><option value="2">Ӳ������ʦ</option>
						<option value="3">�������ʦ</option><option value="4">���Լ���Ա</option><option value="5">ϵͳ����Ա/����</option><option value="6">IT����Ա</option>
						<option value="7">ͨ�ż�������ʦ</option><option value="8">���ݿ⹤��ʦ</option><option value="9">IT��ҵ��Ա</option><option value="10">��ҵ����Ա</option>
						<option value="11">����</option><option value="12">Ӫ��</option><option value="13">��ʦ</option><option value="14">ҽ��/����</option>
						<option value="15">��ʦ/����</option><option value="16">����</option>
					</select>
				</span>
			   </td><td class="xu6"><img id="jobTitleSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			 </tr>

			<tr><td></td><td class="x51"><div id="j_id31:j_id50"><div id="afr::msgForjobTitle"></div></div></td></tr>


			<tr class="x1zt xry" id="workPhonePanel"><td class="x15 x4z">
			<label>�칫�绰</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1xa x1u"><input id="workPhone" name="workPhone" class="x25" maxlength="50" placeholder="" type="text"  required="required"><label for="workPhone" class="x9w">�칫�绰</label></span></td><td class="xu6"><img id="workPhoneSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id32:j_id51"><div id="afr::msgForworkPhone"></div></div></td></tr><tr><td></td><td class="x51"><div id="j_id33" style="margin-top:15px"></div></td></tr>


			<tr class="x1zt xry" id="companyNamePanel">
			<td class="x15 x4z"><label>����</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="email" name="email" class="x25" maxlength="100" placeholder="" type="text" pattern="^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$" title="���ĵ����ʼ���ʽ����ȷ" required="required" ><label for="email" class="x9w">����</label></span></td><td class="xu6"><img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<!-- <tr><td></td><td class="x51"><div id="j_id34:j_id52"><div id="afr::msgForcompanyName"></div></div></td></tr> -->


			<tr class="x1zt xry" id="address1Panel">
			<td class="x15 x4z">
			<label>��˾����</label></td>
			<td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u loqateAutocomplete ui-autocomplete-input"><input id="companyName" name="companyName" class="x25" maxlength="240" placeholder="" type="text" title="Ϊ�˸��õķ�����>���������Ĺ�˾����" required="required"><label for="companyName" class="x9w">��˾����</label></span></td><td class="xu6"><img id="companyNameSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id34:j_id52"><div id="afr::msgForcompanyName"></div></div></td></tr><tr class="x1zt xry" id="address1Panel"><td class="x15 x4z">


			<label>��ַ</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span class="x1x7 x1u"><input id="address" name="address" class="x25" maxlength="240" placeholder="" type="text" title="Ϊ�˸��õķ�����>���������ĵ�ַ" required="required"><label for="address" class="x9w">��ַ</label></span></td><td class="xu6"><img id="address1SuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td></tr><tr><td></td><td class="x51"><div id="j_id35:j_id53"><div id="afr::msgForaddress1"></div></div></td></tr><tr><td></td><td class="x51"><div id="j_id36:j_id54"><div id="afr::msgForaddress2"></div></div></td></tr>

			<!-- ���� -->
			<tr class="x1zt xry" id="cityPanel">
				<td class="x15 x4z">
					<label>����</label>
				</td>
				<td valign="top" class="xu4 xs8">
					<table cellpadding="0" cellspacing="0" border="0" summary="">
						<tbody>
							<tr>
								<td>
									<span class="x1x7 x1u">
										<input id="city" name="city" class="x25" maxlength="50" placeholder="" type="text" title="Ϊ�˸��õķ�����>�����������ڵĳ���" required="required">
										<label for="city" class="x9w">����</label>
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
			<label>ʡ/������/ֱϽ��</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span id="state" class="x1z"><select id="state::content" name="state" class="x2h"><option value="">-ѡ��-</option></select><label for="state::content" class="x9w">ʡ/������/ֱϽ��</label></span></td><td class="xu6"><img id="stateSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id38:j_id56"><div id="afr::msgForstate"></div></div></td>
			</tr>

			<tr class="x1zt xry" id="postalCodePanel"><td class="x15 x4z">
			<label>��������</label></td><td valign="top" class="xu4 xs8"><table cellpadding="0" cellspacing="0" border="0" summary=""><tbody><tr><td><span id="postalCode" class="x1xf x1u"><input id="postalCode::content" name="postalCode" class="x25" maxlength="50" placeholder="" type="text"><label for="postalCode::content" class="x9w">��������</label></span></td><td class="xu6"><img id="postalCodeSuccessIcon" alt="" class="x1z1 xkx" style="display:none" src=""></td></tr></tbody></table></td>
			</tr> -->


			<!-- <tr><td></td><td class="x51"><div id="j_id39:j_id57"><div id="afr::msgForpostalCode"></div></div></td>
			</tr>

			<tr><td></td><td class="x51"><div id="j_id40" style="margin-top:7px"></div></td>
			</tr> -->

			<tr><td></td><td class="x51"><span id="subscription1" class="x1y2 x1v" _adftrc="subscription1::icon-style"><span class="x2e"><span class="xjw">
			<input id="subscription1::content" name="subscription1" class="xsq" type="checkbox" value="t" onclick="this.focus()"></span><label for="subscription1::content" class="xss">�ǵģ������ҷ����й� SITEVIEW ��Ʒ������ͻ�ĵ����ʼ���</label></span></span></td>
			</tr>

			<tr><td></td><td class="x51">
			<!-- <div id="cb1" class="x1xp xg5 p_AFTextOnly" _afrgrp="0">

			<a href="#" onclick="this.focus();return false" class="xg7"><span class="xgf">ע��</span></a>
			
			</div> -->
			<input class="x1xp xg5 p_AFTextOnly" _afrgrp="0" type="submit" value="ע��">
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