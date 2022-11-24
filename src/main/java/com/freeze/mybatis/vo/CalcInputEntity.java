package com.freeze.mybatis.vo;

public class CalcInputEntity
{
    private String widVal;
    private String vertVal;
    private String hegVal;
    private String storeVal;
    private String tempVal;
    private String mtypeVal;
    private String msizeVal;
    private String purcheseVal;
    
    public String getWidVal() {
        return this.widVal;
    }
    
    public void setWidVal(final String widVal) {
        this.widVal = widVal;
    }
    
    public String getVertVal() {
        return this.vertVal;
    }
    
    public void setVertVal(final String vertVal) {
        this.vertVal = vertVal;
    }
    
    public String getHegVal() {
        return this.hegVal;
    }
    
    public void setHegVal(final String hegVal) {
        this.hegVal = hegVal;
    }
    
    public String getStoreVal() {
        return this.storeVal;
    }
    
    public void setStoreVal(final String storeVal) {
        this.storeVal = storeVal;
    }
    
    public String getTempVal() {
        return this.tempVal;
    }
    
    public void setTempVal(final String tempVal) {
        this.tempVal = tempVal;
    }
    
    public String getMtypeVal() {
        return this.mtypeVal;
    }
    
    public void setMtypeVal(final String mtypeVal) {
        this.mtypeVal = mtypeVal;
    }
    
    public String getMsizeVal() {
        return this.msizeVal;
    }
    
    public void setMsizeVal(final String msizeVal) {
        this.msizeVal = msizeVal;
    }
    
    public String getPurcheseVal() {
        return this.purcheseVal;
    }
    
    public void setPurcheseVal(final String purcheseVal) {
        this.purcheseVal = purcheseVal;
    }
    
    public CalcInputEntity() {
        this.widVal = null;
        this.vertVal = null;
        this.hegVal = null;
        this.storeVal = null;
        this.tempVal = null;
        this.mtypeVal = null;
        this.msizeVal = null;
        this.purcheseVal = null;
    }
    
    @Override
    public String toString() {
        return "CalcInputEntity(widVal=" + this.getWidVal() + ", vertVal=" + this.getVertVal() + ", hegVal=" + this.getHegVal() + ", storeVal=" + this.getStoreVal() + ", tempVal=" + this.getTempVal() + ", mtypeVal=" + this.getMtypeVal() + ", msizeVal=" + this.getMsizeVal() + ", purcheseVal=" + this.getPurcheseVal() + ")";
    }
}