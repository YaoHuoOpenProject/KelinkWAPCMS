<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
	Sub Page_Load()


		Conn_Open()

		Conn.Execute("UPDATE [Farm] SET [ShiFeiCiShu]=0")

		Conn_Close()
	End Sub
	Call Page_Load()
%>