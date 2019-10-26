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
import com.ruoyi.system.domain.SysBank;
import com.ruoyi.system.service.ISysBankService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 银行Controller
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
@Controller
@RequestMapping("/system/bank")
public class SysBankController extends BaseController
{
    private String prefix = "system/bank";

    @Autowired
    private ISysBankService sysBankService;

    @RequiresPermissions("system:bank:view")
    @GetMapping()
    public String bank()
    {
        return prefix + "/bank";
    }

    /**
     * 查询银行列表
     */
    @RequiresPermissions("system:bank:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysBank sysBank)
    {
        startPage();
        List<SysBank> list = sysBankService.selectSysBankList(sysBank);
        return getDataTable(list);
    }

    /**
     * 导出银行列表
     */
    @RequiresPermissions("system:bank:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysBank sysBank)
    {
        List<SysBank> list = sysBankService.selectSysBankList(sysBank);
        ExcelUtil<SysBank> util = new ExcelUtil<SysBank>(SysBank.class);
        return util.exportExcel(list, "bank");
    }

    /**
     * 新增银行
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存银行
     */
    @RequiresPermissions("system:bank:add")
    @Log(title = "银行", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysBank sysBank)
    {
        return toAjax(sysBankService.insertSysBank(sysBank));
    }

    /**
     * 修改银行
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysBank sysBank = sysBankService.selectSysBankById(id);
        mmap.put("sysBank", sysBank);
        return prefix + "/edit";
    }

    /**
     * 修改保存银行
     */
    @RequiresPermissions("system:bank:edit")
    @Log(title = "银行", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysBank sysBank)
    {
        return toAjax(sysBankService.updateSysBank(sysBank));
    }

    /**
     * 删除银行
     */
    @RequiresPermissions("system:bank:remove")
    @Log(title = "银行", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysBankService.deleteSysBankByIds(ids));
    }
}
