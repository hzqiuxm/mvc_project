<%@ page language="java" import="java.util.*,java.io.*"
         pageEncoding="ISO-8859-1"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">
</head>
<body>
<br>
22223
<div align="right" style="background-color: red">
  <iframe>
<%
  out.clear();
  out = pageContext.pushBody();
  response.setContentType("application/pdf");

  try {
    String strPdfPath = new String("D://test.PDF");
    //判断该路径下的文件是否存在
    File file = new File(strPdfPath);
    if (file.exists()) {
      DataOutputStream temps = new DataOutputStream(response
              .getOutputStream());
      DataInputStream in = new DataInputStream(
              new FileInputStream(strPdfPath));

      byte[] b = new byte[2048];
      while ((in.read(b)) != -1) {
        temps.write(b);
        temps.flush();
      }

      in.close();
      temps.close();
    } else {
      out.print(strPdfPath + " 文件不存在!");
    }

  } catch (Exception e) {
    out.println(e.getMessage());
  }
%>
  </iframe>
</div>

</body>
</html>