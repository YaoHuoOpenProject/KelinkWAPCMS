            �q�����������������������������������������������r
  �q����������           ֧��������ʾ���ṹ˵��             �����������r
  ��        �t�����������������������������������������������s        ��
����                                                                  ��
����     �ӿ����ƣ�֧������ʱ���ʽӿڣ�create_direct_pay_by_user��    ��
������   ����汾��3.1                                                ��
  ��     �������ԣ�ASP.NET(c#)                                        ��
  ��     ��    Ȩ��֧�������й������缼�����޹�˾                     ��
����     �� �� �ߣ�֧�����̻���ҵ������֧����                         ��
  ��     ��ϵ��ʽ���̻�����绰0571-88158090                          ��
  ��                                                                  ��
  �t�������������������������������������������������������������������s

��������������
 �����ļ��ṹ
��������������

js_vs2005_utf8
  ��
  ��app_code �����������������������ļ���
  ��  ��
  ��  ��alipay_config.cs ��������������Ϣ�����������ļ�
  ��  ��
  ��  ��alipay_function.cs ���������ú������ļ�
  ��  ��
  ��  ��alipay_notify.cs ��������֧����֪ͨ�������ļ�
  ��  ��
  ��  ��alipay_service.cs��������֧�������������ļ�
  ��
  ��images ����������������������ͼƬ��CSS��ʽ�ļ���
  ��
  ��log����������������������������־�ļ���
  ��
  ��alipayto.aspx����������������֧�����ӿ�����ļ�
  ��alipayto.aspx.cs ������������֧�����ӿ�����ļ�
  ��
  ��default.aspx �������������������ٸ������ģ���ļ�
  ��default.aspx.cs�����������������ٸ������ģ���ļ�
  ��
  ��notify_url.aspx���������������������첽֪ͨҳ���ļ�
  ��notify_url.aspx.cs �����������������첽֪ͨҳ���ļ�
  ��
  ��return_url.aspx��������������ҳ����תͬ��֪ͨ�ļ�
  ��return_url.aspx.cs ����������ҳ����תͬ��֪ͨ�ļ�
  ��
  ��Web.Config �����������������������ļ�������ʱɾ����
  ��
  ��readme.txt ������������������ʹ��˵���ı�

��ע���
��Ҫ���õ��ļ��ǣ�alipay_config.cs��alipayto.aspx��alipayto.aspx.cs
ͳһ�����ռ�Ϊ��namespace AlipayClass

index.aspx����֧�����ṩ�ĸ������ģ���ļ�����ѡ��ʹ�á�
����̻���վ����ҵ��������Ҫʹ�ã����alipayto.aspx��Ϊ���̻���վ��վ���ν�ҳ�档
�����Ҫʹ��default.aspx����ôalipayto.aspx�ļ�������ģ�ֻ�����ú�alipay_config.cs�ļ�
�õ�default.aspxҳ�����̻���վ�е�HTTP·���������̻���վ����Ҫ��λ�ã�����ֱ��ʹ��֧�����ӿڡ�



������������������
 ���ļ������ṹ
������������������

alipay_function.cs

public static string Build_mysign(Dictionary<string, string> dicArray, string key, string sign_type, string _input_charset)
���ܣ�����ǩ�����
���룺Dictionary<string, string>  dicArray Ҫǩ��������
      string key ��ȫУ����
      string sign_type ǩ������
      string _input_charset �����ʽ
�����string ǩ������ַ���

public static string Create_linkstring(Dictionary<string, string> dicArray)
���ܣ�����������Ԫ�أ����ա�����=����ֵ����ģʽ�á�&���ַ�ƴ�ӳ��ַ���
���룺Dictionary<string, string> dicArray ��Ҫƴ�ӵ�����
�����string ƴ������Ժ���ַ���

public static Dictionary<string, string> Para_filter(SortedDictionary<string, string> dicArrayPre)
���ܣ���ȥ�����еĿ�ֵ��ǩ������������ĸa��z��˳������
���룺SortedDictionary<string, string> dicArrayPre ����ǰ�Ĳ�����
�����Dictionary<string, string>  ȥ����ֵ��ǩ�����������ǩ��������

public static string Sign(string prestr, string sign_type, string _input_charset)
���ܣ�ǩ���ַ���
���룺string prestr ��Ҫǩ�����ַ���
      string sign_type ǩ������
      string _input_charset �����ʽ
�����string ǩ�����

public static string Query_timestamp(string partner)
���ܣ����ڷ����㣬���ýӿ�query_timestamp����ȡʱ����Ĵ�����
���룺string partner ���������ID
�����string ʱ����ַ���

public static void log_result(string sPath, string sWord)
���ܣ�д��־��������ԣ�����վ����Ҳ���Ըĳɴ������ݿ⣩
���룺string sPath ��־�ı��ؾ���·��
      string sWord Ҫд����־����ı�����

��������������������������������������������������������������

alipay_notify.cs

public AlipayNotify(SortedDictionary<string, string> inputPara, string notify_id, string partner, string key, string input_charset, string sign_type, string transport)
���ܣ����캯��
      �������ļ��г�ʼ������
���룺SortedDictionary<string, string> inputPara ֪ͨ�������Ĳ�������
      string notify_id ��֤֪ͨID
      string partner ���������ID
      string key ��ȫУ����
      string input_charset �����ʽ
      string sign_type ǩ������
      string transport ����ģʽ

private string Verify(string notify_id)
���ܣ���֤�Ƿ���֧��������������������
���룺string notify_id ��֤֪ͨID
�����string ��֤���

private string Get_Http(string strUrl, int timeout)
���ܣ���ȡԶ�̷�����ATN���
���룺string strUrl ָ��URL·����ַ
      int timeout ��ʱʱ������
�����string ������ATN����ַ���

��������������������������������������������������������������

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
���ܣ����캯��
      �������ļ�������ļ��г�ʼ������
���룺string partner ���������ID
      string seller_email ǩԼ֧�����˺Ż�����֧�����ʻ�
      string return_url ��������ת��ҳ�� Ҫ�� ��http��ͷ��ʽ������·�����������?id=123�����Զ������
      string notify_url ���׹����з�����֪ͨ��ҳ�� Ҫ�� ��http����ʽ������·�����������?id=123�����Զ������
      string show_url ��վ��Ʒ��չʾ��ַ���������?id=123�����Զ������
      string out_trade_no �������վ����ϵͳ�е�Ψһ������ƥ��
      string subject �������ƣ���ʾ��֧��������̨��ġ���Ʒ���ơ����ʾ��֧�����Ľ��׹���ġ���Ʒ���ơ����б��
      string body ����������������ϸ��������ע����ʾ��֧��������̨��ġ���Ʒ��������
      string total_fee �����ܽ���ʾ��֧��������̨��ġ�Ӧ���ܶ��
      string paymethod Ĭ��֧����ʽ���ĸ�ֵ��ѡ��bankPay(����); cartoon(��ͨ); directPay(���); CASH(����֧��)
      string defaultbank Ĭ���������ţ������б��club.alipay.com/read.php?tid=8681379
      string encrypt_key ������ʱ���
      string exter_invoke_ip ��ұ��ص��Ե�IP��ַ
      string extra_common_param �Զ���������ɴ���κ����ݣ����������ַ��⣩��������ʾ��ҳ����
      string buyer_email Ĭ�����֧�����˺�
      string royalty_type ������ͣ���ֵΪ�̶�ֵ��10������Ҫ�޸�
      string royalty_parameters �����Ϣ��������Ҫ����̻���վ���������̬��ȡÿ�ʽ��׵ĸ������տ��˺š��������������˵�������ֻ������10��
      string it_b_pay ��ʱʱ�䣬����Ĭ����15�졣�˸�ֵ��ѡ��1h(1Сʱ),2h(2Сʱ),3h(3Сʱ),1d(1��),3d(3��),7d(7��),15d(15��),1c(����)
      string key ��ȫ������
      string input_charset �ַ������ʽ Ŀǰ֧�� gbk �� utf-8
      string sign_type ǩ����ʽ �����޸�

public string Build_Form()
���ܣ�������ύHTML
�����string ���ύHTML�ı�

��������������������������������������������������������������

return_url.aspx.cs

public SortedDictionary<string, string> GetRequestGet()
���ܣ���ȡ֧����GET����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
�����SortedDictionary<string, string> request��������Ϣ��ɵ�����

��������������������������������������������������������������

notify_url.aspx.cs

public SortedDictionary<string, string> GetRequestPost()
���ܣ���ȡ֧����POST����֪ͨ��Ϣ�����ԡ�������=����ֵ������ʽ�������
�����SortedDictionary<string, string> request��������Ϣ��ɵ�����



��������������������
 ��������������
��������������������

�ڼ����ĵ�����������б����������������������ҵ�������ԭ��Ҫ������Щ��������ô���԰�������Ĳ�������������ӿڹ��ܡ�

�������Բ���it_b_payΪ��������

��һ����app_code�ļ����µ�alipay_service.cs�ļ�

�ҵ�AlipayService�Ĺ��캯�����������������,string it_b_pay����
��ע�͡�//����ǩ���������顱���·���ǩ������sParaTemp����Ԫ�ء�sParaTemp.Add("it_b_pay" , it_b_pay);��

�磺
////////////////////////////////////////////////
        /// <summary>
        /// ���캯��
        /// �������ļ�������ļ��г�ʼ������
        /// </summary>
        /// <param name="partner">���������ID</param>
        /// <param name="seller_email">ǩԼ֧�����˺Ż�����֧�����ʻ�</param>
        /// <param name="return_url">��������ת��ҳ�� Ҫ�� ��http��ͷ��ʽ������·�����������?id=123�����Զ������</param>
        /// <param name="notify_url">���׹����з�����֪ͨ��ҳ�� Ҫ�� ��http����ʽ������·�����������?id=123�����Զ������</param>
        /// <param name="show_url">��վ��Ʒ��չʾ��ַ���������?id=123�����Զ������</param>
        /// <param name="out_trade_no">�������վ����ϵͳ�е�Ψһ������ƥ��</param>
        /// <param name="subject">�������ƣ���ʾ��֧��������̨��ġ���Ʒ���ơ����ʾ��֧�����Ľ��׹���ġ���Ʒ���ơ����б��</param>
        /// <param name="body">����������������ϸ��������ע����ʾ��֧��������̨��ġ���Ʒ��������</param>
        /// <param name="total_fee">�����ܽ���ʾ��֧��������̨��ġ�Ӧ���ܶ��</param>
        /// <param name="paymethod">Ĭ��֧����ʽ���ĸ�ֵ��ѡ��bankPay(����); cartoon(��ͨ); directPay(���); CASH(����֧��)</param>
        /// <param name="defaultbank">Ĭ���������ţ������б��club.alipay.com/read.php?tid=8681379</param>
        /// <param name="anti_phishing_key">������ʱ���</param>
        /// <param name="exter_invoke_ip">��ұ��ص��Ե�IP��ַ</param>
        /// <param name="extra_common_param">�Զ���������ɴ���κ����ݣ����������ַ��⣩��������ʾ��ҳ����</param>
        /// <param name="buyer_email">Ĭ�����֧�����˺�</param>
        /// <param name="royalty_type">������ͣ���ֵΪ�̶�ֵ��10������Ҫ�޸�</param>
        /// <param name="royalty_parameters">�����Ϣ��������Ҫ����̻���վ���������̬��ȡÿ�ʽ��׵ĸ������տ��˺š��������������˵�������ֻ������10��</param>
        /// <param name="it_b_pay">��ʱʱ�䣬����Ĭ����15�졣�˸�ֵ��ѡ��1h(1Сʱ),2h(2Сʱ),3h(3Сʱ),1d(1��),3d(3��),7d(7��),15d(15��),1c(����)</param>
        /// <param name="key">��ȫ������</param>
        /// <param name="input_charset">�ַ������ʽ Ŀǰ֧�� gbk �� utf-8</param>
        /// <param name="sign_type">ǩ����ʽ �����޸�</param>
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

            //����ǩ����������
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
            //���ǩ�����
            mysign = AlipayFunction.Build_mysign(sPara, _key, _sign_type, _input_charset);
        }
