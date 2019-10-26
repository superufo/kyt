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
import com.ruoyi.system.domain.MsAdjustAmount;
import com.ruoyi.system.service.IMsAdjustAmountService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商账户微调审核Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/amount")
public class MsAdjustAmountController extends BaseController
{
    private String prefix = "system/amount";

    @Autowired
    private IMsAdjustAmountService msAdjustAmountService;

    @RequiresPermissions("system:amount:view")
    @GetMapping()
    public String amount()
    {
        return prefix + "/amount";
    }

    /**
     * 查询码商账户微调审核列表
     */
    @RequiresPermissions("system:amount:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsAdjustAmount msAdjustAmount)
    {
        startPage();
        List<MsAdjustAmount> list = msAdjustAmountService.selectMsAdjustAmountList(msAdjustAmount);
        return getDataTable(list);
    }

    /**
     * 导出码商账户微调审核列表
     */
    @RequiresPermissions("system:amount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsAdjustAmount msAdjustAmount)
    {
        List<MsAdjustAmount> list = msAdjustAmountService.selectMsAdjustAmountList(msAdjustAmount);
        ExcelUtil<MsAdjustAmount> util = new ExcelUtil<MsAdjustAmount>(MsAdjustAmount.class);
        return util.exportExcel(list, "amount");
    }

    /**
     * 新增码商账户微调审核
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商账户微调审核
     */
    @RequiresPermissions("system:amount:add")
    @Log(title = "码商账户微调审核", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsAdjustAmount msAdjustAmount)
    {
        return toAjax(msAdjustAmountService.insertMsAdjustAmount(msAdjustAmount));
    }

    /**
     * 修改码商账户微调审核
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsAdjustAmount msAdjustAmount = msAdjustAmountService.selectMsAdjustAmountById(id);
        mmap.put("msAdjustAmount", msAdjustAmount);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商账户微调审核
     */
    @RequiresPermissions("system:amount:edit")
    @Log(title = "码商账户微调审核", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsAdjustAmount msAdjustAmount)
    {
        return toAjax(msAdjustAmountService.updateMsAdjustAmount(msAdjustAmount));
    }

    /**
     * 删除码商账户微调审核
     */
    @RequiresPermissions("system:amount:remove")
    @Log(title = "码商账户微调审核", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msAdjustAmountService.deleteMsAdjustAmountByIds(ids));
    }
}
