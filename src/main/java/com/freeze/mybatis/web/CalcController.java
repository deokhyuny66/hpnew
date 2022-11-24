
// 
// Decompiled by Procyon v0.5.36
// 

package com.freeze.mybatis.web;

import java.util.List;
import com.freeze.mybatis.vo.CalcSettingEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import java.text.DecimalFormat;
import com.freeze.mybatis.vo.CalcInputEntity;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.freeze.mybatis.services.CalcService;
import org.springframework.stereotype.Controller;

@Controller
public class CalcController
{
    @Autowired
    private CalcService service;
    
    @RequestMapping({ "/" })
    public String home() throws Exception {
        return "nav-eight-item-four-column";
    }
    
    @RequestMapping({ "/privacy-consent" })
    public String privacy() throws Exception {
        return "privacy-consent";
    }
    
    @RequestMapping({ "/terms-service" })
    public String terms() throws Exception {
        return "terms-service";
    }
    
    @RequestMapping({ "/contactProc" })
    public String contactProc(final HttpServletRequest request, final Model model) throws Exception {
        final String companyNM = request.getParameter("companyNM");
        final String nameNM = request.getParameter("nameNM");
        final String callNumber = request.getParameter("callNumber");
        final String emailNM = request.getParameter("emailNM");
        final String typeNM = request.getParameter("typeNM");
        final String contactType = request.getParameter("contactType");
        final String contents = request.getParameter("contents");
        model.addAttribute("companyNM", (Object)companyNM);
        model.addAttribute("nameNM", (Object)nameNM);
        model.addAttribute("callNumber", (Object)callNumber);
        model.addAttribute("emailNM", (Object)emailNM);
        model.addAttribute("typeNM", (Object)typeNM);
        model.addAttribute("contactType", (Object)contactType);
        model.addAttribute("contents", (Object)contents);
        return "contactProc";
    }
    
    @RequestMapping({ "/ai-calcProc" })
    public String calcProc(final HttpServletRequest request, final Model model) throws Exception {
        final String nameNM = request.getParameter("nameNM");
        final String companyNM = request.getParameter("companyNM");
        final String cellphone = request.getParameter("cellphone");
        final String hopeDate = request.getParameter("hopeDate");
        final String address = request.getParameter("address");
        final String reqContact = request.getParameter("reqContact");
        final String agree_all = request.getParameter("agree_all");
        final String widProc = request.getParameter("widProc");
        final String vertProc = request.getParameter("vertProc");
        final String hegProc = request.getParameter("hegProc");
        final String storeProc = request.getParameter("storeProc");
        final String temper_typeProc = request.getParameter("temper_typeProc");
        final String mtypeProc = request.getParameter("mtypeProc");
        final String msizeProc = request.getParameter("msizeProc");
        final String purcheseProc = request.getParameter("purcheseProc");
        final String floor_areaProc = request.getParameter("floor_areaProc");
        final String total_areaProc = request.getParameter("total_areaProc");
        final String pylsProc = request.getParameter("pylsProc");
        final String panel_priceProc = request.getParameter("panel_priceProc");
        final String door_priceProc = request.getParameter("door_priceProc");
        final String base_priceProc = request.getParameter("base_priceProc");
        final String sub_priceProc = request.getParameter("sub_priceProc");
        final String total_priceProc = request.getParameter("total_priceProc");
        model.addAttribute("nameNM", (Object)nameNM);
        model.addAttribute("companyNM", (Object)companyNM);
        model.addAttribute("cellphone", (Object)cellphone);
        model.addAttribute("hopeDate", (Object)hopeDate);
        model.addAttribute("address", (Object)address);
        model.addAttribute("reqContact", (Object)reqContact);
        model.addAttribute("agree_all", (Object)agree_all);
        model.addAttribute("widProc", (Object)widProc);
        model.addAttribute("vertProc", (Object)vertProc);
        model.addAttribute("hegProc", (Object)hegProc);
        model.addAttribute("storeProc", (Object)storeProc);
        model.addAttribute("temper_typeProc", (Object)temper_typeProc);
        model.addAttribute("mtypeProc", (Object)mtypeProc);
        model.addAttribute("msizeProc", (Object)msizeProc);
        model.addAttribute("purcheseProc", (Object)purcheseProc);
        model.addAttribute("floor_areaProc", (Object)floor_areaProc);
        model.addAttribute("total_areaProc", (Object)total_areaProc);
        model.addAttribute("pylsProc", (Object)pylsProc);
        model.addAttribute("panel_priceProc", (Object)panel_priceProc);
        model.addAttribute("door_priceProc", (Object)door_priceProc);
        model.addAttribute("base_priceProc", (Object)base_priceProc);
        model.addAttribute("sub_priceProc", (Object)sub_priceProc);
        model.addAttribute("total_priceProc", (Object)total_priceProc);
        return "ai-calcProc";
    }
    
