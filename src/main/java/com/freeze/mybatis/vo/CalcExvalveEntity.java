package com.freeze.mybatis.vo;

public class CalcExvalveEntity {
	private String pid;
	private String exvalve;
    public String getExvalve() {
		return exvalve;
	}
	public void setExvalve(String exvalve) {
		this.exvalve = exvalve;
	}
	private String etc;
    private String purchase_price;
    private String unit_price;
    
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
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