package com.freeze.mybatis.vo;

public class CalcBaseEntity {
	private String pntid;
	private String returns_py;
    private String temper_type;
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
}
