package com.kh.carnping.member.model.service;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class SmsService {

	private String appKey ="1AooOSi4o8SpwUyRhCMy";
	private String appSecret ="0aITT8AF7WpGkhgcoHyfjsZWICKaUY0xuQCDRyUA";

	private static final String API_URL = "https://sens.apigw.ntruss.com/sms/v2/services/{serviceId}/messages";
	
    public void sendSms(String phoneNumber, String message) throws Exception {
        String serviceId = "ncp:sms:kr:300593037532:carnping";
        String senderPhoneNumber = "01076250340";

        System.out.println(phoneNumber +"서비스컨트롤러");
        JSONObject body = new JSONObject();
        body.put("type", "SMS");
        body.put("contentType", "COMM");
        body.put("countryCode", "82");
        body.put("from", senderPhoneNumber);
        body.put("content", message);
        body.put("messages", new JSONArray().put(new JSONObject().put("to", phoneNumber)));

        HttpClient httpClient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost(API_URL.replace("{serviceId}", serviceId));
        httpPost.setEntity(new StringEntity(body.toString(), "UTF-8"));
        httpPost.setHeader("Content-Type", "application/json; charset=UTF-8");
        httpPost.setHeader("X-NCP-auth-key", appKey);
        httpPost.setHeader("X-NCP-service-secret", appSecret);

        HttpResponse httpResponse = httpClient.execute(httpPost);
        String responseJsonString = EntityUtils.toString(httpResponse.getEntity());
        JSONObject responseJson = new JSONObject(responseJsonString);

//        if (!responseJson.getJSONObject("status").getString("groupName").equals("SUCCESS")) {
//            throw new Exception("SMS 전송에 실패하였습니다.");
//        }
        
    }
   

}
