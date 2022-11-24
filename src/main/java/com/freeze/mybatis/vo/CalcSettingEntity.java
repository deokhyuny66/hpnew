package com.freeze.mybatis.vo;

public class CalcSettingEntity
{
    private String py_index;
    private String returns_py;
    private String temper_type;
    private String cdu;
    private String cooler;
    private String control;
    private String ex_valve;
    private String elec_valve;
    private String high_piping;
    private String row_piping;
    private String high_lagging;
    private String row_lagging;
    private String power;
    private String op_assis1;
    private String op_assis2;
    private String op_assis3;
    private String engin_cnt;
    private String construc_period;
    private String etc;
    
    public String getPy_index() {
        return this.py_index;
    }
    
    public void setPy_index(final String py_index) {
        this.py_index = py_index;
    }
    
    public String getReturns_py() {
        return this.returns_py;
    }
    
    public void setReturns_py(final String returns_py) {
        this.returns_py = returns_py;
    }
    
    public String getTemper_type() {
        return this.temper_type;
    }
    
    public void setTemper_type(final String temper_type) {
        this.temper_type = temper_type;
    }
    
    public String getCdu() {
        return this.cdu;
    }
    
    public void setCdu(final String cdu) {
        this.cdu = cdu;
    }
    
    public String getCooler() {
        return this.cooler;
    }
    
    public void setCooler(final String cooler) {
        this.cooler = cooler;
    }
    
    public String getControl() {
        return this.control;
    }
    
    public void setControl(final String control) {
        this.control = control;
    }
    
    public String getEx_valve() {
        return this.ex_valve;
    }
    
    public void setEx_valve(final String ex_valve) {
        this.ex_valve = ex_valve;
    }
    
    public String getElec_valve() {
        return this.elec_valve;
    }
    
    public void setElec_valve(final String elec_valve) {
        this.elec_valve = elec_valve;
    }
    
    public String getHigh_piping() {
        return this.high_piping;
    }
    
    public void setHigh_piping(final String high_piping) {
        this.high_piping = high_piping;
    }
    
    public String getRow_piping() {
        return this.row_piping;
    }
    
    public void setRow_piping(final String row_piping) {
        this.row_piping = row_piping;
    }
    
    public String getHigh_lagging() {
        return this.high_lagging;
    }
    
    public void setHigh_lagging(final String high_lagging) {
        this.high_lagging = high_lagging;
    }
    
    public String getRow_lagging() {
        return this.row_lagging;
    }
    
    public void setRow_lagging(final String row_lagging) {
        this.row_lagging = row_lagging;
    }
    
    public String getPower() {
        return this.power;
    }
    
    public void setPower(final String power) {
        this.power = power;
    }
    
    public String getOp_assis1() {
        return this.op_assis1;
    }
    
    public void setOp_assis1(final String op_assis1) {
        this.op_assis1 = op_assis1;
    }
    
    public String getOp_assis2() {
        return this.op_assis2;
    }
    
    public void setOp_assis2(final String op_assis2) {
        this.op_assis2 = op_assis2;
    }
    
    public String getOp_assis3() {
        return this.op_assis3;
    }
    
    public void setOp_assis3(final String op_assis3) {
        this.op_assis3 = op_assis3;
    }
    
    public String getEngin_cnt() {
        return this.engin_cnt;
    }
    
    public void setEngin_cnt(final String engin_cnt) {
        this.engin_cnt = engin_cnt;
    }
    
    public String getConstruc_period() {
        return this.construc_period;
    }
    
    public void setConstruc_period(final String construc_period) {
        this.construc_period = construc_period;
    }
    
    public String getEtc() {
        return this.etc;
    }
    
    public void setEtc(final String etc) {
        this.etc = etc;
    }
    
