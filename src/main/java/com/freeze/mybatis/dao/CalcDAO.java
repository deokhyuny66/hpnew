package com.freeze.mybatis.dao;

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
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CalcDAO
{
//	사용자 입력
    List<CalcSettingEntity> getCalcSetting(final String returns_py, final String temper_type);
    List<CalcPriceEntity> getCalcPrice();

//  VIEW_T에서 AJAX로 가격만 가져와서 구역별로 가격 변경 
    List<CalcCDUEntity> getOneCalcCDU(String pid);
    List<CalcCoolerEntity> getOneCalcCooler(String pid);
    List<CalcControllEntity> getOneCalcControll(String pid);
    List<CalcExvalveEntity> getOneCalcExvalve(String pid);
    List<CalcElecvalveEntity> getOneCalcElecvalve(String pid);
    List<CalcOpassisEntity> getOneCalcOpassis(String pid);
    List<CalcMandaysEntity> getOneCalcMandays(String pid);

//  DB 구역별 전체 조회    
    List<CalcSettingEntity> getCalcSettingAll();
    List<CalcBaseEntity> getCalcBase();    
    List<CalcCDUEntity> getCalcCDU();
    List<CalcCoolerEntity> getCalcCooler();
    List<CalcControllEntity> getCalcControll();
    List<CalcExvalveEntity> getCalcExvalve();
    List<CalcElecvalveEntity> getCalcElecvalve();
    List<CalcOpassisEntity> getCalcOpassis();
    List<CalcMandaysEntity> getCalcMandays();
    
//  DB 구역별 업데이트
    void updateCalcCDU(String pid, String purchase_price, String unit_price);
    void updateCalcCooler(String pid, String purchase_price, String unit_price);
    void updateCalcControll(String pid, String purchase_price, String unit_price);
    void updateCalcExvalve(String pid, String purchase_price, String unit_price);
    void updateCalcElecvalve(String pid, String purchase_price, String unit_price);
    void updateCalcOpassis(String pid, String purchase_price, String unit_price);
    void updateCalcMandays(String pid, String purchase_price, String unit_price);
    
//  데이터 세팅 VIEW T에 업데이트  
    void updateCduProductsAll(CalcViewEntity view);
    void updateCoolerProductsAll(CalcViewEntity view);
    void updateControllProductsAll(CalcViewEntity view);
	void updateExvalveProductsAll(CalcViewEntity view);
	void updateElecvalveProductsAll(CalcViewEntity view);
	void updateOpassis1ProductsAll(CalcViewEntity view);
	void updateOpassis2ProductsAll(CalcViewEntity view);
	void updateOpassis3ProductsAll(CalcViewEntity view);
	void updateOpassis4ProductsAll(CalcViewEntity view);
	void updateOpassis5ProductsAll(CalcViewEntity view);
	void updateOpassis6ProductsAll(CalcViewEntity view);
	void updateOpassis7ProductsAll(CalcViewEntity view);
	void updateOpassis8ProductsAll(CalcViewEntity view);
	void updateOpassis9ProductsAll(CalcViewEntity view);
	void updateOpassis10ProductsAll(CalcViewEntity view);
	void updateMandays1ProductsAll(CalcViewEntity view);
	void updateMandays2ProductsAll(CalcViewEntity view);
	void updateMandays3ProductsAll(CalcViewEntity view);
	void updateMandays4ProductsAll(CalcViewEntity view);
}