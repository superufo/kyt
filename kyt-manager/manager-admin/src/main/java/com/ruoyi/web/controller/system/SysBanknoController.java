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
import com.ruoyi.system.domain.SysBankno;
import com.ruoyi.system.service.ISysBanknoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 银行卡Controller
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
@Controller
@RequestMapping("/system/bankno")
public class SysBanknoController extends BaseController
{
    private String prefix = "system/bankno";

    @Autowired
    private ISysBanknoService sysBanknoService;

    @RequiresPermissions("system:bankno:view")
    @GetMapping()
    public String bankno()
    {
        return prefix + "/bankno";
    }

    /**
     * 查询银行卡列表
     */
    @RequiresPermissions("system:bankno:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysBankno sysBankno)
    {
        startPage();
        List<SysBankno> list = sysBanknoService.selectSysBanknoList(sysBankno);
        return getDataTable(list);
    }

    /**
     * 导出银行卡列表
     */
    @RequiresPermissions("system:bankno:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysBankno sysBankno)
    {
        List<SysBankno> list = sysBanknoService.selectSysBanknoList(sysBankno);
        ExcelUtil<SysBankno> util = new ExcelUtil<SysBankno>(SysBankno.class);
        return util.exportExcel(list, "bankno");
    }

    /**
     * 新增银行卡
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存银行卡
     */
    @RequiresPermissions("system:bankno:add")
    @Log(title = "银行卡", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysBankno sysBankno)
    {
        return toAjax(sysBanknoService.insertSysBankno(sysBankno));
    }

    /**
     * 修改银行卡
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysBankno sysBankno = sysBanknoService.selectSysBanknoById(id);
        mmap.put("sysBankno", sysBankno);
        return prefix + "/edit";
    }

    /**
     * 修改保存银行卡
     */
    @RequiresPermissions("system:bankno:edit")
    @Log(title = "银行卡", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysBankno sysBankno)
    {
        return toAjax(sysBanknoService.updateSysBankno(sysBankno));
    }

    /**
     * 删除银行卡
     */
    @RequiresPermissions("system:bankno:remove")
    @Log(title = "银行卡", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysBanknoService.deleteSysBanknoByIds(ids));
    }
}
