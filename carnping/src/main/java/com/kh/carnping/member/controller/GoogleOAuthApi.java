package com.kh.carnping.member.controller;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class GoogleOAuthApi extends DefaultApi20  {

	protected GoogleOAuthApi() {
	}
	
	private static class InstanceHolder{
		private static final GoogleOAuthApi INSTANCE = new GoogleOAuthApi();
	}
	
    public static GoogleOAuthApi instance(){
        return InstanceHolder.INSTANCE;
    }
	
	@Override
	public String getAccessTokenEndpoint() {
		return "https://oauth2.googleapis.com/token";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://accounts.google.com/o/oauth2/v2/auth";
	}

}
