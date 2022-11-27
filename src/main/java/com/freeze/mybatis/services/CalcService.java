package com.freeze.mybatis.services;

import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
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
    
    public void updateCalcCDU(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcCDU(pid,purchase_price,unit_price);
    }
}