    @RequestMapping({ "/ai-calc" })
    public String calc(final HttpServletRequest request, final Model model) throws Exception {
        final CalcInputEntity cmd = new CalcInputEntity();
        final List<CalcPriceEntity> calcPriceEntity = (List<CalcPriceEntity>)this.service.getCalcPrice();
        final DecimalFormat decFormat = new DecimalFormat("###,###");
        String temper_type = null;
        String msize = null;
        final String storeVal = null;
        final String tempVal = null;
        final String mtypeVal = null;
        final String msizeVal = null;
        final String purcheseVal = null;
        int msize_price = 0;
        int panel_price = 0;
        int door_price = 0;
        int base_price = 0;
        int sub_price = 0;
        cmd.setWidVal(request.getParameter("wid"));
        cmd.setVertVal(request.getParameter("vert"));
        cmd.setHegVal(request.getParameter("heg"));
        cmd.setStoreVal(request.getParameter("store"));
        cmd.setTempVal(request.getParameter("temperture"));
        cmd.setMtypeVal(request.getParameter("mtype"));
        cmd.setMsizeVal(request.getParameter("msize"));
        cmd.setPurcheseVal(request.getParameter("purchese"));
        final long floor_area = Math.round((float)(Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) / 1000000L));
        final double total_area = Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) * Long.parseLong(cmd.getHegVal()) / 1.0E9;
        final double py = floor_area / 3.3;
        final long pyl = Math.round(py);
        final String pyls = String.valueOf(pyl);
        if (cmd.getStoreVal().equals("storelist01")) {
            cmd.setStoreVal("\ufffd\ubf31\ufffd\ub663\u745c\ufffd");
        }
        else if (cmd.getStoreVal().equals("storelist02")) {
            cmd.setStoreVal("\ufffd\uc195\ufffd\uc395\u745c\ufffd");
        }
        else if (cmd.getStoreVal().equals("storelist03")) {
            cmd.setStoreVal("\ufffd\ub8c9\ufffd\uc441");
        }
        else if (cmd.getStoreVal().equals("storelist04")) {
            cmd.setStoreVal("\uf9e2\uafa9\ub0fc\u745c\ufffd");
        }
        else if (cmd.getStoreVal().equals("storelist05")) {
            cmd.setStoreVal("\u6028\uc1f1\ub58e\u745c\ufffd");
        }
        else if (cmd.getStoreVal().equals("storelist06")) {
            cmd.setStoreVal("\ufffd\uc0ce\ufffd\ube40\u745c\ufffd");
        }
        else if (cmd.getStoreVal().equals("storelist07")) {
            cmd.setStoreVal("\u6e72\uace0\ufffd");
        }
        if (cmd.getTempVal().equals("temp01")) {
            cmd.setTempVal("\ufffd\uae4b\ufffd\uc623(0 ~ 15\ufffd\uaf26)");
        }
        else if (cmd.getTempVal().equals("temp02")) {
            cmd.setTempVal("\ufffd\uae4b\ufffd\ub8de(0 ~ -20\ufffd\uaf26)");
        }
        else if (cmd.getTempVal().equals("temp03")) {
            cmd.setTempVal("\ufffd\ub8de\u5bc3\ufffd(-20 ~ -40\ufffd\uaf26)");
        }
        else if (cmd.getTempVal().equals("temp04")) {
            cmd.setTempVal("\u6e72\ub431\ub0fd\ufffd\ub8de\u5bc3\ufffd(-40 ~ -70\ufffd\uaf26)");
        }
        if (cmd.getMtypeVal().equals("mtype01")) {
            cmd.setMtypeVal("\ufffd\uc0a4\u8e30\uafa8\uc62a \ufffd\ub8c4\ufffd\ubf31(\ufffd\uc52a\u8adb\ufffd \ufffd\ub8c4\ufffd\ubf31 \ufffd\ufffd\ufffd\uc5ef)");
        }
        else if (cmd.getMtypeVal().equals("mtype02")) {
            cmd.setMtypeVal("\ufffd\ub2d4\ufffd\ub8de \ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 \ufffd\ub82a\u5a9b\ufffd(\ufffd\ube33\uf9df\ufffd \ufffd\ubff4\u7531\ufffd)");
        }
        else if (cmd.getMtypeVal().equals("mtype03")) {
            cmd.setMtypeVal("\ufffd\ub2d4\ufffd\ub8de \ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 \ufffd\ubf07\u5a9b\ufffd(\ufffd\ubf07\uf9df\ufffd \ufffd\ubff4\u7531\ufffd)");
        }
        else if (cmd.getMtypeVal().equals("mtype04")) {
            cmd.setMtypeVal("\ufffd\uc604\ufffd\ub8de \ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 \ufffd\ub82a\u5a9b\ufffd(\ufffd\ube33\uf9df\ufffd \ufffd\ubff4\u7531\ufffd)");
        }
        else if (cmd.getMtypeVal().equals("mtype05")) {
            cmd.setMtypeVal("\ufffd\uc604\ufffd\ub8de \ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 \ufffd\ubf07\u5a9b\ufffd(\ufffd\ubf07\uf9df\ufffd \ufffd\ubff4\u7531\ufffd)");
        }
        if (cmd.getMsizeVal().equals("msize01")) {
            cmd.setMsizeVal("\ufffd\ub8ca\ufffd\ub2d4\ufffd\ubfc9 \uf9cd\uc68a\ucfb6 \ufffd\ub4aa\ufffd\uae72\ufffd\ub58e\ufffd\ubc76 \ufffd\uc7fb\ufffd\uc29c");
        }
        else if (cmd.getMsizeVal().equals("msize02")) {
            cmd.setMsizeVal("900 X 2100 X 100 (\ufffd\uc0a4\u8e30\uafa8\uc62a)");
        }
        else if (cmd.getMsizeVal().equals("msize03")) {
            cmd.setMsizeVal("1000 X 2100 X 100 (\ufffd\uc0a4\u8e30\uafa8\uc62a)");
        }
        else if (cmd.getMsizeVal().equals("msize04")) {
            cmd.setMsizeVal("1200 X 2400 X 100 (\ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 / \ufffd\ub82a\u5a9b\ufffd)");
        }
        else if (cmd.getMsizeVal().equals("msize05")) {
            cmd.setMsizeVal("1400 X 2600 X 100 (\ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 / \ufffd\ub82a\u5a9b\ufffd)");
        }
        else if (cmd.getMsizeVal().equals("msize06")) {
            cmd.setMsizeVal("2400 X 2600 X 100 (\ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 / \ufffd\ubf07\u5a9b\ufffd)");
        }
        else if (cmd.getMsizeVal().equals("msize07")) {
            cmd.setMsizeVal("2600 X 2800 X 100 (\ufffd\ub4b3\ufffd\uc52a\ufffd\uc520\ufffd\ubc76 / \ufffd\ubf07\u5a9b\ufffd)");
        }
        if (cmd.getPurcheseVal().equals("purchese01")) {
            cmd.setPurcheseVal("\u63f4\u044a\uc5ef");
        }
        else if (cmd.getPurcheseVal().equals("purchese02")) {
            cmd.setPurcheseVal("\ufffd\uc80b\ufffd\uae49");
        }
        msize = cmd.getMsizeVal().substring(0, 2);
        if (msize.equals("90")) {
            msize_price = 550000;
        }
        else if (msize.equals("10")) {
            msize_price = 600000;
        }
        else if (msize.equals("12")) {
            msize_price = 1400000;
        }
        else if (msize.equals("14")) {
            msize_price = 2800000;
        }
        else if (msize.equals("24")) {
            msize_price = 2800000;
        }
        else if (msize.equals("32")) {
            msize_price = 3200000;
        }
        else {
            msize_price = 0;
        }
        panel_price = (int)(total_area * Integer.parseInt(calcPriceEntity.get(0).getPanel()));
        door_price = msize_price;
        base_price = (int)(floor_area * Integer.parseInt(calcPriceEntity.get(0).getBase()));
        sub_price = (int)(total_area * Integer.parseInt(calcPriceEntity.get(0).getSub()));
        final int total_price = panel_price + door_price + base_price + sub_price;
        temper_type = cmd.getTempVal().substring(0, 2);
        final List<CalcSettingEntity> calcSettingEntity = (List<CalcSettingEntity>)this.service.getCalcSetting(pyls, temper_type);
        model.addAttribute("panel_price", (Object)decFormat.format(panel_price));
        model.addAttribute("door_price", (Object)decFormat.format(door_price));
        model.addAttribute("base_price", (Object)decFormat.format(base_price));
        model.addAttribute("sub_price", (Object)decFormat.format(sub_price));
        model.addAttribute("total_price", (Object)decFormat.format(total_price));
        model.addAttribute("cdu", (Object)calcSettingEntity.get(0).getCdu());
        model.addAttribute("cooler", (Object)calcSettingEntity.get(0).getCooler());
        model.addAttribute("control", (Object)calcSettingEntity.get(0).getControl());
        model.addAttribute("ex_valve", (Object)calcSettingEntity.get(0).getEx_valve());
        model.addAttribute("elec_valve", (Object)calcSettingEntity.get(0).getElec_valve());
        model.addAttribute("high_piping", (Object)calcSettingEntity.get(0).getHigh_piping());
        model.addAttribute("row_piping", (Object)calcSettingEntity.get(0).getRow_piping());
        model.addAttribute("high_lagging", (Object)calcSettingEntity.get(0).getHigh_lagging());
        model.addAttribute("row_lagging", (Object)calcSettingEntity.get(0).getRow_lagging());
        model.addAttribute("power", (Object)calcSettingEntity.get(0).getPower());
        model.addAttribute("op_assis1", (Object)calcSettingEntity.get(0).getOp_assis1());
        model.addAttribute("op_assis2", (Object)calcSettingEntity.get(0).getOp_assis2());
        model.addAttribute("op_assis3", (Object)calcSettingEntity.get(0).getOp_assis3());
        model.addAttribute("engin_cnt", (Object)calcSettingEntity.get(0).getEngin_cnt());
        model.addAttribute("construc_period", (Object)calcSettingEntity.get(0).getConstruc_period());
        model.addAttribute("wid", (Object)cmd.getWidVal());
        model.addAttribute("vert", (Object)cmd.getVertVal());
        model.addAttribute("heg", (Object)cmd.getHegVal());
        model.addAttribute("floor_area", (Object)floor_area);
        model.addAttribute("total_area", (Object)String.format("%.1f", total_area));
        model.addAttribute("pyls", (Object)pyls);
        model.addAttribute("store", (Object)cmd.getStoreVal());
        model.addAttribute("temper_type", (Object)cmd.getTempVal());
        model.addAttribute("mtype", (Object)cmd.getMtypeVal());
        model.addAttribute("msize", (Object)cmd.getMsizeVal());
        model.addAttribute("purchese", (Object)cmd.getPurcheseVal());
        return "ai-calc";
    }
}
