package com.mycompany.webapp.dto;

import java.sql.Date;

public class TermVO {
	private int termNo;
	private String termNm;
	private String termExpln;
	private String termEngAbbn;
	private String termDnm; 
	private String aprvStts;
	private String regDt;
	private String mdfcnDt;
	private String mdfcnId;
	private String regId;
	private String delYn;
	
	public int getTermNo() {
		return termNo;
	}
	public void setTermNo(int termNo) {
		this.termNo = termNo;
	}
	public String getTermNm() {
		return termNm;
	}
	public void setTermNm(String termNm) {
		this.termNm = termNm;
	}
	public String getTermExpln() {
		return termExpln;
	}
	public void setTermExpln(String termExpln) {
		this.termExpln = termExpln;
	}
	public String getTermEngAbbn() {
		return termEngAbbn;
	}
	public void setTermEngAbbn(String termEngAbbn) {
		this.termEngAbbn = termEngAbbn;
	}
	public String getTermDnm() {
		return termDnm;
	}
	public void setTermDnm(String termDnm) {
		this.termDnm = termDnm;
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
		return "TermVO [termNo=" + termNo + ", termNm=" + termNm + ", termExpln=" + termExpln + ", termEngAbbn="
				+ termEngAbbn + ", termDnm=" + termDnm + ", aprvStts=" + aprvStts + ", regDt=" + regDt + ", mdfcnDt="
				+ mdfcnDt + ", mdfcnId=" + mdfcnId + ", regId=" + regId + ", delYn=" + delYn + "]";
	}
	
	
}
