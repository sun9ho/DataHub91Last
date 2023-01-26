package com.mycompany.webapp.dto;


public class WordVO {
	
	private int wordNo;
	private String wordNm;
	private String wordEngAbbn;
	private String wordEngNm;
	private String wordExpln;
	private String aprvStts;
	private String regDt;
	private String mdfcnDt;
	private String mdfcnId;
	private String regId;
	private String delYn;
	
	public int getWordNo() {
		return wordNo;
	}
	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
	}
	public String getWordNm() {
		return wordNm;
	}
	public void setWordNm(String wordNm) {
		this.wordNm = wordNm;
	}
	public String getWordEngAbbn() {
		return wordEngAbbn;
	}
	public void setWordEngAbbn(String wordEngAbbn) {
		this.wordEngAbbn = wordEngAbbn;
	}
	public String getWordEngNm() {
		return wordEngNm;
	}
	public void setWordEngNm(String wordEngNm) {
		this.wordEngNm = wordEngNm;
	}
	public String getWordExpln() {
		return wordExpln;
	}
	public void setWordExpln(String wordExpln) {
		this.wordExpln = wordExpln;
	}
	public String getAprvStts() {
		return aprvStts;
	}
	public void setAprvStts(String aprvStts) {
		this.aprvStts = aprvStts;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getMdfcnDt() {
		return mdfcnDt;
	}
	public void setMdfcnDt(String mdfcnDt) {
		this.mdfcnDt = mdfcnDt;
	}
	public String getMdfcnId() {
		return mdfcnId;
	}
	public void setMdfcnId(String mdfcnId) {
		this.mdfcnId = mdfcnId;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	@Override
	public String toString() {
		return "WordVO [wordNo=" + wordNo + ", wordNm=" + wordNm + ", wordEngAbbn=" + wordEngAbbn + ", wordEngNm="
				+ wordEngNm + ", wordExpln=" + wordExpln + ", aprvStts=" + aprvStts + ", regDt=" + regDt + ", mdfcnDt="
				+ mdfcnDt + ", mdfcnId=" + mdfcnId + ", regId=" + regId + ", delYn=" + delYn + "]";
	}
	
	
		
}
