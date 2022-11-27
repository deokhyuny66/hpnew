package com.freeze.mybatis.dao;

import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CalcDAO
{
    List<CalcSettingEntity> getCalcSetting(final String returns_py, final String temper_type);
    List<CalcPriceEntity> getCalcPrice();
    List<CalcCDUEntity> getCalcCDU();
    void updateCalcCDU(String pid, String purchase_price, String unit_price);
}