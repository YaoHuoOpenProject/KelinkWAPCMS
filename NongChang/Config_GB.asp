<%Session.CodePage=936%><!--#include file="../ASP_API/connGB.asp"--><!--#include file="../ASP_API/userconfigGB.asp"-->
<%
        
       
        Sub Conn_Open()
        
            'Dim Conn_Str
            'Conn_Str="driver={SQL server};server="&KL_SQL_SERVERIP&";uid="&KL_SQL_UserName&";pwd="&KL_SQL_PassWord&";database="&KL_Main_DatabaseName
            
            'Set Conn=Server.CreateObject("ADODB.Connection")
            'conn.ConnectionString=Conn_Str
            'conn.Open()
        
        End Sub
        
        Sub Conn_Close()
        
            Conn.Close()
        
        End Sub
        
      
       Function HuoQuURL()
	        HuoQuURL=Server.UrlEncode("http://"&Request.ServerVariables("HTTP_HOST")&request.ServerVariables("URL")&"?"&Request.ServerVariables("QUERY_STRING"))
	     End Function
        
        Function CheckSql(str)
            dim textstr
            textstr=LCase(str)
            textstr=replace(textstr,"'","��")
            textstr=replace(textstr,"%","��")
            textstr=replace(textstr,",","��")
            textstr=replace(textstr," ","")
            textstr=replace(textstr,"insert","��n��er��")
            textstr=replace(textstr,"select","��e��ec��")
            textstr=replace(textstr,"update","��p��at��")
            textstr=replace(textstr,"count","��o��nt")
            textstr=replace(textstr,"delete","��e��et��")
            textstr=replace(textstr,"where","��he��e")
            textstr=replace(textstr,"execute","��x��cut��")
            CheckSql=textstr
        End Function
        
        Function SuiJiZiFu(n)
            dim thechr 
            thechr = "" 
            for i=1 to n 
            dim zNum,zNum2 
            Randomize 
            zNum = CLng(25*Rnd) 
            zNum2 = CLng(10*Rnd) 
            if zNum2 mod 2 = 0 then 
                zNum = zNum + 97 
            else 
                zNum = zNum + 65 
            end if 
            thechr = thechr & chr(zNum) 
            next 
            SuiJiZiFu = thechr 

        End Function
        
        Function ZuiGaoID(BiaoMingChen)
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [ID] FROM ["+BiaoMingChen+"] ORDER BY [ID] DESC",Conn,1,1
            If Rs.EOF AND Rs.BOF Then
                ZuiGaoID=1
            Else
                ZuiGaoID=CLng(Rs("ID"))+1
            End If
            Rs.Close()
        
        End Function
        
        Function ChuLiDiZhi(DiZhi,BiaoShi)
        
            If InStr(DiZhi,"?")>0 Then
                ChuLiDiZhi=DiZhi&"&sid="&BiaoShi&"&siteid="&siteid&"&SessionID="&SessionID
            Else
                ChuLiDiZhi=DiZhi&"?sid="&BiaoShi&"&siteid="&siteid&"&SessionID="&SessionID
            End If
        
        End Function
        
        Sub TanChuLiuYan()
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [ID],[LiuYanID],[LiuYanMingChen],[LiuYanNeiRong],[LiuYanShiJian] FROM [Farm_LiuYan] WHERE [SuoShuNongChang]="&FarmID&" AND [ShiFouYiDu]='0' AND [siteid]="&siteid&" ORDER BY [ID]",Conn,1,1
            Dim ShiFouBaoHanXiTongXiaoXi
            ShiFouBaoHanXiTongXiaoXi=false
            
            Do While( Not Rs.EOF)
            
                If CLng(Rs("LiuYanID"))=0 Then
                    ShiFouBaoHanXiTongXiaoXi=true
                    Response.Write("<b>ϵͳ��Ϣ</b>")
                Else
                    Response.Write("������[<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&Rs("LiuYanID"),sid))&""">"&Server.HTMLEncode(Rs("LiuYanMingChen"))&"</a>]")
                End If
            
                Response.Write(":"_
                    &Server.HTMLEncode(Rs("LiuYanNeiRong"))&"<br/>")
                Conn.Execute("UPDATE [Farm_LiuYan] SET [ShiFouYiDu]='1' WHERE [SuoShuNongChang]="&FarmID&" AND [ShiFouYiDu]='0' AND [ID]="&Rs("ID")&" AND [siteid]="&siteid)
                Rs.MoveNext()
            Loop
            If ShiFouBaoHanXiTongXiaoXi Then
                Conn.Execute("DELETE FROM [Farm_LiuYan] WHERE [SuoShuNongChang]="&FarmID&" AND [ShiFouYiDu]='1' AND [LiuYanID]='0' AND [siteid]="&siteid)
            End If
            
        
        End Sub
        
        Sub YouXiDiBu(FID)
        
            
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp?ID="&FarmID,sid))&""">�ֿ�</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp?ID="&FID,sid))&""">�̵�</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp",sid))&""">�ھ�</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp",sid))&""">����</a><br/>")
            Response.Write("----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">ũ����ҳ</a>.<a href=""/wapindex.aspx?siteid="&siteid&"&amp;sid="&SessionID&""">������ҳ</a>")
            
        End Sub
        
        Function HuoQuNongChangMingChen(NongChangID)
        
            If NongChangID=0 Then
            
                HuoQuNongChangMingChen="ϵͳ"
                Exit Function
            
            End If
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [MingChen] FROM [Farm] WHERE [ID]="&NongChangID&" AND [siteid]="&siteid,Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
                Rs.Close()
                CuoWu("ũ��������")
            Else
                HuoQuNongChangMingChen=Rs("MingChen")
                Rs.Close()
            End If
        
        End Function
        
        Sub FaSongXiaoXi(ID,JieShouID,XiaoXiNeiRong)
        
            Conn.Execute("INSERT INTO [Farm_LiuYan]([ID],[SuoShuNongChang],[LiuYanID],[LiuYanMingChen],[LiuYanNeiRong],[ShiFouYiDu],[siteid])"_
                &"VALUES("&ZuiGaoID("Farm_LiuYan")&",N'"&JieShouID&"','"&ID&"',N'"&HuoQuNongChangMingChen(ID)&"',N'"&CheckSql(XiaoXiNeiRong)&"','0',"&siteid&")")
        
        End Sub
        
        Sub ZengJiaCaiDi()
        
            Dim Rs,TuDiWeiZhi,ZG_TuDiWeiZhi
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [TuDiWeiZhi] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" ORDER BY [TuDiWeiZhi] DESC",Conn,1,1
            If Rs.BOF AND Rs.EOF Then
                ZG_TuDiWeiZhi=1
            Else
                ZG_TuDiWeiZhi=CLng(Rs("TuDiWeiZhi"))+1
            End If
            Rs.Close()
            Conn.Execute("INSERT INTO [Farm_CaiDi]([ID],[TuDiWeiZhi],[ShiFouKongDi],[ShiFouWeiFanDi],[ShuCaiID],[ShuCaiMingChen],[ShengYuShuLiang],[ShiFouCunZaiGanHan],[ShiFouCunZaiZaCao],[ShiFouCunZaiBingChong],[ZhongZhiShiJian],[ChengShuShiJian],[SuoShuNongChang],[ZhongZhiJiDu],[DangQianJiDu],[siteid])"_
            &"VALUES(N'"&ZuiGaoID("Farm_CaiDi")&"',N'"&ZG_TuDiWeiZhi&"','1','0','0','','0','0','0','0','"&now()&"','"&now()&"','"&FarmID&"','0','0',"&siteid&")")
            
            
            Call FaSongXiaoXi(0,FarmID,"��ϲ�������һ��ϵͳ���͵Ĳ˵�")
        
        End Sub
        
        Sub ZengJiaJinBi(S_JinBi)
            Call ZengJiaJinBi2(S_JinBi,FarmID)
        End Sub
        
        Sub ZengJiaJinBi2(S_JinBi,F_ID)
        
            JinBi=JinBi+S_JinBi
            
            Conn.Execute("UPDATE [Farm] SET [JinBi]="&JinBi&" WHERE [ID]="&F_ID)
            Call FaSongXiaoXi(0,F_ID,"�������"&S_JinBi&"����ҡ�")
        
        End Sub
        
        Sub ZengJiaJingYan(S_JingYan)
            Call ZengJiaJingYan2(S_JingYan,FarmID)
        End Sub
        
        Sub ZengJiaJingYan2(S_JingYan,F_ID)
        
        
        
            JingYan=JingYan+CLng(S_JingYan)
            Dim XuYaoJingYan
            XuYaoJingYan=(CLng(DenJi)+1)*DenJiJiSuan
            
            Call FaSongXiaoXi(0,F_ID,"�����"&S_JingYan&"�㾭�顣")
            
            If JingYan>XuYaoJingYan Then
            
            
                DenJi=CLng(DenJi)+1
                JingYan=JingYan-XuYaoJingYan
                
                If DenJi Mod 5 = 0 Then
                    ZengJiaCaiDi()
                End If
                
                Conn.Execute("UPDATE [Farm_LinJu] SET [NongChangDenJi]="&DenJi&" WHERE [NongChangID]="&F_ID&" AND [siteid]="&siteid)
            
                Call FaSongXiaoXi(0,F_ID,"��ϲ����Ϊ"&DenJi&"����")
            
            End If
            
            
            Conn.Execute("UPDATE [Farm] SET [DenJi]="&DenJi&",[JingYan]="&JingYan&" WHERE [ID]="&F_ID&" AND [siteid]="&siteid)
        
        
        
        
        
        End Sub
        
        Function JiSuanShiJian(FenZhongShu)
        
        
            If FenZhongShu<60 Then
                JiSuanShiJian=CLng(FenZhongShu)+1&"����"
            Else
                JiSuanShiJian=CLng(FenZhongShu/60)&"Сʱ"&(FenZhongShu Mod 60)&"����"
            End If
        
        End Function
        
        
        
        
        
        
        
        
        
        '===============================����
        
        '===============================���·��ϴ���
        Sub GengXinFeiLiao()
        
            Application.Lock()
            Dim ShiFouGengXin
            
            ShiFouGengXin=false
            //Application.Contents.Remove("NongChang_GengXinShiJian")
            If CStr(Application("NongChang_GengXinShiJian"))="" Then
                Application("NongChang_GengXinShiJian")=ReadTxtFile(Server.MapPath("DT.txt"))
            End If
                If CDate(Application("NongChang_GengXinShiJian"))<DateAdd("d",-1,now()) Then
                    Application.Contents.Remove("NongChang_GengXinShiJian")
                    Call WriteTxtFile(Server.MapPath("DT.txt"),Year(now())&"-"&Right("0"&Month(now()),2)&"-"&Right("0"&Day(now()),2)&" 00:00:00",1)
                    ShiFouGengXin=true
                End If
            
            If ShiFouGengXin Then
            
                Conn.Execute("UPDATE [Farm] SET [ShiFeiCiShu]=0")
                
                Conn.Execute("DELETE FROM [Farm_NuLv] WHERE [ZhuaHuoShiJian]<'"&DateAdd("d",-2,now())&"'")
            
            End If
            
            Application.UnLock()
        
        End Sub
        
        '================================����
        
        '================================�Զ������ļ�
        
        Sub GengXin_Main()
        
            '�汾��
            Dim BanBen
            
            If CStr(Application("NongChang_Version"))="" Then
                Application("NongChang_Version")=ReadTxtFile(Server.MapPath("version.txt"))
            End If
            BanBen=CStr(Application("NongChang_Version"))
            '����
            If BanBen<>"1.1" Then
                Call GengXin_1_1()
                GengXin_XieRu("1.1")
            End If
        End Sub
        
        Sub GengXin_XieRu(BanBen)
            Application("NongChang_Version")=BanBen
            Call WriteTxtFile(Server.MapPath("version.txt"),BanBen,1)
        End Sub
        
        Sub GengXin_1_1()
        
            Conn.Execute("UPDATE [Farm] SET [ShiFeiCiShu]=0")
        
        End Sub
        
        '================================����
        
        '===========================��������
        
        
        Sub SheZhi_JiaZai()
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_SheZhi] WHERE [siteid]="&siteid,Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
            
            Else
                DenJiJiSuan=CLng(Rs("ShengJiKongZhi"))
                //YouXiBanBen=CLng(Rs("YouXiBanBen"))
                ZhuanHuanBiLi=CLng(Rs("ZhuanHuanBiLi"))
            End If
            Rs.Close()
        
        End Sub
        
        
        
        '===========================����
        
        
        
        '===============================��д�ı�
        
        
	'�ļ�ɾ��
	Function deleteAFile(filespec)
		'//���ܣ��ļ�ɾ��
		'//�βΣ��ļ���
		'//����ֵ���ɹ�Ϊ1��ʧ��Ϊ-1
		'//
            Dim objFSO
            Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
		If ReportFileStatus(filespec) = 1 Then
			objFSO.deleteFile(filespec)
			deleteAFile = 1
		Else
			deleteAFile = -1
		End if
	End Function

        
        Function WriteTxtFile(FileName,TextStr,WriteORAppendType) 
            Const ForReading = 1, ForWriting = 2 , ForAppending = 8 
            Dim objFSO
            Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
            Dim f, m 
            select Case WriteORAppendType 
            Case 1: '�ļ�����д���� 
                Set f = objFSO.OpenTextFile(FileName, ForWriting, True) 
                f.Write TextStr 
                f.Close 
                If ReportFileStatus(FileName) = 1 then 
                    WriteTxtFile = 1 
                Else 
                    WriteTxtFile = -1 
                End if 
            Case 2: '�ļ�ĩβ����д���� 
                If ReportFileStatus(FileName) = 1 then 
                    Set f = objFSO.OpenTextFile(FileName, ForAppending) 
                    f.Write TextStr 
                    f.Close 
                    WriteTxtFile = 1 
                Else 
                    WriteTxtFile = -1 
                End if 
            End select 
        End Function 

'���ı��ļ� 
        Function ReadTxtFile(FileName) 
            Const ForReading = 1, ForWriting = 2 
            Dim objFSO
            Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
            Dim f, m 
            If ReportFileStatus(FileName) = 1 then 
                Set f = objFSO.OpenTextFile(FileName, ForReading) 
                m = f.ReadAll()
                ReadTxtFile = m 
                f.Close 
            Else 
                ReadTxtFile = -1 
            End if 
        End Function
        
        Function ReportFileStatus(FileName) 
            '//���ܣ��ж��ļ��Ƿ����
            '//�βΣ��ļ���
            '//����ֵ���ɹ�Ϊ1��ʧ��Ϊ-1
            '//
            Dim fso
            Set fso=Server.CreateObject("Scripting.FileSystemObject")
            Dim msg
            msg = -1
            If (fso.FileExists(FileName)) Then
                msg = 1
            Else
                msg = -1
            End If
            ReportFileStatus = msg
        End Function
        
        
        
        
        
        
        '==========================
 %>