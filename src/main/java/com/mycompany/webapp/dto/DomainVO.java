package com.mycompany.webapp.dto;

import java.sql.Date;

public class DomainVO {
	private int domainNo;
	private String domainNm;
	private String domainGnm;
	private String domainExpln;
	private String domainCatg;
	private String domainType;
	private String domainLength; 
	private String aprvStts;
	private String regDt;
	private String mdfcnDt;
	private String mdfcnId;
	private String regId;
	private String delYn;
	
	public int getDomainNo() {
		return domainNo;
	}
	public void setDomainNo(int domainNo) {
		this.domainNo = domainNo;
	}
	public String getDomainNm() {
		return domainNm;
	}
	public void setDomainNm(String domainNm) {
		this.domainNm = domainNm;
	}
	public String getDomainGnm() {
		return domainGnm;
	}
	public void setDomainGnm(String domainGnm) {
		this.domainGnm = domainGnm;
	}
	public String getDomainExpln() {
		return domainExpln;
	}
	public void setDomainExpln(String domainExpln) {
		this.domainExpln = domainExpln;
	}
	public String getDomainCatg() {
		return domainCatg;
	}
	public void setDomainCatg(String domainCatg) {
		this.domainCatg = domainCatg;
	}
	public String getDomainType() {
		return domainType;
	}
	public void setDomainType(String domainType) {
		this.domainType = domainType;
	}
	public String getDomainLength() {
		return domainLength;
	}
	public void setDomainLength(String domainLength) {
		this.domainLength = domainLength;
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
		return "DomainVO [domainNo=" + domainNo + ", domainNm=" + domainNm + ", domainGnm=" + domainGnm
				+ ", domainExpln=" + domainExpln + ", domainCatg=" + domainCatg + ", domainType=" + domainType
				+ ", domainLength=" + domainLength + ", aprvStts=" + aprvStts + ", regDt=" + regDt + ", mdfcnDt="
				+ mdfcnDt + ", mdfcnId=" + mdfcnId + ", regId=" + regId + ", delYn=" + delYn + "]";
	}
	
	
	
}
