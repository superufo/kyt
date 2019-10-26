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
import com.ruoyi.system.domain.MsApply;
import com.ruoyi.system.service.IMsApplyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/msapply")
public class MsApplyController extends BaseController
{
    private String prefix = "system/msapply";

    @Autowired
    private IMsApplyService msApplyService;

    @RequiresPermissions("system:msapply:view")
    @GetMapping()
    public String apply()
    {
        return prefix + "/apply";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:msapply:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsApply msApply)
    {
        startPage();
        List<MsApply> list = msApplyService.selectMsApplyList(msApply);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:msapply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsApply msApply)
    {
        List<MsApply> list = msApplyService.selectMsApplyList(msApply);
        ExcelUtil<MsApply> util = new ExcelUtil<MsApply>(MsApply.class);
        return util.exportExcel(list, "msapply");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("system:msapply:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsApply msApply)
    {
        return toAjax(msApplyService.insertMsApply(msApply));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsApply msApply = msApplyService.selectMsApplyById(id);
        mmap.put("msApply", msApply);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:msapply:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsApply msApply)
    {
        return toAjax(msApplyService.updateMsApply(msApply));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:msapply:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msApplyService.deleteMsApplyByIds(ids));
    }
}
