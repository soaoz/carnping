package com.kh.carnping.member.model.vo;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeTokenRequest;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.plus.Plus;
import com.google.api.services.plus.model.Person;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

public class GoogleLoginBO {
    private static final String CLIENT_ID = "608003401765-tu9i7brvdkba0u1d102543cerr8m69vk.apps.googleusercontent.com";
    private static final String CLIENT_SECRET = "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";
    private static final String REDIRECT_URI = "http://localhost:8282/carnping/callbackGoogle.do";

//    private static final List<String> SCOPES = Arrays.asList("openid", "email", "profile", "phonenumbers");
    private static final List<String> SCOPES = Arrays.asList(
            "https://www.googleapis.com/auth/userinfo.profile",
            "https://www.googleapis.com/auth/userinfo.email",
    		"https://www.googleapis.com/auth/user.phonenumbers.read");
//    private static final List<String> SCOPES = Arrays.asList("https://www.googleapis.com/auth/userinfo.profile");

    private static final GoogleAuthorizationCodeFlow FLOW = new GoogleAuthorizationCodeFlow.Builder(
            new NetHttpTransport(),
            new JacksonFactory(),
            CLIENT_ID,
            CLIENT_SECRET,
            SCOPES)
            .build();
    
    public String getAccessToken(String code) throws IOException {
        HttpTransport httpTransport = new NetHttpTransport();
        JacksonFactory jsonFactory = new JacksonFactory();

        GoogleTokenResponse tokenResponse =
                new GoogleAuthorizationCodeTokenRequest(
                        httpTransport,
                        jsonFactory,
                        CLIENT_ID,
                        CLIENT_SECRET,
                        code,
                        REDIRECT_URI)
                        .execute();

        return tokenResponse.getAccessToken();
    }

    private static final SecureRandom SECURE_RANDOM = new SecureRandom();

    public static String getGoogleLoginUrl(HttpSession session) {
        String state = String.valueOf(SECURE_RANDOM.nextInt());
        GoogleAuthorizationCodeRequestUrl url = FLOW.newAuthorizationUrl()
                .setState(state)
                .setRedirectUri(REDIRECT_URI);
        session.setAttribute("state", state);
        return url.build();
    }

//    public static String getUserEmail(String code, HttpSession session) throws IOException {
//        String state = (String) session.getAttribute("state");
//        GoogleTokenResponse tokenResponse = null;
//        try {
//            tokenResponse = FLOW.newTokenRequest(code)
//                    .setRedirectUri(REDIRECT_URI)
//                    .execute();
//        } catch (TokenResponseException e) {
//            throw new IOException("Failed to retrieve token: " + e.getMessage());
//        }
//        Credential credential = FLOW.createAndStoreCredential(tokenResponse, null);
//        Plus plus = new Plus.Builder(new NetHttpTransport(), new JacksonFactory(), credential)
//                .setApplicationName("Google Login Example")
//                .build();
//        Person profile = plus.people().get("me").execute();
//        return profile.getEmails().get(0).getValue();
//    }
}
