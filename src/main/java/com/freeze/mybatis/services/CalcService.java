package com.freeze.mybatis.services;

import com.freeze.mybatis.vo.CalcBaseEntity;
import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcControllEntity;
import com.freeze.mybatis.vo.CalcCoolerEntity;
import com.freeze.mybatis.vo.CalcElecvalveEntity;
import com.freeze.mybatis.vo.CalcExvalveEntity;
import com.freeze.mybatis.vo.CalcMandaysEntity;
import com.freeze.mybatis.vo.CalcOpassisEntity;
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
    
//  사용자 입력
    public List<CalcSettingEntity> getCalcSetting(@Param("returns_py") final String returns_py, @Param("temper_type") final String temper_type) throws Exception {
        return this.mapper.getCalcSetting(returns_py, temper_type);
    }
    public List<CalcPriceEntity> getCalcPrice() throws Exception {
        return this.mapper.getCalcPrice();
    }
    
//  데이터 세팅 - 제품, 가격 변경 된거 구역별로 VIEW_T에 업데이트  
    public void updateCduProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateCduProductsAll(view);
    }
    public void updateCoolerProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateCoolerProductsAll(view);
    }
    public void updateControllProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateControllProductsAll(view);
    }
    
//  데이터 세팅 - View 가격 하나씩 가져오기
    public List<CalcCDUEntity> getOneCalcCDU(String pid) throws Exception {
        return this.mapper.getOneCalcCDU(pid);
    }
    public List<CalcCoolerEntity> getOneCalcCooler(String pid) throws Exception {
        return this.mapper.getOneCalcCooler(pid);
    }
    public List<CalcControllEntity> getOneCalcControll(String pid) throws Exception {
        return this.mapper.getOneCalcControll(pid);
    }
    
    
//  DB구역별 - 데이터 전체 조회
    public List<CalcBaseEntity> getBaseCDU() throws Exception { 
        return this.mapper.getCalcBase();
    }
    public List<CalcCDUEntity> getCalcCDU() throws Exception {
        return this.mapper.getCalcCDU();
    }
    public List<CalcCoolerEntity> getCalcCooler() throws Exception {
        return this.mapper.getCalcCooler();
    }
    public List<CalcControllEntity> getCalcControll() throws Exception {
        return this.mapper.getCalcControll();
    }
    public List<CalcExvalveEntity> getCalcExvalve() throws Exception {
        return this.mapper.getCalcExvalve();
    }
    public List<CalcElecvalveEntity> getCalcElecvalve() throws Exception {
        return this.mapper.getCalcElecvalve();
    }
    public List<CalcOpassisEntity> getCalcOpassis() throws Exception {
        return this.mapper.getCalcOpassis();
    }
    public List<CalcMandaysEntity> getCalcMandays() throws Exception {
        return this.mapper.getCalcMandays();
    }

    
//  DB 세팅 구역별 가격 업데이트  
    public void updateCalcCDU(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcCDU(pid,purchase_price,unit_price);
    }
    public void updateCalcCooler(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcCooler(pid,purchase_price,unit_price);
    }
    public void updateCalcControll(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcControll(pid,purchase_price,unit_price);
    }
    public void updateCalcExvalve(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcExvalve(pid,purchase_price,unit_price);
    }
    public void updateCalcElecvalve(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcElecvalve(pid,purchase_price,unit_price);
    }
    public void updateCalcOpassis(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcOpassis(pid,purchase_price,unit_price);
    }
    public void updateCalcMandays(String pid, String purchase_price, String unit_price) throws Exception {
    	this.mapper.updateCalcMandays(pid,purchase_price,unit_price);
    }
}
