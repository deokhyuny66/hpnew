package com.freeze.mybatis.vo;

public class CalcCDUEntity {
	private String pid;
	private String cdu;
    private String etc;
    private String purchase_price;
    private String unit_price;
    private CalcCDUEntity cduen;
    
    public CalcCDUEntity getCduen() {
		return cduen;
	}
	public void setCduen(CalcCDUEntity cduen) {
		this.cduen = cduen;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getCdu() {
		return cdu;
	}
	public void setCdu(String cdu) {
		this.cdu = cdu;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(String purchase_price) {
		this.purchase_price = purchase_price;
	}
	public String getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(String unit_price) {
		this.unit_price = unit_price;
	}
}