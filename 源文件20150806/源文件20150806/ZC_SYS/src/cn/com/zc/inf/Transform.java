package cn.com.zc.inf;

import java.util.ArrayList;

import cn.com.zc.inf.model.DataSet;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class Transform {
	public String schemaToXml(ReqPacket reqPacket) throws Exception {
		XStream xstream = new XStream();
		xstream.alias("xml", ReqPacket.class);
		xstream.alias("value", Value.class);
		xstream.alias("condition", String.class);
		xstream.alias("param", Param.class);
		String responsexml = xstream.toXML(reqPacket);
		// 将请求报文中的双下划线替换成单下划线
		responsexml = "<?xml version=\"1.0\" encoding=\"utf-8\" ?> \n" + responsexml;
		return responsexml;
	}

	public ResPacket xmlToSchema(String requestxml) throws Exception {
		XStream xs = new XStream(new DomDriver());
		xs.alias("xml", ResPacket.class);
		xs.alias("dataset", DataSet.class);
		xs.alias("row", ArrayList.class);
		xs.alias("rows", ArrayList.class);
		xs.alias("value", Value.class);
		xs.alias("param",Param.class);
		xs.alias("params",ArrayList.class);
		xs.alias("name",String.class);
		xs.alias("val",String.class);
		xs.alias("status",String.class);
		xs.alias("errors",String.class);
		xs.alias("sql",String.class);
		xs.alias("sql1",String.class);
		xs.alias("sql2",String.class);
		xs.alias("id",String.class);
		ResPacket resPacket = (ResPacket) xs.fromXML(requestxml,
				new ResPacket());
		return resPacket;
	}
	
	
}
