package com.ruoyi.web.controller.system;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.MsAlipay;
import com.ruoyi.system.service.IMsAlipayService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 支付宝账号Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/alipay")
public class MsAlipayController extends BaseController
{
    private String prefix = "system/alipay";

    @Autowired
    private IMsAlipayService msAlipayService;

    @RequiresPermissions("system:alipay:view")
    @GetMapping()
    public String alipay()
    {
        return prefix + "/alipay";
    }

    /**
     * 查询支付宝账号列表
     */
    @RequiresPermissions("system:alipay:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsAlipay msAlipay)
    {
        startPage();
        List<MsAlipay> list = msAlipayService.selectMsAlipayList(msAlipay);
        return getDataTable(list);
    }

    /**
     * 导出支付宝账号列表
     */
    @RequiresPermissions("system:alipay:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsAlipay msAlipay)
    {
        List<MsAlipay> list = msAlipayService.selectMsAlipayList(msAlipay);
        ExcelUtil<MsAlipay> util = new ExcelUtil<MsAlipay>(MsAlipay.class);
        return util.exportExcel(list, "alipay");
    }

    /**
     * 新增支付宝账号
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存支付宝账号
     */
    @RequiresPermissions("system:alipay:add")
    @Log(title = "支付宝账号", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsAlipay msAlipay)
    {
        return toAjax(msAlipayService.insertMsAlipay(msAlipay));
    }

    /**
     * 修改支付宝账号
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsAlipay msAlipay = msAlipayService.selectMsAlipayById(id);
        mmap.put("msAlipay", msAlipay);
        return prefix + "/edit";
    }

    /**
     * 修改保存支付宝账号
     */
    @RequiresPermissions("system:alipay:edit")
    @Log(title = "支付宝账号", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsAlipay msAlipay)
    {
        return toAjax(msAlipayService.updateMsAlipay(msAlipay));
    }

    /**
     * 删除支付宝账号
     */
    @RequiresPermissions("system:alipay:remove")
    @Log(title = "支付宝账号", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msAlipayService.deleteMsAlipayByIds(ids));
    }
}
