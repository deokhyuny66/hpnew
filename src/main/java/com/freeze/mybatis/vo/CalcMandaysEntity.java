package com.freeze.mybatis.vo;

public class CalcMandaysEntity {
	private String pid;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getManday() {
		return manday;
	}
	public void setManday(String manday) {
		this.manday = manday;
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
	private String manday;
	private String etc;
    private String purchase_price;
    private String unit_price;
}