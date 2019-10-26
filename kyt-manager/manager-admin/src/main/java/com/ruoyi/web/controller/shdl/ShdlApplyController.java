package com.ruoyi.web.controller.shdl;

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
import com.ruoyi.shdl.domain.ShdlApply;
import com.ruoyi.shdl.service.IShdlApplyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户代理申请Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/shdl/apply")
public class ShdlApplyController extends BaseController
{
    private String prefix = "shdl/apply";

    @Autowired
    private IShdlApplyService shdlApplyService;

    @RequiresPermissions("shdl:apply:view")
    @GetMapping()
    public String apply()
    {
        return prefix + "/apply";
    }

    /**
     * 查询商户代理申请列表
     */
    @RequiresPermissions("shdl:apply:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShdlApply shdlApply)
    {
        startPage();
        List<ShdlApply> list = shdlApplyService.selectShdlApplyList(shdlApply);
        return getDataTable(list);
    }

    /**
     * 导出商户代理申请列表
     */
    @RequiresPermissions("shdl:apply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShdlApply shdlApply)
    {
        List<ShdlApply> list = shdlApplyService.selectShdlApplyList(shdlApply);
        ExcelUtil<ShdlApply> util = new ExcelUtil<ShdlApply>(ShdlApply.class);
        return util.exportExcel(list, "apply");
    }

    /**
     * 新增商户代理申请
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户代理申请
     */
    @RequiresPermissions("shdl:apply:add")
    @Log(title = "商户代理申请", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShdlApply shdlApply)
    {
        return toAjax(shdlApplyService.insertShdlApply(shdlApply));
    }

    /**
     * 修改商户代理申请
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShdlApply shdlApply = shdlApplyService.selectShdlApplyById(id);
        mmap.put("shdlApply", shdlApply);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户代理申请
     */
    @RequiresPermissions("shdl:apply:edit")
    @Log(title = "商户代理申请", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShdlApply shdlApply)
    {
        return toAjax(shdlApplyService.updateShdlApply(shdlApply));
    }

    /**
     * 删除商户代理申请
     */
    @RequiresPermissions("shdl:apply:remove")
    @Log(title = "商户代理申请", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shdlApplyService.deleteShdlApplyByIds(ids));
    }
}
