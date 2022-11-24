package com.freeze.mybatis.vo;

public class CalcPriceEntity
{
    private String price_index;
    private String panel;
    private String overlap;
    private String base;
    private String sub;
    private String copper_pipe;
    private String overlap_01;
    private String overlap_02;
    private String slide_one_01;
    private String slide_one_02;
    private String slide_two_01;
    private String slide_two_02;
    private String man_day;
    
    public String getPrice_index() {
        return this.price_index;
    }
    
    public void setPrice_index(final String price_index) {
        this.price_index = price_index;
    }
    
    public String getPanel() {
        return this.panel;
    }
    
    public void setPanel(final String panel) {
        this.panel = panel;
    }
    
    public String getOverlap() {
        return this.overlap;
    }
    
    public void setOverlap(final String overlap) {
        this.overlap = overlap;
    }
    
    public String getBase() {
        return this.base;
    }
    
    public void setBase(final String base) {
        this.base = base;
    }
    
    public String getSub() {
        return this.sub;
    }
    
    public void setSub(final String sub) {
        this.sub = sub;
    }
    
    public String getCopper_pipe() {
        return this.copper_pipe;
    }
    
    public void setCopper_pipe(final String copper_pipe) {
        this.copper_pipe = copper_pipe;
    }
    
    public String getOverlap_01() {
        return this.overlap_01;
    }
    
    public void setOverlap_01(final String overlap_01) {
        this.overlap_01 = overlap_01;
    }
    
    public String getOverlap_02() {
        return this.overlap_02;
    }
    
    public void setOverlap_02(final String overlap_02) {
        this.overlap_02 = overlap_02;
    }
    
    public String getSlide_one_01() {
        return this.slide_one_01;
    }
    
    public void setSlide_one_01(final String slide_one_01) {
        this.slide_one_01 = slide_one_01;
    }
    
    public String getSlide_one_02() {
        return this.slide_one_02;
    }
    
    public void setSlide_one_02(final String slide_one_02) {
        this.slide_one_02 = slide_one_02;
    }
    
    public String getSlide_two_01() {
        return this.slide_two_01;
    }
    
    public void setSlide_two_01(final String slide_two_01) {
        this.slide_two_01 = slide_two_01;
    }
    
    public String getSlide_two_02() {
        return this.slide_two_02;
    }
    
    public void setSlide_two_02(final String slide_two_02) {
        this.slide_two_02 = slide_two_02;
    }
    
    public String getMan_day() {
        return this.man_day;
    }
    
