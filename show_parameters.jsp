<%@ page import="java.util.*"  %>

<html>
<head>
  <title>ASI - 2005 - Apresentador de Parametros HTTP</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <style type="text/css">
   td { background-color: white; }
   .note { color: red; font-size: 9pt; }
  </style>
  </head>

<body>
<table cellspacing="3" cellpadding="2" bgcolor="#F4F4F4">
<tr bgcolor="cyan">
 <th>Parametro HTTP</th><th>Valor(es)</th>
</tr>
<%
 Enumeration allParams = request.getParameterNames();
 while(allParams.hasMoreElements())
 {
 	String param = (String)allParams.nextElement();
 	%>
 	<tr>
 	 <td>
 	  <br/><b><%= param %>:</b>
 	 </td><td> 
 	<%	
 	
 	
 	String[] values = request.getParameterValues(param); 	
 	for(int i = 0; i < values.length; i++)
 	{
 	%>
 	 <%= values[i] %> 	 	
 	<%	
 	} 
 	
 	%>
 	</td></tr>	 	
 	<%
 }
%>
</table>
</body>
</html>
