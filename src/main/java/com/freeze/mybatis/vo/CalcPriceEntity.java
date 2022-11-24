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
    public String toString() {
        return "CalcPriceEntity(price_index=" + this.getPrice_index() + ", panel=" + this.getPanel() + ", overlap=" + this.getOverlap() + ", base=" + this.getBase() + ", sub=" + this.getSub() + ", copper_pipe=" + this.getCopper_pipe() + ", overlap_01=" + this.getOverlap_01() + ", overlap_02=" + this.getOverlap_02() + ", slide_one_01=" + this.getSlide_one_01() + ", slide_one_02=" + this.getSlide_one_02() + ", slide_two_01=" + this.getSlide_two_01() + ", slide_two_02=" + this.getSlide_two_02() + ", man_day=" + this.getMan_day() + ")";
    }
}