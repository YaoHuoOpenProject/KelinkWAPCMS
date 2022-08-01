            ╭───────────────────────╮
  ╭────┤           支付宝代码示例结构说明             ├────╮
  │        ╰───────────────────────╯        │
　│                                                                  │
　│     接口名称：支付宝即时到帐接口（create_direct_pay_by_user）    │
　│　   代码版本：3.1                                                │
  │     开发语言：ASP.NET(c#)                                        │
  │     版    权：支付宝（中国）网络技术有限公司                     │
　│     制 作 者：支付宝商户事业部技术支持组                         │
  │     联系方式：商户服务电话0571-88158090                          │
  │                                                                  │
  ╰─────────────────────────────────╯

───────
 代码文件结构
───────

js_vs2005_utf8
  │
  ├app_code ┈┈┈┈┈┈┈┈┈┈类文件夹
  │  │
  │  ├alipay_config.cs ┈┈┈┈基础信息配置属性类文件
  │  │
  │  ├alipay_function.cs ┈┈┈公用函数类文件
  │  │
  │  ├alipay_notify.cs ┈┈┈┈支付宝通知处理类文件
  │  │
  │  └alipay_service.cs┈┈┈┈支付宝请求处理类文件
  │
  ├images ┈┈┈┈┈┈┈┈┈┈┈图片、CSS样式文件夹
  │
  ├log┈┈┈┈┈┈┈┈┈┈┈┈┈日志文件夹
  │
  ├alipayto.aspx┈┈┈┈┈┈┈┈支付宝接口入口文件
  ├alipayto.aspx.cs ┈┈┈┈┈┈支付宝接口入口文件
  │
  ├default.aspx ┈┈┈┈┈┈┈┈快速付款入口模板文件
  ├default.aspx.cs┈┈┈┈┈┈┈快速付款入口模板文件
  │
  ├notify_url.aspx┈┈┈┈┈┈┈服务器异步通知页面文件
  ├notify_url.aspx.cs ┈┈┈┈┈服务器异步通知页面文件
  │
  ├return_url.aspx┈┈┈┈┈┈┈页面跳转同步通知文件
  ├return_url.aspx.cs ┈┈┈┈┈页面跳转同步通知文件
  │
  ├Web.Config ┈┈┈┈┈┈┈┈┈配置文件（集成时删除）
  │
  └readme.txt ┈┈┈┈┈┈┈┈┈使用说明文本

※注意※
需要配置的文件是：alipay_config.cs、alipayto.aspx、alipayto.aspx.cs
统一命名空间为：namespace AlipayClass

index.aspx仅是支付宝提供的付款入口模板文件，可选择使用。
如果商户网站根据业务需求不需要使用，请把alipayto.aspx作为与商户网站网站相衔接页面。
如果需要使用default.aspx，那么alipayto.aspx文件无需更改，只需配置好alipay_config.cs文件
拿到default.aspx页面在商户网站中的HTTP路径放置在商户网站中需要的位置，就能直接使用支付宝接口。



─────────
 类文件函数结构
─────────

alipay_function.cs

public static string Build_mysign(Dictionary<string, string> dicArray, string key, string sign_type, string _input_charset)
功能：生成签名结果
输入：Dictionary<string, string>  dicArray 要签名的数组
      string key 安全校验码
      string sign_type 签名类型
      string _input_charset 编码格式
输出：string 签名结果字符串

public static string Create_linkstring(Dictionary<string, string> dicArray)
功能：把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
输入：Dictionary<string, string> dicArray 需要拼接的数组
输出：string 拼接完成以后的字符串

public static Dictionary<string, string> Para_filter(SortedDictionary<string, string> dicArrayPre)
功能：除去数组中的空值和签名参数并以字母a到z的顺序排序
输入：SortedDictionary<string, string> dicArrayPre 过滤前的参数组
输出：Dictionary<string, string>  去掉空值与签名参数后的新签名参数组

public static string Sign(string prestr, string sign_type, string _input_charset)
功能：签名字符串
输入：string prestr 需要签名的字符串
      string sign_type 签名类型
      string _input_charset 编码格式
输出：string 签名结果

public static string Query_timestamp(string partner)
功能：用于防钓鱼，调用接口query_timestamp来获取时间戳的处理函数
输入：string partner 合作身份者ID
输出：string 时间戳字符串

public static void log_result(string sPath, string sWord)
功能：写日志，方便测试（看网站需求，也可以改成存入数据库）
输入：string sPath 日志的本地绝对路径
      string sWord 要写入日志里的文本内容

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

alipay_notify.cs

public AlipayNotify(SortedDictionary<string, string> inputPara, string notify_id, string partner, string key, string input_charset, string sign_type, string transport)
功能：构造函数
      从配置文件中初始化变量
输入：SortedDictionary<string, string> inputPara 通知返回来的参数数组
      string notify_id 验证通知ID
      string partner 合作身份者ID
      string key 安全校验码
      string input_charset 编码格式
      string sign_type 签名类型
      string transport 访问模式

private string Verify(string notify_id)
功能：验证是否是支付宝服务器发来的请求
输入：string notify_id 验证通知ID
输出：string 验证结果

private string Get_Http(string strUrl, int timeout)
功能：获取远程服务器ATN结果
输入：string strUrl 指定URL路径地址
      int timeout 超时时间设置
输出：string 服务器ATN结果字符串

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

alipay_service.cs

public AlipayService(string partner,
            string seller_email,
            string return_url,
            string notify_url,
            string show_url,
            string out_trade_no,
            string subject,
            string body,
            string total_fee,
            string paymethod,
            string defaultbank,
            string encrypt_key,
            string exter_invoke_ip,
            string extra_common_param,
            string buyer_email,
            string royalty_type,
            string royalty_parameters,
            string it_b_pay,
            string key,
            string input_charset,
            string sign_type)
功能：构造函数
      从配置文件及入口文件中初始化变量
输入：string partner 合作身份者ID
      string seller_email 签约支付宝账号或卖家支付宝帐户
      string return_url 付完款后跳转的页面 要用 以http开头格式的完整路径，不允许加?id=123这类自定义参数
      string notify_url 交易过程中服务器通知的页面 要用 以http开格式的完整路径，不允许加?id=123这类自定义参数
      string show_url 网站商品的展示地址，不允许加?id=123这类自定义参数
      string out_trade_no 请与贵网站订单系统中的唯一订单号匹配
      string subject 订单名称，显示在支付宝收银台里的“商品名称”里，显示在支付宝的交易管理的“商品名称”的列表里。
      string body 订单描述、订单详细、订单备注，显示在支付宝收银台里的“商品描述”里
      string total_fee 订单总金额，显示在支付宝收银台里的“应付总额”里
      string paymethod 默认支付方式，四个值可选：bankPay(网银); cartoon(卡通); directPay(余额); CASH(网点支付)
      string defaultbank 默认网银代号，代号列表见club.alipay.com/read.php?tid=8681379
      string encrypt_key 防钓鱼时间戳
      string exter_invoke_ip 买家本地电脑的IP地址
      string extra_common_param 自定义参数，可存放任何内容（除等特殊字符外），不会显示在页面上
      string buyer_email 默认买家支付宝账号
      string royalty_type 提成类型，该值为固定值：10，不需要修改
      string royalty_parameters 提成信息集，与需要结合商户网站自身情况动态获取每笔交易的各分润收款账号、各分润金额、各分润说明。最多只能设置10条
      string it_b_pay 超时时间，不填默认是15天。八个值可选：1h(1小时),2h(2小时),3h(3小时),1d(1天),3d(3天),7d(7天),15d(15天),1c(当天)
      string key 安全检验码
      string input_charset 字符编码格式 目前支持 gbk 或 utf-8
      string sign_type 签名方式 不需修改

public string Build_Form()
功能：构造表单提交HTML
输出：string 表单提交HTML文本

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

return_url.aspx.cs

public SortedDictionary<string, string> GetRequestGet()
功能：获取支付宝GET过来通知消息，并以“参数名=参数值”的形式组成数组
输出：SortedDictionary<string, string> request回来的信息组成的数组

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉

notify_url.aspx.cs

public SortedDictionary<string, string> GetRequestPost()
功能：获取支付宝POST过来通知消息，并以“参数名=参数值”的形式组成数组
输出：SortedDictionary<string, string> request回来的信息组成的数组



──────────
 如何增加请求参数
──────────

在技术文档的请求参数列表中有诸多请求参数，如果因业务需求等原因要利用这些参数，那么可以按照下面的操作方法来扩充接口功能。

┉┉┉以参数it_b_pay为例┉┉┉

第一步：app_code文件夹下的alipay_service.cs文件

找到AlipayService的构造函数，增加输入参数“,string it_b_pay”，
在注释“//构造签名参数数组”的下方对签名数组sParaTemp增加元素“sParaTemp.Add("it_b_pay" , it_b_pay);”

如：
////////////////////////////////////////////////
        /// <summary>
        /// 构造函数
        /// 从配置文件及入口文件中初始化变量
        /// </summary>
        /// <param name="partner">合作身份者ID</param>
        /// <param name="seller_email">签约支付宝账号或卖家支付宝帐户</param>
        /// <param name="return_url">付完款后跳转的页面 要用 以http开头格式的完整路径，不允许加?id=123这类自定义参数</param>
        /// <param name="notify_url">交易过程中服务器通知的页面 要用 以http开格式的完整路径，不允许加?id=123这类自定义参数</param>
        /// <param name="show_url">网站商品的展示地址，不允许加?id=123这类自定义参数</param>
        /// <param name="out_trade_no">请与贵网站订单系统中的唯一订单号匹配</param>
        /// <param name="subject">订单名称，显示在支付宝收银台里的“商品名称”里，显示在支付宝的交易管理的“商品名称”的列表里。</param>
        /// <param name="body">订单描述、订单详细、订单备注，显示在支付宝收银台里的“商品描述”里</param>
        /// <param name="total_fee">订单总金额，显示在支付宝收银台里的“应付总额”里</param>
        /// <param name="paymethod">默认支付方式，四个值可选：bankPay(网银); cartoon(卡通); directPay(余额); CASH(网点支付)</param>
        /// <param name="defaultbank">默认网银代号，代号列表见club.alipay.com/read.php?tid=8681379</param>
        /// <param name="anti_phishing_key">防钓鱼时间戳</param>
        /// <param name="exter_invoke_ip">买家本地电脑的IP地址</param>
        /// <param name="extra_common_param">自定义参数，可存放任何内容（除等特殊字符外），不会显示在页面上</param>
        /// <param name="buyer_email">默认买家支付宝账号</param>
        /// <param name="royalty_type">提成类型，该值为固定值：10，不需要修改</param>
        /// <param name="royalty_parameters">提成信息集，与需要结合商户网站自身情况动态获取每笔交易的各分润收款账号、各分润金额、各分润说明。最多只能设置10条</param>
        /// <param name="it_b_pay">超时时间，不填默认是15天。八个值可选：1h(1小时),2h(2小时),3h(3小时),1d(1天),3d(3天),7d(7天),15d(15天),1c(当天)</param>
        /// <param name="key">安全检验码</param>
        /// <param name="input_charset">字符编码格式 目前支持 gbk 或 utf-8</param>
        /// <param name="sign_type">签名方式 不需修改</param>
        public AlipayService(string partner,
            string seller_email,
            string return_url,
            string notify_url,
            string show_url,
            string out_trade_no,
            string subject,
            string body,
            string total_fee,
            string paymethod,
            string defaultbank,
            string anti_phishing_key,
            string exter_invoke_ip,
            string extra_common_param,
            string buyer_email,
            string royalty_type,
            string royalty_parameters,
            string it_b_pay,
            string key,
            string input_charset,
            string sign_type)
        {
            gateway = "https://www.alipay.com/cooperate/gateway.do?";
            _key = key.Trim();
            _input_charset = input_charset.ToLower();
            _sign_type = sign_type.ToUpper();
            SortedDictionary<string, string> sParaTemp = new SortedDictionary<string, string>();

            //构造签名参数数组
            sParaTemp.Add("service", "create_direct_pay_by_user");
            sParaTemp.Add("payment_type", "1");
            sParaTemp.Add("partner" , partner);
            sParaTemp.Add("seller_email" , seller_email);
            sParaTemp.Add("return_url" , return_url);
            sParaTemp.Add("notify_url" , notify_url);
            sParaTemp.Add("_input_charset" , _input_charset);
            sParaTemp.Add("show_url" , show_url);
            sParaTemp.Add("out_trade_no" , out_trade_no);
            sParaTemp.Add("subject" , subject);
            sParaTemp.Add("body" , body);
            sParaTemp.Add("total_fee" , total_fee);
            sParaTemp.Add("paymethod" , paymethod);
            sParaTemp.Add("defaultbank" , defaultbank);
            sParaTemp.Add("anti_phishing_key", anti_phishing_key);
            sParaTemp.Add("exter_invoke_ip" , exter_invoke_ip);
            sParaTemp.Add("extra_common_param" , extra_common_param);
            sParaTemp.Add("buyer_email" , buyer_email);
            sParaTemp.Add("royalty_type" , royalty_type);
            sParaTemp.Add("royalty_parameters" , royalty_parameters);
            sParaTemp.Add("it_b_pay" , it_b_pay);

            sPara = AlipayFunction.Para_filter(sParaTemp);
            //获得签名结果
            mysign = AlipayFunction.Build_mysign(sPara, _key, _sign_type, _input_charset);
        }
////////////////////////////////////////////////


第二步：打开alipayto.aspx.cs文件

在注释“以下参数是需要通过下单时的订单数据传入进来获得”与“//////////”代码段之间添加请求参数：

如：
////////////////////////////////
//扩展功能参数——自定义超时(若要使用，请按照注释要求的格式赋值)
//该功能默认不开通，
//申请开通方式：
//方式一：联系支付宝技术支持申请处理
//方式二：拨打0571-88158090申请
//方式三：提交集成申请（https://b.alipay.com/support/helperApply.htm?action=consultationApply）
string it_b_pay = "";
//超时时间，不填默认是15天。设置范围：1m~15d。,-分隔符，~-范围 ， m-分钟，h-小时，d-天，1c-当天（无论何时创建，交易都在0点关闭）
//如：it_b_pay = "1m~1h,2h,3h,1c";
////////////////////////////////

在“构造要请求的参数数组，无需改动”注释下方的“AlipayService aliService = new AlipayService”中增加输入参数“,it_b_pay”

如：
////////////////////////////////
AlipayService aliService = new AlipayService(partner, seller_email, return_url, notify_url, show_url, out_trade_no, subject, body, total_fee, paymethod, defaultbank, anti_phishing_key, exter_invoke_ip, extra_common_param, buyer_email, royalty_type, royalty_parameters, it_b_pay, key, input_charset, sign_type);
////////////////////////////////

──────────
 出现问题，求助方法
──────────

如果在集成支付宝接口时，有疑问或出现问题，可使用下面的链接，提交申请。
https://b.alipay.com/support/helperApply.htm?action=supportHome
我们会有专门的技术支持人员为您处理