////////////////////////////////////////////////


�ڶ�������alipayto.aspx.cs�ļ�

��ע�͡����²�������Ҫͨ���µ�ʱ�Ķ������ݴ��������á��롰//////////�������֮��������������

�磺
////////////////////////////////
//��չ���ܲ��������Զ��峬ʱ(��Ҫʹ�ã��밴��ע��Ҫ��ĸ�ʽ��ֵ)
//�ù���Ĭ�ϲ���ͨ��
//���뿪ͨ��ʽ��
//��ʽһ����ϵ֧��������֧�����봦��
//��ʽ��������0571-88158090����
//��ʽ�����ύ�������루https://b.alipay.com/support/helperApply.htm?action=consultationApply��
string it_b_pay = "";
//��ʱʱ�䣬����Ĭ����15�졣���÷�Χ��1m~15d��,-�ָ�����~-��Χ �� m-���ӣ�h-Сʱ��d-�죬1c-���죨���ۺ�ʱ���������׶���0��رգ�
//�磺it_b_pay = "1m~1h,2h,3h,1c";
////////////////////////////////

�ڡ�����Ҫ����Ĳ������飬����Ķ���ע���·��ġ�AlipayService aliService = new AlipayService�����������������,it_b_pay��

�磺
////////////////////////////////
AlipayService aliService = new AlipayService(partner, seller_email, return_url, notify_url, show_url, out_trade_no, subject, body, total_fee, paymethod, defaultbank, anti_phishing_key, exter_invoke_ip, extra_common_param, buyer_email, royalty_type, royalty_parameters, it_b_pay, key, input_charset, sign_type);
////////////////////////////////

��������������������
 �������⣬��������
��������������������

����ڼ���֧�����ӿ�ʱ�������ʻ�������⣬��ʹ����������ӣ��ύ���롣
https://b.alipay.com/support/helperApply.htm?action=supportHome
���ǻ���ר�ŵļ���֧����ԱΪ������




