package com.freeze.mybatis.vo;

public class CalcViewEntity {
	private String pntid;
	private String returns_py;
    private String temper_type;
	private String cdu;
    private String cdu_unit_price;
	private String cooler;
	private String cooler_unit_price;
    
    public String getCooler() {
		return cooler;
	}
	public void setCooler(String cooler) {
		this.cooler = cooler;
	}
	public String getCooler_unit_price() {
		return cooler_unit_price;
	}
	public void setCooler_unit_price(String cooler_unit_price) {
		this.cooler_unit_price = cooler_unit_price;
	}
	public String getPntid() {
		return pntid;
	}
	public void setPntid(String pntid) {
		this.pntid = pntid;
	}
	public String getReturns_py() {
		return returns_py;
	}
	public void setReturns_py(String returns_py) {
		this.returns_py = returns_py;
	}
	public String getTemper_type() {
		return temper_type;
	}
	public void setTemper_type(String temper_type) {
		this.temper_type = temper_type;
	}
	public String getCdu() {
		return cdu;
	}
	public void setCdu(String cdu) {
		this.cdu = cdu;
	}
	public String getCdu_unit_price() {
		return cdu_unit_price;
	}
	public void setCdu_unit_price(String cdu_unit_price) {
		this.cdu_unit_price = cdu_unit_price;
	}
}
