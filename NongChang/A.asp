<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
	Sub Page_Load()


		Conn_Open()

		Conn.Execute("ALTER TABLE [Farm_CaiDi] ADD [JiaSu] [int] NULL DEFAULT ((0))")
		Conn.Execute("UPDATE [Farm_CaiDi] SET [JiaSu]='0'")

    Conn.Execute("ALTER TABLE [Farm] ADD [TouCaiCiShu] [int] NULL DEFAULT ((0))")
		Conn.Execute("ALTER TABLE [Farm_SheZhi] ADD [ShiFeiCiShu] [int] NULL DEFAULT ((10))")
		Conn.Execute("ALTER TABLE [Farm_SheZhi] ADD [TuDiJiaGe] [int] NULL DEFAULT ((2000000))")
		
		
		Conn_Close()
	End Sub
	Call Page_Load()
%>