    public void setMan_day(final String man_day) {
        this.man_day = man_day;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof CalcPriceEntity)) {
            return false;
        }
        final CalcPriceEntity other = (CalcPriceEntity)o;
        if (!other.canEqual(this)) {
            return false;
        }
        final Object this$price_index = this.getPrice_index();
        final Object other$price_index = other.getPrice_index();
        Label_0065: {
            if (this$price_index == null) {
                if (other$price_index == null) {
                    break Label_0065;
                }
            }
            else if (this$price_index.equals(other$price_index)) {
                break Label_0065;
            }
            return false;
        }
        final Object this$panel = this.getPanel();
        final Object other$panel = other.getPanel();
        Label_0102: {
            if (this$panel == null) {
                if (other$panel == null) {
                    break Label_0102;
                }
            }
            else if (this$panel.equals(other$panel)) {
                break Label_0102;
            }
            return false;
        }
        final Object this$overlap = this.getOverlap();
        final Object other$overlap = other.getOverlap();
        Label_0139: {
            if (this$overlap == null) {
                if (other$overlap == null) {
                    break Label_0139;
                }
            }
            else if (this$overlap.equals(other$overlap)) {
                break Label_0139;
            }
            return false;
        }
        final Object this$base = this.getBase();
        final Object other$base = other.getBase();
        Label_0176: {
            if (this$base == null) {
                if (other$base == null) {
                    break Label_0176;
                }
            }
            else if (this$base.equals(other$base)) {
                break Label_0176;
            }
            return false;
        }
        final Object this$sub = this.getSub();
        final Object other$sub = other.getSub();
        Label_0213: {
            if (this$sub == null) {
                if (other$sub == null) {
                    break Label_0213;
                }
            }
            else if (this$sub.equals(other$sub)) {
                break Label_0213;
            }
            return false;
        }
        final Object this$copper_pipe = this.getCopper_pipe();
        final Object other$copper_pipe = other.getCopper_pipe();
        Label_0250: {
            if (this$copper_pipe == null) {
                if (other$copper_pipe == null) {
                    break Label_0250;
                }
            }
            else if (this$copper_pipe.equals(other$copper_pipe)) {
                break Label_0250;
            }
            return false;
        }
        final Object this$overlap_01 = this.getOverlap_01();
        final Object other$overlap_01 = other.getOverlap_01();
        Label_0287: {
            if (this$overlap_01 == null) {
                if (other$overlap_01 == null) {
                    break Label_0287;
                }
            }
            else if (this$overlap_01.equals(other$overlap_01)) {
                break Label_0287;
            }
            return false;
        }
        final Object this$overlap_2 = this.getOverlap_02();
        final Object other$overlap_2 = other.getOverlap_02();
        Label_0324: {
            if (this$overlap_2 == null) {
                if (other$overlap_2 == null) {
                    break Label_0324;
                }
            }
            else if (this$overlap_2.equals(other$overlap_2)) {
                break Label_0324;
            }
            return false;
        }
        final Object this$slide_one_01 = this.getSlide_one_01();
        final Object other$slide_one_01 = other.getSlide_one_01();
        Label_0361: {
            if (this$slide_one_01 == null) {
                if (other$slide_one_01 == null) {
                    break Label_0361;
                }
            }
            else if (this$slide_one_01.equals(other$slide_one_01)) {
                break Label_0361;
            }
            return false;
        }
        final Object this$slide_one_2 = this.getSlide_one_02();
        final Object other$slide_one_2 = other.getSlide_one_02();
        Label_0398: {
            if (this$slide_one_2 == null) {
                if (other$slide_one_2 == null) {
                    break Label_0398;
                }
            }
            else if (this$slide_one_2.equals(other$slide_one_2)) {
                break Label_0398;
            }
            return false;
        }
        final Object this$slide_two_01 = this.getSlide_two_01();
        final Object other$slide_two_01 = other.getSlide_two_01();
        Label_0435: {
            if (this$slide_two_01 == null) {
                if (other$slide_two_01 == null) {
                    break Label_0435;
                }
            }
            else if (this$slide_two_01.equals(other$slide_two_01)) {
                break Label_0435;
            }
            return false;
        }
        final Object this$slide_two_2 = this.getSlide_two_02();
        final Object other$slide_two_2 = other.getSlide_two_02();
        Label_0472: {
            if (this$slide_two_2 == null) {
                if (other$slide_two_2 == null) {
                    break Label_0472;
                }
            }
            else if (this$slide_two_2.equals(other$slide_two_2)) {
                break Label_0472;
            }
            return false;
        }
        final Object this$man_day = this.getMan_day();
        final Object other$man_day = other.getMan_day();
        if (this$man_day == null) {
            if (other$man_day == null) {
                return true;
            }
        }
        else if (this$man_day.equals(other$man_day)) {
            return true;
        }
        return false;
    }
    
    protected boolean canEqual(final Object other) {
        return other instanceof CalcPriceEntity;
    }
    
    @Override
    public int hashCode() {
        final int PRIME = 59;
        int result = 1;
        final Object $price_index = this.getPrice_index();
        result = result * 59 + (($price_index == null) ? 43 : $price_index.hashCode());
        final Object $panel = this.getPanel();
        result = result * 59 + (($panel == null) ? 43 : $panel.hashCode());
        final Object $overlap = this.getOverlap();
        result = result * 59 + (($overlap == null) ? 43 : $overlap.hashCode());
        final Object $base = this.getBase();
        result = result * 59 + (($base == null) ? 43 : $base.hashCode());
        final Object $sub = this.getSub();
        result = result * 59 + (($sub == null) ? 43 : $sub.hashCode());
        final Object $copper_pipe = this.getCopper_pipe();
        result = result * 59 + (($copper_pipe == null) ? 43 : $copper_pipe.hashCode());
        final Object $overlap_01 = this.getOverlap_01();
        result = result * 59 + (($overlap_01 == null) ? 43 : $overlap_01.hashCode());
        final Object $overlap_2 = this.getOverlap_02();
        result = result * 59 + (($overlap_2 == null) ? 43 : $overlap_2.hashCode());
        final Object $slide_one_01 = this.getSlide_one_01();
        result = result * 59 + (($slide_one_01 == null) ? 43 : $slide_one_01.hashCode());
        final Object $slide_one_2 = this.getSlide_one_02();
        result = result * 59 + (($slide_one_2 == null) ? 43 : $slide_one_2.hashCode());
        final Object $slide_two_01 = this.getSlide_two_01();
        result = result * 59 + (($slide_two_01 == null) ? 43 : $slide_two_01.hashCode());
        final Object $slide_two_2 = this.getSlide_two_02();
        result = result * 59 + (($slide_two_2 == null) ? 43 : $slide_two_2.hashCode());
        final Object $man_day = this.getMan_day();
        result = result * 59 + (($man_day == null) ? 43 : $man_day.hashCode());
        return result;
    }
    
    @Override
    public String toString() {
        return "CalcPriceEntity(price_index=" + this.getPrice_index() + ", panel=" + this.getPanel() + ", overlap=" + this.getOverlap() + ", base=" + this.getBase() + ", sub=" + this.getSub() + ", copper_pipe=" + this.getCopper_pipe() + ", overlap_01=" + this.getOverlap_01() + ", overlap_02=" + this.getOverlap_02() + ", slide_one_01=" + this.getSlide_one_01() + ", slide_one_02=" + this.getSlide_one_02() + ", slide_two_01=" + this.getSlide_two_01() + ", slide_two_02=" + this.getSlide_two_02() + ", man_day=" + this.getMan_day() + ")";
    }
}