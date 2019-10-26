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
import com.ruoyi.system.domain.MsMerchant;
import com.ruoyi.system.service.IMsMerchantService;
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
@RequestMapping("/system/merchant")
public class MsMerchantController extends BaseController
{
    private String prefix = "system/merchant";

    @Autowired
    private IMsMerchantService msMerchantService;

    @RequiresPermissions("system:merchant:view")
    @GetMapping()
    public String merchant()
    {
        return prefix + "/merchant";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:merchant:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsMerchant msMerchant)
    {
        startPage();
        List<MsMerchant> list = msMerchantService.selectMsMerchantList(msMerchant);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:merchant:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsMerchant msMerchant)
    {
        List<MsMerchant> list = msMerchantService.selectMsMerchantList(msMerchant);
        ExcelUtil<MsMerchant> util = new ExcelUtil<MsMerchant>(MsMerchant.class);
        return util.exportExcel(list, "merchant");
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
    @RequiresPermissions("system:merchant:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsMerchant msMerchant)
    {
        return toAjax(msMerchantService.insertMsMerchant(msMerchant));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsMerchant msMerchant = msMerchantService.selectMsMerchantById(id);
        mmap.put("msMerchant", msMerchant);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:merchant:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsMerchant msMerchant)
    {
        return toAjax(msMerchantService.updateMsMerchant(msMerchant));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:merchant:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msMerchantService.deleteMsMerchantByIds(ids));
    }
}