    public CalcSettingEntity() {
        this.py_index = null;
        this.returns_py = null;
        this.temper_type = null;
        this.cdu = null;
        this.cooler = null;
        this.control = null;
        this.ex_valve = null;
        this.elec_valve = null;
        this.high_piping = null;
        this.row_piping = null;
        this.high_lagging = null;
        this.row_lagging = null;
        this.power = null;
        this.op_assis1 = null;
        this.op_assis2 = null;
        this.op_assis3 = null;
        this.engin_cnt = null;
        this.construc_period = null;
        this.etc = null;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof CalcSettingEntity)) {
            return false;
        }
        final CalcSettingEntity other = (CalcSettingEntity)o;
        if (!other.canEqual(this)) {
            return false;
        }
        final Object this$py_index = this.getPy_index();
        final Object other$py_index = other.getPy_index();
        Label_0065: {
            if (this$py_index == null) {
                if (other$py_index == null) {
                    break Label_0065;
                }
            }
            else if (this$py_index.equals(other$py_index)) {
                break Label_0065;
            }
            return false;
        }
        final Object this$returns_py = this.getReturns_py();
        final Object other$returns_py = other.getReturns_py();
        Label_0102: {
            if (this$returns_py == null) {
                if (other$returns_py == null) {
                    break Label_0102;
                }
            }
            else if (this$returns_py.equals(other$returns_py)) {
                break Label_0102;
            }
            return false;
        }
        final Object this$temper_type = this.getTemper_type();
        final Object other$temper_type = other.getTemper_type();
        Label_0139: {
            if (this$temper_type == null) {
                if (other$temper_type == null) {
                    break Label_0139;
                }
            }
            else if (this$temper_type.equals(other$temper_type)) {
                break Label_0139;
            }
            return false;
        }
        final Object this$cdu = this.getCdu();
        final Object other$cdu = other.getCdu();
        Label_0176: {
            if (this$cdu == null) {
                if (other$cdu == null) {
                    break Label_0176;
                }
            }
            else if (this$cdu.equals(other$cdu)) {
                break Label_0176;
            }
            return false;
        }
        final Object this$cooler = this.getCooler();
        final Object other$cooler = other.getCooler();
        Label_0213: {
            if (this$cooler == null) {
                if (other$cooler == null) {
                    break Label_0213;
                }
            }
            else if (this$cooler.equals(other$cooler)) {
                break Label_0213;
            }
            return false;
        }
        final Object this$control = this.getControl();
        final Object other$control = other.getControl();
        Label_0250: {
            if (this$control == null) {
                if (other$control == null) {
                    break Label_0250;
                }
            }
            else if (this$control.equals(other$control)) {
                break Label_0250;
            }
            return false;
        }
        final Object this$ex_valve = this.getEx_valve();
        final Object other$ex_valve = other.getEx_valve();
        Label_0287: {
            if (this$ex_valve == null) {
                if (other$ex_valve == null) {
                    break Label_0287;
                }
            }
            else if (this$ex_valve.equals(other$ex_valve)) {
                break Label_0287;
            }
            return false;
        }
        final Object this$elec_valve = this.getElec_valve();
        final Object other$elec_valve = other.getElec_valve();
        Label_0324: {
            if (this$elec_valve == null) {
                if (other$elec_valve == null) {
                    break Label_0324;
                }
            }
            else if (this$elec_valve.equals(other$elec_valve)) {
                break Label_0324;
            }
            return false;
        }
        final Object this$high_piping = this.getHigh_piping();
        final Object other$high_piping = other.getHigh_piping();
        Label_0361: {
            if (this$high_piping == null) {
                if (other$high_piping == null) {
                    break Label_0361;
                }
            }
            else if (this$high_piping.equals(other$high_piping)) {
                break Label_0361;
            }
            return false;
        }
        final Object this$row_piping = this.getRow_piping();
        final Object other$row_piping = other.getRow_piping();
        Label_0398: {
            if (this$row_piping == null) {
                if (other$row_piping == null) {
                    break Label_0398;
                }
            }
            else if (this$row_piping.equals(other$row_piping)) {
                break Label_0398;
            }
            return false;
        }
        final Object this$high_lagging = this.getHigh_lagging();
        final Object other$high_lagging = other.getHigh_lagging();
        Label_0435: {
            if (this$high_lagging == null) {
                if (other$high_lagging == null) {
                    break Label_0435;
                }
            }
            else if (this$high_lagging.equals(other$high_lagging)) {
                break Label_0435;
            }
            return false;
        }
        final Object this$row_lagging = this.getRow_lagging();
        final Object other$row_lagging = other.getRow_lagging();
        Label_0472: {
            if (this$row_lagging == null) {
                if (other$row_lagging == null) {
                    break Label_0472;
                }
            }
            else if (this$row_lagging.equals(other$row_lagging)) {
                break Label_0472;
            }
            return false;
        }
        final Object this$power = this.getPower();
        final Object other$power = other.getPower();
        Label_0509: {
            if (this$power == null) {
                if (other$power == null) {
                    break Label_0509;
                }
            }
            else if (this$power.equals(other$power)) {
                break Label_0509;
            }
            return false;
        }
        final Object this$op_assis1 = this.getOp_assis1();
        final Object other$op_assis1 = other.getOp_assis1();
        Label_0546: {
            if (this$op_assis1 == null) {
                if (other$op_assis1 == null) {
                    break Label_0546;
                }
            }
            else if (this$op_assis1.equals(other$op_assis1)) {
                break Label_0546;
            }
            return false;
        }
        final Object this$op_assis2 = this.getOp_assis2();
        final Object other$op_assis2 = other.getOp_assis2();
        Label_0583: {
            if (this$op_assis2 == null) {
                if (other$op_assis2 == null) {
                    break Label_0583;
                }
            }
            else if (this$op_assis2.equals(other$op_assis2)) {
                break Label_0583;
            }
            return false;
        }
        final Object this$op_assis3 = this.getOp_assis3();
        final Object other$op_assis3 = other.getOp_assis3();
        Label_0620: {
            if (this$op_assis3 == null) {
                if (other$op_assis3 == null) {
                    break Label_0620;
                }
            }
            else if (this$op_assis3.equals(other$op_assis3)) {
                break Label_0620;
            }
            return false;
        }
        final Object this$engin_cnt = this.getEngin_cnt();
        final Object other$engin_cnt = other.getEngin_cnt();
        Label_0657: {
            if (this$engin_cnt == null) {
                if (other$engin_cnt == null) {
                    break Label_0657;
                }
            }
            else if (this$engin_cnt.equals(other$engin_cnt)) {
                break Label_0657;
            }
            return false;
        }
        final Object this$construc_period = this.getConstruc_period();
        final Object other$construc_period = other.getConstruc_period();
        Label_0694: {
            if (this$construc_period == null) {
                if (other$construc_period == null) {
                    break Label_0694;
                }
            }
            else if (this$construc_period.equals(other$construc_period)) {
                break Label_0694;
            }
            return false;
        }
        final Object this$etc = this.getEtc();
        final Object other$etc = other.getEtc();
        if (this$etc == null) {
            if (other$etc == null) {
                return true;
            }
        }
        else if (this$etc.equals(other$etc)) {
            return true;
        }
        return false;
    }
    
    protected boolean canEqual(final Object other) {
        return other instanceof CalcSettingEntity;
    }
    
    @Override
    public int hashCode() {
        final int PRIME = 59;
        int result = 1;
        final Object $py_index = this.getPy_index();
        result = result * 59 + (($py_index == null) ? 43 : $py_index.hashCode());
        final Object $returns_py = this.getReturns_py();
        result = result * 59 + (($returns_py == null) ? 43 : $returns_py.hashCode());
        final Object $temper_type = this.getTemper_type();
        result = result * 59 + (($temper_type == null) ? 43 : $temper_type.hashCode());
        final Object $cdu = this.getCdu();
        result = result * 59 + (($cdu == null) ? 43 : $cdu.hashCode());
        final Object $cooler = this.getCooler();
        result = result * 59 + (($cooler == null) ? 43 : $cooler.hashCode());
        final Object $control = this.getControl();
        result = result * 59 + (($control == null) ? 43 : $control.hashCode());
        final Object $ex_valve = this.getEx_valve();
        result = result * 59 + (($ex_valve == null) ? 43 : $ex_valve.hashCode());
        final Object $elec_valve = this.getElec_valve();
        result = result * 59 + (($elec_valve == null) ? 43 : $elec_valve.hashCode());
        final Object $high_piping = this.getHigh_piping();
        result = result * 59 + (($high_piping == null) ? 43 : $high_piping.hashCode());
        final Object $row_piping = this.getRow_piping();
        result = result * 59 + (($row_piping == null) ? 43 : $row_piping.hashCode());
        final Object $high_lagging = this.getHigh_lagging();
        result = result * 59 + (($high_lagging == null) ? 43 : $high_lagging.hashCode());
        final Object $row_lagging = this.getRow_lagging();
        result = result * 59 + (($row_lagging == null) ? 43 : $row_lagging.hashCode());
        final Object $power = this.getPower();
        result = result * 59 + (($power == null) ? 43 : $power.hashCode());
        final Object $op_assis1 = this.getOp_assis1();
        result = result * 59 + (($op_assis1 == null) ? 43 : $op_assis1.hashCode());
        final Object $op_assis2 = this.getOp_assis2();
        result = result * 59 + (($op_assis2 == null) ? 43 : $op_assis2.hashCode());
        final Object $op_assis3 = this.getOp_assis3();
        result = result * 59 + (($op_assis3 == null) ? 43 : $op_assis3.hashCode());
        final Object $engin_cnt = this.getEngin_cnt();
        result = result * 59 + (($engin_cnt == null) ? 43 : $engin_cnt.hashCode());
        final Object $construc_period = this.getConstruc_period();
        result = result * 59 + (($construc_period == null) ? 43 : $construc_period.hashCode());
        final Object $etc = this.getEtc();
        result = result * 59 + (($etc == null) ? 43 : $etc.hashCode());
        return result;
    }
    
    @Override
    public String toString() {
        return "CalcSettingEntity(py_index=" + this.getPy_index() + ", returns_py=" + this.getReturns_py() + ", temper_type=" + this.getTemper_type() + ", cdu=" + this.getCdu() + ", cooler=" + this.getCooler() + ", control=" + this.getControl() + ", ex_valve=" + this.getEx_valve() + ", elec_valve=" + this.getElec_valve() + ", high_piping=" + this.getHigh_piping() + ", row_piping=" + this.getRow_piping() + ", high_lagging=" + this.getHigh_lagging() + ", row_lagging=" + this.getRow_lagging() + ", power=" + this.getPower() + ", op_assis1=" + this.getOp_assis1() + ", op_assis2=" + this.getOp_assis2() + ", op_assis3=" + this.getOp_assis3() + ", engin_cnt=" + this.getEngin_cnt() + ", construc_period=" + this.getConstruc_period() + ", etc=" + this.getEtc() + ")";
    }
}