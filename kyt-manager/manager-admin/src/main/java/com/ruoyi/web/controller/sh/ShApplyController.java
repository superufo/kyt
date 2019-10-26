package com.ruoyi.web.controller.sh;

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
import com.ruoyi.sh.domain.ShApply;
import com.ruoyi.sh.service.IShApplyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户审核Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/sh/apply")
public class ShApplyController extends BaseController
{
    private String prefix = "sh/apply";

    @Autowired
    private IShApplyService shApplyService;

    @RequiresPermissions("sh:apply:view")
    @GetMapping()
    public String apply()
    {
        return prefix + "/apply";
    }

    /**
     * 查询商户审核列表
     */
    @RequiresPermissions("sh:apply:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShApply shApply)
    {
        startPage();
        List<ShApply> list = shApplyService.selectShApplyList(shApply);
        return getDataTable(list);
    }

    /**
     * 导出商户审核列表
     */
    @RequiresPermissions("sh:apply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShApply shApply)
    {
        List<ShApply> list = shApplyService.selectShApplyList(shApply);
        ExcelUtil<ShApply> util = new ExcelUtil<ShApply>(ShApply.class);
        return util.exportExcel(list, "apply");
    }

    /**
     * 新增商户审核
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户审核
     */
    @RequiresPermissions("sh:apply:add")
    @Log(title = "商户审核", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShApply shApply)
    {
        return toAjax(shApplyService.insertShApply(shApply));
    }

    /**
     * 修改商户审核
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShApply shApply = shApplyService.selectShApplyById(id);
        mmap.put("shApply", shApply);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户审核
     */
    @RequiresPermissions("sh:apply:edit")
    @Log(title = "商户审核", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShApply shApply)
    {
        return toAjax(shApplyService.updateShApply(shApply));
    }

    /**
     * 删除商户审核
     */
    @RequiresPermissions("sh:apply:remove")
    @Log(title = "商户审核", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shApplyService.deleteShApplyByIds(ids));
    }
}
