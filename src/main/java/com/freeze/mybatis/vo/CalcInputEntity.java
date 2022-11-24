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
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof CalcInputEntity)) {
            return false;
        }
        final CalcInputEntity other = (CalcInputEntity)o;
        if (!other.canEqual(this)) {
            return false;
        }
        final Object this$widVal = this.getWidVal();
        final Object other$widVal = other.getWidVal();
        Label_0065: {
            if (this$widVal == null) {
                if (other$widVal == null) {
                    break Label_0065;
                }
            }
            else if (this$widVal.equals(other$widVal)) {
                break Label_0065;
            }
            return false;
        }
        final Object this$vertVal = this.getVertVal();
        final Object other$vertVal = other.getVertVal();
        Label_0102: {
            if (this$vertVal == null) {
                if (other$vertVal == null) {
                    break Label_0102;
                }
            }
            else if (this$vertVal.equals(other$vertVal)) {
                break Label_0102;
            }
            return false;
        }
        final Object this$hegVal = this.getHegVal();
        final Object other$hegVal = other.getHegVal();
        Label_0139: {
            if (this$hegVal == null) {
                if (other$hegVal == null) {
                    break Label_0139;
                }
            }
            else if (this$hegVal.equals(other$hegVal)) {
                break Label_0139;
            }
            return false;
        }
        final Object this$storeVal = this.getStoreVal();
        final Object other$storeVal = other.getStoreVal();
        Label_0176: {
            if (this$storeVal == null) {
                if (other$storeVal == null) {
                    break Label_0176;
                }
            }
            else if (this$storeVal.equals(other$storeVal)) {
                break Label_0176;
            }
            return false;
        }
        final Object this$tempVal = this.getTempVal();
        final Object other$tempVal = other.getTempVal();
        Label_0213: {
            if (this$tempVal == null) {
                if (other$tempVal == null) {
                    break Label_0213;
                }
            }
            else if (this$tempVal.equals(other$tempVal)) {
                break Label_0213;
            }
            return false;
        }
        final Object this$mtypeVal = this.getMtypeVal();
        final Object other$mtypeVal = other.getMtypeVal();
        Label_0250: {
            if (this$mtypeVal == null) {
                if (other$mtypeVal == null) {
                    break Label_0250;
                }
            }
            else if (this$mtypeVal.equals(other$mtypeVal)) {
                break Label_0250;
            }
            return false;
        }
        final Object this$msizeVal = this.getMsizeVal();
        final Object other$msizeVal = other.getMsizeVal();
        Label_0287: {
            if (this$msizeVal == null) {
                if (other$msizeVal == null) {
                    break Label_0287;
                }
            }
            else if (this$msizeVal.equals(other$msizeVal)) {
                break Label_0287;
            }
            return false;
        }
        final Object this$purcheseVal = this.getPurcheseVal();
        final Object other$purcheseVal = other.getPurcheseVal();
        if (this$purcheseVal == null) {
            if (other$purcheseVal == null) {
                return true;
            }
        }
        else if (this$purcheseVal.equals(other$purcheseVal)) {
            return true;
        }
        return false;
    }
    
    protected boolean canEqual(final Object other) {
        return other instanceof CalcInputEntity;
    }
    
    @Override
    public int hashCode() {
        final int PRIME = 59;
        int result = 1;
        final Object $widVal = this.getWidVal();
        result = result * 59 + (($widVal == null) ? 43 : $widVal.hashCode());
        final Object $vertVal = this.getVertVal();
        result = result * 59 + (($vertVal == null) ? 43 : $vertVal.hashCode());
        final Object $hegVal = this.getHegVal();
        result = result * 59 + (($hegVal == null) ? 43 : $hegVal.hashCode());
        final Object $storeVal = this.getStoreVal();
        result = result * 59 + (($storeVal == null) ? 43 : $storeVal.hashCode());
        final Object $tempVal = this.getTempVal();
        result = result * 59 + (($tempVal == null) ? 43 : $tempVal.hashCode());
        final Object $mtypeVal = this.getMtypeVal();
        result = result * 59 + (($mtypeVal == null) ? 43 : $mtypeVal.hashCode());
        final Object $msizeVal = this.getMsizeVal();
        result = result * 59 + (($msizeVal == null) ? 43 : $msizeVal.hashCode());
        final Object $purcheseVal = this.getPurcheseVal();
        result = result * 59 + (($purcheseVal == null) ? 43 : $purcheseVal.hashCode());
        return result;
    }
    
    @Override
    public String toString() {
        return "CalcInputEntity(widVal=" + this.getWidVal() + ", vertVal=" + this.getVertVal() + ", hegVal=" + this.getHegVal() + ", storeVal=" + this.getStoreVal() + ", tempVal=" + this.getTempVal() + ", mtypeVal=" + this.getMtypeVal() + ", msizeVal=" + this.getMsizeVal() + ", purcheseVal=" + this.getPurcheseVal() + ")";
    }
}