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
import com.ruoyi.sh.domain.ShAdjustAmount;
import com.ruoyi.sh.service.IShAdjustAmountService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户金额调整Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/sh/amount")
public class ShAdjustAmountController extends BaseController
{
    private String prefix = "sh/amount";

    @Autowired
    private IShAdjustAmountService shAdjustAmountService;

    @RequiresPermissions("sh:amount:view")
    @GetMapping()
    public String amount()
    {
        return prefix + "/amount";
    }

    /**
     * 查询商户金额调整列表
     */
    @RequiresPermissions("sh:amount:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShAdjustAmount shAdjustAmount)
    {
        startPage();
        List<ShAdjustAmount> list = shAdjustAmountService.selectShAdjustAmountList(shAdjustAmount);
        return getDataTable(list);
    }

    /**
     * 导出商户金额调整列表
     */
    @RequiresPermissions("sh:amount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShAdjustAmount shAdjustAmount)
    {
        List<ShAdjustAmount> list = shAdjustAmountService.selectShAdjustAmountList(shAdjustAmount);
        ExcelUtil<ShAdjustAmount> util = new ExcelUtil<ShAdjustAmount>(ShAdjustAmount.class);
        return util.exportExcel(list, "amount");
    }

    /**
     * 新增商户金额调整
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户金额调整
     */
    @RequiresPermissions("sh:amount:add")
    @Log(title = "商户金额调整", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShAdjustAmount shAdjustAmount)
    {
        return toAjax(shAdjustAmountService.insertShAdjustAmount(shAdjustAmount));
    }

    /**
     * 修改商户金额调整
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShAdjustAmount shAdjustAmount = shAdjustAmountService.selectShAdjustAmountById(id);
        mmap.put("shAdjustAmount", shAdjustAmount);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户金额调整
     */
    @RequiresPermissions("sh:amount:edit")
    @Log(title = "商户金额调整", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShAdjustAmount shAdjustAmount)
    {
        return toAjax(shAdjustAmountService.updateShAdjustAmount(shAdjustAmount));
    }

    /**
     * 删除商户金额调整
     */
    @RequiresPermissions("sh:amount:remove")
    @Log(title = "商户金额调整", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shAdjustAmountService.deleteShAdjustAmountByIds(ids));
    }
}
