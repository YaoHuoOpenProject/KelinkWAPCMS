<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFile.aspx.cs" Inherits="KeLin.WebSite.MyFile" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    StringBuilder sb = new StringBuilder();
    String welcome = "<div class=\"welcome\">";
    string line1 = "<div class=\"content\">";
    string line2 = "<div class=\"content\">";
    string title = "<div class=\"title\">";
    string mylink = "<div class=\"mylink\">";
    string div = "</div>";
    string line = "";

    if (this.ver == "1")
    {
        welcome = "";
        line1 = "";
        line2 = "";
        title = "";
        mylink = "";
        line = "----------<br/>";
        div = "<br/>";
        

    }
 //���Ƿ��е��԰�html����
string isWebHtml = this.ShowWEB_list ("-1");
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("�ҵĵ���|�ҵĵرP|my zone"), wmlVo));

if (this.ver == "1")
{
    Response.Write("<p>");
}

//��ʾ�м䲿��
if (strHtml.IndexOf("[myfile]") > -1 || isWebHtml.IndexOf("[view]") > -1)
{



    sb.Append(welcome + "��ӭ����" + WapTool.GetColorNickName(userVo.idname, userVo.nickname, lang, ver) + div);
    sb.Append(line1 + "<a href=\"" + http_start + "bbs/messagelist.aspx?siteid=" + siteid + "&amp;classid=0&amp;types=0" + "\">����</a>:(" + messagecount + "/" + messageAll + ") <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=0" + "\">����</a>(" + goodfriend + ")" + div);
    sb.Append(line2 + "�ҵ�ID: " + userVo.userid + WapTool.GetOLtimePic(http_start, siteVo.lvlTimeImg, userVo.LoginTimes) + div);
    sb.Append(line1 + "�ҵ�" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname,this.lang) + ":" + userVo.money + "" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "chinabank_wap/RMBtoMoney.aspx?siteid=" + siteid + "" + "\">��ֵ" + siteVo.sitemoneyname + "</a>/<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "" + "\">��ϸ</a>" + div);
    sb.Append(line1 + "�����˻�:" + userVo.myBankMoney + " <a href=\"/bbs/tomybankmoney.aspx?type=1\">ȡ��</a>" + div);
    sb.Append(line2 + "�ҵľ���:" + userVo.expr + div);
    sb.Append(line1 + "�ҵĵȼ�:" + WapTool.GetLevl(siteVo.lvlNumer, userVo.expr, userVo.money, type) + div);
    sb.Append(line2 + "�ҵ�ͷ��:" + WapTool.GetHandle(siteVo.lvlNumer, userVo.expr,userVo.money,type) + div);
    sb.Append(line1 + "�ҵ����:" + WapTool.GetMyID(userVo.idname, lang) + "<br/><a href=\"/wapindex.aspx?siteid=" + siteid + "&amp;classid=171" + "\">" + WapTool.showIDEndTime(userVo.siteid, userVo.userid, userVo.endTime, this.lang) + "</a>" + div);
    sb.Append(line1 + "����Ȩ��:" + WapTool.GetIDName(siteid, this.userid, userVo.managerlvl, this.lang)   + div);
    sb.Append(line2 + "<a href=\"" + http_start + "xinzhang/book_view_my.aspx?siteid=" + siteid + "&amp;classid=0" + "\">�ҵ�ѫ��</a>:" + WapTool.GetMedal(userVo.userid.ToString(), userVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo) + div);
    sb.Append(line2 + "<a href=\"/wapindex.aspx?siteid=" + siteid + "&amp;classid=224" + "\">����ѫ��</a>/<a href=\"/wapindex.aspx?siteid=" + siteid + "&amp;classid=226" + "\">����ѫ��</a>" + div);
    //"<br/><a href=\"" + this.http_start + "XinZhang/XinZhangLieBiao.asp?siteid="+this.siteid+"&amp;classid=0&amp;sid="+this.sid+"\">����ѫ��</a>" +
    sb.Append(line);
    //sb.Append(line2 + "�ҵ�RMB:��" + userVo.RMB.ToString("f2") + "<br/><a href=\"" + http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + siteid +"\">���߳�ֵ</a>/<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;touserid=" + this.userid + "" + "\">��ϸ</a>" + div);
   //sb.Append(line2 + "�������� ͨѶ��ַ" + div);
    sb.Append(title + "�ҵ�����" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid="+this.userid+"\">�ҵĿռ�</a> <a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + siteid + "" + "\">�޸�����</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "bbs/favlist.aspx?siteid=" + siteid + "&amp;classid=0" + "\">�ҵ��ղ�</a> <a href=\"/album/albumlist.aspx?siteid=1000&classid=0&smalltypeid=0&touserid="+this.userid+"" + "\">�ҵ����</a>" + div);
    //sb.Append(line1 + "<a href=\"/album/albumlist.aspx?siteid=1000&classid=0&smalltypeid=0&touserid="+this.userid+"" + "\">�ҵ����</a>" + div);
    sb.Append(line);
    sb.Append(title + "�����Ϣ" + div);
    sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">�ҵ�����</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + userid + "&amp;" + "\">�ظ�(" + userVo.bbsReCount + ")</a>" + div);
    //sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">�ҵ�����(" + userVo.bbsCount + ")</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + userid + "&amp;" + "\">�ظ�(" + userVo.bbsReCount + ")</a>" + div);
    //sb.Append(line1 + "<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=2" + "\">�ҵ�׷��</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=4" + "\">׷���ҵ���</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=0\">�ҵļ���</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=1" + "\">�ҵĺ�����</a>" + div);
    sb.Append(title + "��վ����" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "\">" + siteVo.sitemoneyname + "��ȡ���ѹ���</a><br/><a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "\">����ͷ�εȼ�����</a><br/><a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "" + "\">����ʱ��ͼ�����</a>" + div);
    strHtml = strHtml.Replace("[myfile]", sb.ToString());
    isWebHtml = isWebHtml.Replace("[view]", sb.ToString());
}
//��ʾ����Ч��
if (isWebHtml != "")
{
    Response.Clear();
    Response.Write(WapTool.ToWML(isWebHtml, wmlVo));
    Response.End();
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
bool isclassadm = WapTool.isClassAdmin(siteid, userid);
if ("|00|01|03|".IndexOf(userVo.managerlvl) > 0 || isclassadm==true) Response.Write(title + "��վ�����̨<a href=\"" + this.http_start + "admin/loginwap.aspx?siteid=" + this.siteid + "\">&gt;&gt;</a>" + div); 
if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
{
    Response.Write(line1 + "[<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + siteid + "" + "\">վ�������̨</a>]" + div);
}
if (userVo.managerlvl == "00")
{
    Response.Write(line1 + "[<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "" + "\">��������Ա��̨</a>]" + div);
}
if (userVo.managerlvl == "03")
{
    Response.Write(line1 + "[<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">�ܱ༭�����̨</a>]" + div);
}
if (isclassadm==true)
{
    Response.Write(line1 + "[<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">��Ŀ����Ա��̨</a>]" + div);
}
Response.Write(line);
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a> ");
    Response.Write("<a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">��ȫ�˳�</a> " );
    Response.Write("</div></div>");
if (this.ver == "1")
{
    Response.Write("</p>");
}
//��ʾβ
Response.Write(WapTool.showDown(wmlVo));
%>