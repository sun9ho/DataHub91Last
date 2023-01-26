package com.mycompany.webapp.dto;

public class MemberVO {
	private String mbrId;
	private String mbrPswd;
	private String mbrEml;
	private String mbrYn;
	
	public String getMbrId() {
		return mbrId;
	}
	public void setMbrId(String mbrId) {
		this.mbrId = mbrId;
	}
	public String getMbrPswd() {
		return mbrPswd;
	}
	public void setMbrPswd(String mbrPswd) {
		this.mbrPswd = mbrPswd;
	}
	public String getMbrEml() {
		return mbrEml;
	}
	public void setMbrEml(String mbrEml) {
		this.mbrEml = mbrEml;
	}
	public String getMbrYn() {
		return mbrYn;
	}
	public void setMbrYn(String mbrYn) {
		this.mbrYn = mbrYn;
	}
	
	@Override
	public String toString() {
		return "MemberVo [mbrId=" + mbrId + ", mbrPswd=" + mbrPswd + ", mbrEml=" + mbrEml + ", mbrYn=" + mbrYn + "]";
	}	

}
