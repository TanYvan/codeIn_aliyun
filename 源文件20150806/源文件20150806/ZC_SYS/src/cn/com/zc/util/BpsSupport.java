package cn.com.zc.util;


import java.util.concurrent.ExecutionException;
import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 调用服务的支持类，多例。
 * 
 * */
public class BpsSupport {
	//private static final BpsSupport instance = new BpsSupport();
	private final String CONTENT_TYPE = "text/xml";
//	private static final String CHARSET = "GBK";
	private final int RETRY_COUNT = 3;
	private final boolean SENT_RETRY = true;
	/** 文本：（空） */
	public final String TEXT_EMPTY = "";
	/** 参数信息 */
	private int connectionTimeout = 0;
	//private static String sinoBpsServiceUrl = ReadProperties.getString("url");
	private String serviceUrl;

	/** 日志功能 */
	private  Log log = LogFactory.getLog(this.getClass());

	/** 构造函数 */
	public BpsSupport() {
		serviceUrl = ReadProperties.getString("defaultUrl");
	}
	
	public BpsSupport(String url) {
		serviceUrl = ReadProperties.getString(url);
	}

	/** 获取实例 */
	//public BpsSupport getInstance() {
	//	return instance;
	//}
	
	/** 获取实例 */
	//public static BpsSupport getInstance(String url) {	
	//	return instance;
	//}

	/** 初始化 目前没用到。*/
//	public synchronized void init(BpsSettings iaciSettings) {
//		this.connectionTimeout = iaciSettings.getConnectionTimeout().intValue();
//		BpsSupport.sinoBpsServiceUrl = iaciSettings.getSinoiaciServiceUrl();
//	}

	/** 执行调用 */
	public String execute(String fun, String xml) throws ExecutionException {
		// - HttpClientParams
		log.debug("server URL is :"+ serviceUrl);
		HttpClientParams httpClientParams = new HttpClientParams();
		httpClientParams.setConnectionManagerTimeout(this.connectionTimeout);
		httpClientParams.setSoTimeout(this.connectionTimeout);
		
		// - MultiThreadedHttpConnectionManager
		MultiThreadedHttpConnectionManager connectionManager = new MultiThreadedHttpConnectionManager();

		// - HttpClient
		HttpClient httpClient = new HttpClient(httpClientParams,
				connectionManager);
		// - PostMethod
		PostMethod postMethod = new PostMethod(serviceUrl + fun);
		//postMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
				//new DefaultHttpMethodRetryHandler(RETRY_COUNT, SENT_RETRY));
		postMethod.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");    
		try {
			// - 参数
			//postMethod.setRequestEntity(new StringRequestEntity(xml,
			//		CONTENT_TYPE, "utf-8"));
			//postMethod.addRequestHeader("Connection", "close");
			NameValuePair[] param = { new NameValuePair("xml",xml)};
			postMethod.setRequestBody(param); 
			// - 执行
			int statusCode = httpClient.executeMethod(postMethod);
			// - 返回
			String result = null;
			// 判断是否链接url成功
			if (statusCode != HttpStatus.SC_OK) {
			} else {
				// 得到返回值
				byte[] bodydata = postMethod.getResponseBody();
				
				result = new String(bodydata, "GBK");
				log.debug("responseXml is "+result);
			}
			return result;
		} catch (Exception e) {
			throw new ExecutionException(e);
		} finally {
			postMethod.releaseConnection();
		}
	}
	/** 通过字符串截取，获得标签的值 */
	private String getTagValue(String requestMessage, String tag) {
		int beginIndex = requestMessage.indexOf(tag);// 得到开始标记<tag>中的"<"的起始位置
		/**解决xstream下划线问题**************start*/
		if(beginIndex == -1){
			tag = tag.replace("_", "__");
			beginIndex = requestMessage.indexOf(tag);
		}
		/**解决xstream下划线问题**************end*/
		int endIndex = -1;

		String tagValue = "";

		if (beginIndex >= 0) {
			String endTag = "</" + tag.substring(1);
			endIndex = requestMessage.indexOf(endTag); // 得到结束标记</tag>中的"<"的起始位置
			tagValue = requestMessage.substring(beginIndex + tag.length(),
					endIndex);
			tagValue = tagValue.replaceAll("\r", TEXT_EMPTY);
			tagValue = tagValue.replaceAll("\n", TEXT_EMPTY);
			tagValue = tagValue.replaceAll("\t", TEXT_EMPTY);
			tagValue = tagValue.trim();
		}
		return tagValue;
	}
}
