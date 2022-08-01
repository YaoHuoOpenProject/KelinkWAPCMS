<%@ Page Language="C#" AutoEventWireup="true" %><%Response.ContentType = "text/html; charset=utf-8"; %>
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0">
<style type="text/css"> 
body   {font-size:18px; width:90%; margin:10 auto;background:#C7EDCC;}
</style>
<title>柯林秘技-技术员手册</title>
</head>
<body>
<a href="ubb2.aspx">UBB大全</a>|<a href="ubb3.aspx">网站资源链接</a><a href="ubb4.aspx">|用户手册</a>|技术员手册|<a href="http://bbs.kelink.com">WAP建站知识库</a>
<hr />
搜索按 Ctrl+F
<hr />

<p><b>1.如何删除SQL数据库日志</b><br>
<br>
SQL数据库在运行中，会自动进行日志记录，因此会造成数据库容量扩充，占据服务器空间资源，因此站长管理员可以定期删除数据库日志，以清除不必要的日志文件。<br>
删除方法：<br>
打开SQL企业管理器 找到你数据库 点击 工具&nbsp; →SQL查询分析器 <br>
输入 <br>
<br>
DUMP TRANSACTION [库名] WITH NO_LOG <br>
BACKUP LOG [库名] WITH NO_LOG<br>
DBCC SHRINKDATABASE([库名])<br>
<br>
&quot;[库名]&quot; 就是你的数据库名 . 假如你的数据库名是&quot;kelinkAutoWAPSitesSystem&quot; 那就改成<br>
<br>
DUMP TRANSACTION [kelinkAutoWAPSitesSystem] WITH NO_LOG <br>
BACKUP LOG [kelinkAutoWAPSitesSystem] WITH NO_LOG<br>
DBCC SHRINKDATABASE([kelinkAutoWAPSitesSystem])<br>
<br>
输入完后，直接按F5执行，没有出现红色字体，说明操作成功。<br>
可以执行多次！</p>
<hr/>
<p><b>2.修复受损MSSQL数据库</b><br>
<br>
停止网站，停止数据库，再启动数据库，企业管理器中
执行以下代码，[库名]改成要修复的数据库名。<br>
			<br>
			USE MASTER<br>
			GO<br>
			sp_dboption &#39;库名&#39;, &#39;single user&#39;, &#39;true&#39;<br>
			Go<br>
			DBCC CHECKDB(&#39;库名&#39;, REPAIR_ALLOW_DATA_LOSS)<br>
			Go<br>
			USE 库名<br>
			go<br>
			exec sp_msforeachtable &#39;DBCC CHECKTABLE(&#39;&#39;,?,&#39;&#39;,REPAIR_REBUILD)&#39;<br>
			go<br>
			sp_dboption &#39;库名&#39;, &#39;single user&#39;, &#39;false&#39;<br>
			Go</p>
<hr/>
<p>
<span style="LINE-HEIGHT: 150%; WIDTH: 100%; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; WORD-BREAK: break-all">
<b>2.如何通过mdf文件还原数据库的两种方法</b></span></p>
<p><b>方法一(日志文件完好)</b><br>
1.新建同名数据库。<br>
2.把该数据库设置为脱机。<br>
3.删除其日志文件(.LDF),不删除后边的过程执行通不过。<br>
4.在查询分析器中以超级用户登入，执行以下存储过程，必须以超级用户登入，这是系统级存储过程。 <br>
EXEC sp_detach_db @dbname = &#39;xxx&#39; //@dbnam为要还原的数据库<br>
EXEC sp_attach_single_file_db @dbname = &#39;xxx&#39;, @physname = &#39;yyyy&#39; 
//@physname为.mdf文件路径<br>
5.把该数据库设置为联机。<br>
6.刷新数据库，表出来了，数据完好<br>
<br>
<b>方法二(无日志文件或日志文件损坏)</b><br>
1.新建一个同名的数据库<br>
2.再停掉sql server(注意不要分离数据库)<br>
3.用原数据库的数据文件覆盖掉这个新建的数据库<br>
4.再重启sql server<br>
5.此时打开企业管理器时会出现置疑，先不管，执行下面的语句(注意修改其中的数据库名)<br>
<br>
use master<br>
go<br>
<br>
SP_CONFIGURE &#39;ALLOW UPDATES&#39;,1 RECONFIGURE WITH OVERRIDE<br>
go<br>
<br>
UPDATE SYSDATABASES SET STATUS =32768 WHERE NAME=&#39;置疑的数据库名&#39;&#39;<br>
go<br>
<br>
sp_dboption &#39;置疑的数据库名&#39;&#39;, &#39;single user&#39;, &#39;true&#39;<br>
go<br>
<br>
DBCC CHECKDB(&#39;置疑的数据库名&#39;&#39;)<br>
go<br>
<br>
update sysdatabases set status =28 where name=&#39;置疑的数据库名&#39;&#39;<br>
go<br>
<br>
sp_configure &#39;allow updates&#39;, 0 reconfigure with override<br>
go<br>
<br>
sp_dboption &#39;置疑的数据库名&#39;&#39;, &#39;single user&#39;, &#39;false&#39;<br>
go<br>
<br>
6.完成后一般就可以访问数据库中的数据了,这时,数据库本身一般还要问题,</p>
<p>解决办法是,利用数据库的脚本创建一个新的数据库,并将数据导进去就行了.</p>
<p>&nbsp;</p>
<p>
<b>3.替换数据sql语句</b><br>
update [表名如wap_bbs] set book_content=replace(cast(book_content as 
varchar(8000)),&#39;http://123.com/&#39;,&#39;<a href="http://abc.com/'">http://abc.com/&#39;</a>)</p>
<p><b>4.其它常用SQL</b><br>
统计：select sum(cast(book_size as bigint(8)))/1024 as show from [database] where 
id=1000<br>
重复：select * from [user] where userid in(select userid from [user] group by 
userid having count(userid)&gt;1)<br>
更改所属用户： exec sp_changeobjectowner &#39;[bbsdb].[dv_style]&#39;,[dbo]</p>
<p><b>5.因为文件组primary已满，未能为数据库XX对象XX分配空间</b><br>
一大早刚来上班就接到客户电话说创建某某单据时提示“因为文件组primary已满，未能为数据库XX对象XX分配空间”。登陆进服务器查了一下他的数据库情况，限制是60M，现在已经分配了50M，文件自动增长也勾上了，还有空间啊，怎么会已满。查了一下服务器磁盘空间，还有5G多，也够用。后来发现，在文件自动增长的下面有个选项，是按百分之几来增长，默认是20%。60M的20%是12M，50M+12M是62M超过限制了，所以才会出现那个提示。把自动增长改成10%，问题解决。</p>
<p><b>6.解决win2003的iis6限制asp的上传文件大小</b><br>
<br>
win2003的iis6限制了asp的上传档大小为200k，asp的上传程序没有影响，但是大于200K的文件就会上传不成功。<br>
<br>
解决方法：<br>
1、在服务里关闭iis admin service服务（运行处录入：iisreset /stop）<br>
2、找到windows\system32\inesrv\下的metabase.xml,<br>
打开，找到ASPMaxRequestEntityAllowed 把他修改为需要的大小值，默认为204800，即200K <br>
3.重启iis admin service服务&nbsp; （运行处录入：iisreset /start）<br>
提示： ASPMaxRequestEntityAllowed 参数在 AspMaxDiskTemplateCacheFiles=&quot;2000&quot; 
下面，（如果不存在自行添加)</p>
<p>.NET版本在web.config 中的“maxRequestLength”配置。<br>
<br>
<b>7.提示无法找到master.xp_regread扩展存储的问题</b><br>
打开企业管理器--&gt;连接本地数据库--&gt;展开master数据库--&gt;展开扩展存储过程<br>
--&gt;点右键新增扩展存储过程--&gt;名称:xp_regread--&gt;路径:xpstar.dll<br>
--&gt;确定完成！完成相关操作建议再删除之！<br>
<br>
<b>8.NET版上传大小设置</b><br>
用UE软件打开web.config配置，“maxRequestLength”和“executionTimeout”参数，有详细的中文说明。</p>
<p><b>9.为什么上传下载不了？原因是主机Mine类型没有加<br>
</b>
IIS6--&gt;默认网站(或自己建的网站)--&gt;HTTP头--&gt;文件类型--&gt;新类型--&gt;关联扩展名：输入3gp,内容类型(MIME):video/3gpp<br>
同理，请添加以下mime类型：<br>
.3gp--&gt;video/3gpp<br>
.abs--&gt;audio/x-mpeg<br>
.amr--&gt;audio/amr<br>
.avi--&gt;video/x-msvideo<br>
.jad--&gt;text/vnd.sun.j2me.app-descriptor<br>
.jar--&gt;application/java-archive<br>
.mid--&gt;audio/mid<br>
.midi--&gt;audio/mid<br>
.mmf--&gt;application/vnd.smaf<br>
.mov--&gt;video/quicktime<br>
.mp3--&gt;audio/mpeg<br>
.mp4--&gt;application/octet-stream<br>
.mpeg--&gt;video/mpeg<br>
.mpg--&gt;video/mpeg<br>
.sis--&gt;application/vnd.symbian.install<br>
.swf--&gt;application/x-shockwave-flash<br>
.wav--&gt;audio/x-wav<br>
.zip--&gt;application/zip<br>
如果不知道mine类型，可以用通用的：application/octet-stream</p>
<p>如果以上你不会操作或不想这么麻烦，请在建站系统目录下的web.config文件，用UE打开，找到：防盗链参数KL_DownCheck，改成1即可。</p>
<p><b>10.MSSQL内存占用太大问题</b><br>
SQL Server 属性--&gt;内存选项卡--&gt;中设置最大内存</p>
<p><b>11.CPU100%问题</b><br>
(1)一班情况在CPU高时重新建个新目录存放iis日志，过一段时间后看是否受到攻击！<br>
查IIS日志，发现有DOS攻击！请下载防DDOS软件：<br>
http://kelink.com/download/DDOS.rar<br>
在主机上安装好，查看IIS日志看哪个IP段在攻击(或无限访问同一个地址，常见为mp3地址或其它)。将这此IP段加入黑名单即可。<br>
DoS攻击就是利用合理的服务请求来占用过多的服务资源，从而使服务器无法处理合法用户的指令。<br>
<br>
(2)安装网站安全狗：<br>
<a href="http://bbs.kelink.com/bbs/book_view.aspx?siteid=2108&classid=204571&id=173199">
http://bbs.kelink.com/bbs/book_view.aspx?siteid=2108&amp;classid=204571&amp;id=173199</a>
<br>
安装了可以开启session保护即可解决CPU高的问题！建义用此方法。解决CC攻击。<br>
<br>
(3) 数据库损坏也有可能导致CPU高，尝试修复数据库和删除日志，查看1.2.方法。<br>
<br>
(4) 按10.的方法限制一下MSSQL内存大小。</p>
<p><b>12.自动备份数据库<br>
</b>(1)独立主机在企业版管理器，数据库维护中可以创建每天自动定时备份数据库。及维护数据库。创建后会放到作业中运行。所以作业(SQL Server 
Agent)要开启<br>
(2)备份分为：数据库备份+程序备份。下载到自己电脑才是真正安全。虚拟主机备份视频教程：<a href="http://bbs.kelink.com/bbs/book_view.aspx?siteid=2108&classid=204576&id=172560">http://bbs.kelink.com/bbs/book_view.aspx?siteid=2108&amp;classid=204576&amp;id=172560</a><br>
&nbsp;&nbsp;&nbsp;&nbsp; 对独立主机用户备份就更简单了：打包程序目录即是备份了程序，数据库右键，任务，备份到某个位置即可。</p>
<p><b>13.设置好主机网站访问权限</b><br>
(1)根目录下的uploadfiles和其它目录下的upload目录，执行权限设为无。<br>
(2)web.config中要配置好防SQL注入关键字。<br>
(3)数据库访问帐号不能用sa，用自建的帐号给予public和db_owner就行了。</p>
<p>&nbsp;</p>
<p><br>
&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><br>
&nbsp;</p>

</body>
</html> 
   