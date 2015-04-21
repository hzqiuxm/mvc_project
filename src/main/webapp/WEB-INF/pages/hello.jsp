<!DOCTYPE html>
<%--scrolling=scrolling--%>
<html lang="zh">
<body>
	<h1>${message}</h1>
	ddd1112
<jsp:include page="test1.jsp" flush="true"></jsp:include>
	<iframe id="iframe" src="http://contract-pdf.oss-cn-hangzhou.aliyuncs.com/1503271013483875.pdf"
			style="width:1024px;height:960px"></iframe>

	<%--<object data="http://yhtbucket001.oss-cn-hangzhou.aliyuncs.com/1503271013483875.pdf" type="application/pdf" width="300" height="200">--%>
		<%--alt : <a href="http://yhtbucket001.oss-cn-hangzhou.aliyuncs.com/1503271013483875.pdf">test.pdf </a>--%>
	<%--</object>--%>
</body>
</html>