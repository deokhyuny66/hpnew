package com.freeze.mybatis.services;

import com.freeze.mybatis.vo.CalcBaseEntity;
import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
import com.freeze.mybatis.vo.CalcViewEntity;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import com.freeze.mybatis.dao.CalcDAO;
import org.springframework.stereotype.Service;

@Service
public class CalcService
{
    @Autowired
    private CalcDAO mapper;
    
    public List<CalcSettingEntity> getCalcSetting(@Param("returns_py") final String returns_py, @Param("temper_type") final String temper_type) throws Exception {
        return this.mapper.getCalcSetting(returns_py, temper_type);
    }
    
    public List<CalcPriceEntity> getCalcPrice() throws Exception {
        return this.mapper.getCalcPrice();
    }
    
    public List<CalcCDUEntity> getCalcCDU() throws Exception {
        return this.mapper.getCalcCDU();
    }
    public List<CalcCDUEntity> getOneCalcCDU(String pid) throws Exception {
        return this.mapper.getOneCalcCDU(pid);
    }
    
    public List<CalcBaseEntity> getBaseCDU() throws Exception {
        return this.mapper.getCalcBase();
    }
    
    public void updateProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateProductsAll(view);
    }
    
    public void updateCalcCDU(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcCDU(pid,purchase_price,unit_price);
    }
}
