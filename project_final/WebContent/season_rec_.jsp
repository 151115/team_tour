<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="css/style_season.css" />
</head>
<body>
	<jsp:include page="header3.jsp"></jsp:include>
	<div class="container">
		<div class="season_table">
			<table class="season_table" style="width: 300px;">
				<tbody class="season_table_tbody">
				<tr>
					<td class="spring">��</td>
					<td class="summer">����</td>
					<td class="autumn">����</td>
					<td class="winter">�ܿ�</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="fullbody">
			<p class = "open">���� ��õ�ϴ� ����� ������</p>
		<hr></hr>
		<br>
		<br>
	
			
				<img class="spot_img spot_1_img" alt="spring_01" src="images/season_page/spring_01.jpg">
			
			<div class="spot_1_info">
				<div id="tab-1">
				<p class="spot_1">����ȣ�����¿�</p>
				<hr style="weight: 100px;">
				<table id="info_table" style="float:left;">
					<tr>
						<th scope="row">���ּ�</th>
						<td class = "spot_td">���ֱ����� �ϱ� ��ȿ�� 443-5</td>
					</tr>

					<tr>
						<th scope="row">����ȭ</th>
						<td class = "spot_td">062-613-7891</td>
					</tr>
					<tr>
						<th scope="row">������</th>
						<td class = "spot_td">���ֱ����� Ǫ�����û����</td>
					</tr>
				</table>
			</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		<hr></hr>
		<div class="theme_deatil" style="weight: 50%;">
			<p class="information">
				����ȣ�� ������ ����� ������� �ÿ��� �ٶ��� �Բ� ���� �� �ִ� ���� ȣ�����¿� ���� ���� ����. ȣ�����¿��� �����
				��ȿ�縦 �Ѿ �Ҽ���� �����ϱ� ���� ����ȣ ���� �ڸ� ��� �ִ�.<br /> 2006�� 3���� ������ ��
				�ڿ������н������� �ùε��� �޽İ������� ����ް� �ִ�. 2006�� 3���� ������ �� �ڿ������н������� �ùε��� �޽İ�������
				����ް� �ִ�.<br /> �����Ĺ���,���¿���,�߻�ȭ�׸���,���� Ž���,������,���������� ���� ������, ȣ�� �ȿ���
				���峪�� �������� �������������� �ִ�.
			</p>
		</div>
		<div class="contwrap">
		<br><br>
		<hr></hr>
		<br><br><br><br>
			<h3 class="cont_title">�̿�����</h3>
			<div class="cont_wrap">
				<table class="cont_table">
					<caption>
						<p>�̿�ð� ���� �̿��� �����ü� ���������� ������ �ȳ��ϴ� ǥ�Դϴ�.</p>
						
					</caption>
					<colgroup>
						<col style="width: 150px;" />
						<col />
					</colgroup>
					
					<tbody>
					<br>
						<tr class="tr1">
							<th scope="row" class = th1>�̿�ð�</th>
							<td>������ : 09:00 ~ 19:00<br /> ������ : 09:00 ~ 18:00
							</td>
						</tr>
						<tr class="tr1">
							<th scope="row" class = th1>����</th>
							<td>����</td>
						</tr>
						<tr>
							<th scope="row"  class = th1>�̿���</th>
							<td>����</td>
						</tr>
						<tr class="tr1">
							<th scope="row"  class = th1>�����ü�</th>
							<td>�����ü� ���� (180�� ��������)</td>
						</tr>
						<tr class="tr1">
							<th scope="row"  class = th1>����������</th>
							<td>
								<div>����ȣ�����¿� : ��ȿ187 , ��ȿ188</div>
								<div>����ȣȣ�����¿� : ��ȿ188 , ��ȿ187</div>
								<div>���� : ��ȿ187 , ��ȿ188</div>
								<div>��ȿ��ȯ���� : ��ȿ188 , ��ȿ187</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<h3 class="cont_title" id="PosInfoHelp">�������</h3>
			<div class="cont_wrap">
				<table class="cont_table">
					<caption>
						<p>������� ������ �ȳ��ϴ� ǥ�Դϴ�.</p>
					</caption>
					<colgroup>
						<col style="width: 150px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">�������ټ�</th>
							<td>���߱����� �̿��Ͽ� ���ٰ���</td>
						</tr>
						<tr>
							<th scope="row">������</th>
							<td>����� ���� �������� ����</td>
						</tr>
						<tr>
							<th scope="row">�ȳ��� �� ��ǥ��</th>
							<td>����� �̿밡�� �����ȳ��� ����</td>
						</tr>
						<tr>
							<th scope="row">ȭ���</th>
							<td>����� �̿밡�� ȭ��� ����</td>
						</tr>
						<tr>
							<th scope="row">���Է�</th>
							<td>����� �����Ա� ���ٰ���</td>
						</tr>
						<tr>
							<th scope="row">�����</th>
							<td>����� ����� ���ٰ���</td>
						</tr>
						<tr>
							<th scope="row">��Ÿ</th>
							<td>��ü�� �뿩����</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript" src="js/season_change.js"
		charset="UTF-8"></script>
</body>
</html>