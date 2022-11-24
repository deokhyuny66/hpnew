package com.freeze.mybatis.services;

import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import com.freeze.mybatis.dao.CalcDAO;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
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
}
