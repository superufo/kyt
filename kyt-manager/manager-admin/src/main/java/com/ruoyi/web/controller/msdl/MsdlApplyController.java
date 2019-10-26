package com.ruoyi.web.controller.msdl;

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
import com.ruoyi.msdl.domain.MsdlApply;
import com.ruoyi.msdl.service.IMsdlApplyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商代理申请Controller
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Controller
@RequestMapping("/msdl/apply")
public class MsdlApplyController extends BaseController
{
    private String prefix = "msdl/apply";

    @Autowired
    private IMsdlApplyService msdlApplyService;

    @RequiresPermissions("msdl:apply:view")
    @GetMapping()
    public String apply()
    {
        return prefix + "/apply";
    }

    /**
     * 查询码商代理申请列表
     */
    @RequiresPermissions("msdl:apply:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsdlApply msdlApply)
    {
        startPage();
        List<MsdlApply> list = msdlApplyService.selectMsdlApplyList(msdlApply);
        return getDataTable(list);
    }

    /**
     * 导出码商代理申请列表
     */
    @RequiresPermissions("msdl:apply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsdlApply msdlApply)
    {
        List<MsdlApply> list = msdlApplyService.selectMsdlApplyList(msdlApply);
        ExcelUtil<MsdlApply> util = new ExcelUtil<MsdlApply>(MsdlApply.class);
        return util.exportExcel(list, "apply");
    }

    /**
     * 新增码商代理申请
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商代理申请
     */
    @RequiresPermissions("msdl:apply:add")
    @Log(title = "码商代理申请", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsdlApply msdlApply)
    {
        return toAjax(msdlApplyService.insertMsdlApply(msdlApply));
    }

    /**
     * 修改码商代理申请
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsdlApply msdlApply = msdlApplyService.selectMsdlApplyById(id);
        mmap.put("msdlApply", msdlApply);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商代理申请
     */
    @RequiresPermissions("msdl:apply:edit")
    @Log(title = "码商代理申请", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsdlApply msdlApply)
    {
        return toAjax(msdlApplyService.updateMsdlApply(msdlApply));
    }

    /**
     * 删除码商代理申请
     */
    @RequiresPermissions("msdl:apply:remove")
    @Log(title = "码商代理申请", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msdlApplyService.deleteMsdlApplyByIds(ids));
    }
}
