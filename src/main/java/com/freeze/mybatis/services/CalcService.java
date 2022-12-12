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
    public void updateExvalveProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateExvalveProductsAll(view);
    }
    public void updateElecvalveProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateElecvalveProductsAll(view);
    }
    public void updateOpassis1ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis1ProductsAll(view);
    }
    public void updateOpassis2ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis2ProductsAll(view);
    }
    public void updateOpassis3ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis3ProductsAll(view);
    }
    public void updateOpassis4ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis4ProductsAll(view);
    }
    public void updateOpassis5ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis5ProductsAll(view);
    }
    public void updateOpassis6ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis6ProductsAll(view);
    }
    public void updateOpassis7ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis7ProductsAll(view);
    }
    public void updateOpassis8ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis8ProductsAll(view);
    }
    public void updateOpassis9ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis9ProductsAll(view);
    }
    public void updateOpassis10ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateOpassis10ProductsAll(view);
    }
    public void updateMandays1ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateMandays1ProductsAll(view);
    }
    public void updateMandays2ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateMandays2ProductsAll(view);
    }
    public void updateMandays3ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateMandays3ProductsAll(view);
    }
    public void updateMandays4ProductsAll(CalcViewEntity view) throws Exception {
    	this.mapper.updateMandays4ProductsAll(view);
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
    public List<CalcExvalveEntity> getOneCalcExvalve(String pid) throws Exception {
        return this.mapper.getOneCalcExvalve(pid);
    }
    public List<CalcElecvalveEntity> getOneCalcElecvalve(String pid) throws Exception {
        return this.mapper.getOneCalcElecvalve(pid);
    }
    public List<CalcOpassisEntity> getOneCalcOpassis(String pid) throws Exception {
        return this.mapper.getOneCalcOpassis(pid);
    }
    public List<CalcMandaysEntity> getOneCalcMandays(String pid) throws Exception {
        return this.mapper.getOneCalcMandays(pid);
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
