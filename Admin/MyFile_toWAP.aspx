<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFile_toWAP.aspx.cs" Inherits="KeLin.WebSite.admin.MyFile_toWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    StringBuilder sb = new StringBuilder();
    String welcome = "<div class=\"welcome\">";
    string line1 = "<div class=\"content\">";
    string line2 = "<div class=\"content\">";
    string title = "<div class=\"subtitle\">";
    string mylink = "<div class=\"mylink\">";
    string tip = "<div class=\"tip\">";
    string div = "</div>";
    string line = "";

    if (this.ver == "1")
    {
        welcome = "";
        line1 = "";
        line2 = "";
        title = "";
        mylink = "";
        tip = "";
        line = "----------<br/>";
        div = "<br/>";
        

    }
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("�ҵĵ���|�ҵĵرP|my zone"), wmlVo));

if (this.ver == "1")
{
    Response.Write("<p>");
}

Response.Write(tip + "����ǰ�༭ģʽ.<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ҳ�����ģʽ</a>��<br/>");
Response.Write("��<a href=\"" + this.http_start + "admin/myfile_editwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�༭�ҵĵ���</a>.<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����ϼ�����</a>��" + div);
                                                                                                                                                                                   
//��ʾ�м䲿��
if (strHtml.IndexOf("[myfile]") > -1)
{



    sb.Append(welcome + "��ӭ����" + userVo.nickname + div);

    sb.Append(line1 + "<a href=\"" + http_start + "bbs/messagelist.aspx?siteid=" + siteid + "&amp;classid=0&amp;types=0" + "\">����</a>:(" + messagecount + "/" + messageAll + ") <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=0" + "\">����</a>(" + goodfriend + ")" + div);
    sb.Append(line2 + "�ҵ�ID: " + userVo.userid + WapTool.GetOLtimePic(http_start, siteVo.lvlTimeImg, userVo.LoginTimes) + div);
    sb.Append(line1 + "�û���: " + userVo.username + " <a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">�˳�</a>" + div);
    sb.Append(line2 + "�ҵ�" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname,this.lang) + ":" + userVo.money + " <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key="+this.userid+"" + "\">��ϸ</a>" + div);
    sb.Append(line1 + "���д��:" + userVo.myBankMoney + " ����" + div);
    sb.Append(line2 + "�ҵľ���:" + userVo.expr + div);
    sb.Append(line1 + "�ҵĵȼ�:" + WapTool.GetLevl(siteVo.lvlNumer, userVo.expr,userVo.money,type) + div);
    sb.Append(line2 + "�ҵ�ͷ��:" + WapTool.GetHandle(siteVo.lvlNumer, userVo.expr,userVo.money,type) + div);
    sb.Append(line1 + "�ҵ����:" + userVo.idname + div);
    sb.Append(line2 + "�ҵ�ѫ��:" + WapTool.GetMedal(userVo.moneyname, http_start) + div);
    sb.Append(line);
    sb.Append(title + "�ҵ�����" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "\">�ȼ�����</a> <a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "\">��ֵ���</a>" + div);
    //sb.Append(line2 + "�������� ͨѶ��ַ" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid="+this.userid+"\">�ҵĿռ�</a> <a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + siteid + "" + "\">�޸�����</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + siteid + "&amp;classid=0" + "\">�ҵ��ղ�</a> <a href=\"" + http_start + "album/myalbum.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">�ҵ����</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">΢����־</a> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">���Թ���</a>" + div);
    sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "\">�������</a> <a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "\">���ת��</a>" + div);
    sb.Append(line);
    sb.Append(title + "�ҵ������Ϣ" + div);
    sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">�ҵ�����</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + userid + "&amp;" + "\">�ҵĻظ���</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=2" + "\">�ҵ�׷��</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=4" + "\">׷���ҵ���</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "yuehui/book_list.aspx?key=" + userid + "&amp;type=touserid&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">�ҵ�Լ��</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=1" + "\">�ҵĺ�����</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "clan/main.asp?siteid=" + this.siteid + "&amp;classid=0\">�ҵļ���</a> <a href=\"" + http_start + "/fun/marry.asp?siteid=" + this.siteid + "&amp;classid=0\">����������</a>" + div);

    strHtml = strHtml.Replace("[myfile]", sb.ToString());

}

//����UBB����:
if (strHtml.Trim() == "")
{
    Response.Write("<b>����WEB/WAP��̨---ҳ���ۺ��Ű�---�༭�ҵĵ���---[��] ¼��[myfile]���Լ��Ű�</b><br/>");
}
else
{
    Response.Write(WapTool.ToWML(strHtml, wmlVo));
}


if(this.ver=="1")  Response.Write(line);

if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
{

    Response.Write(title + "��վ�����̨" + div);
    Response.Write(line1 + "��<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + siteid + "" + "\">վ�������̨</a>��" + div);
}
if (userVo.managerlvl == "00")
{

    Response.Write(line1 + "��<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "" + "\">��������Ա��̨</a>��" + div);
}

                                                                                                                                                                 
Response.Write(line);
Response.Write(title + "�ҵĽ�������" + div);
Response.Write(mylink + "��<a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">ѡ��Ƥ��</a>��");
Response.Write("��<a href=\"" + http_start + "wapstyle/Lang.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">ѡ������</a>��" + div);
Response.Write(mylink + "��<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">ѡ�����</a>��");
Response.Write("��<a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">��ȫ�˳�</a>��" + div);
Response.Write(mylink + "��<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>��");
Response.Write("��<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>��" + div);


if (this.ver == "1")
{
    Response.Write("</p>");
}                                                                                                                                                                                                                                                                                                                               
//��ʾβ
Response.Write(WapTool.showDown(wmlVo));                                                                                                                                                                                                                      
%>
