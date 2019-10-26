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
import com.ruoyi.system.domain.MsOrder;
import com.ruoyi.system.service.IMsOrderService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商交易明细Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/msorder")
public class MsOrderController extends BaseController
{
    private String prefix = "system/msorder";

    @Autowired
    private IMsOrderService msOrderService;

    @RequiresPermissions("system:msorder:view")
    @GetMapping()
    public String order()
    {
        return prefix + "/order";
    }

    /**
     * 查询码商交易明细列表
     */
    @RequiresPermissions("system:msorder:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsOrder msOrder)
    {
        startPage();
        List<MsOrder> list = msOrderService.selectMsOrderList(msOrder);
        return getDataTable(list);
    }

    /**
     * 导出码商交易明细列表
     */
    @RequiresPermissions("system:msorder:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsOrder msOrder)
    {
        List<MsOrder> list = msOrderService.selectMsOrderList(msOrder);
        ExcelUtil<MsOrder> util = new ExcelUtil<MsOrder>(MsOrder.class);
        return util.exportExcel(list, "order");
    }

    /**
     * 新增码商交易明细
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商交易明细
     */
    @RequiresPermissions("system:msorder:add")
    @Log(title = "码商交易明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsOrder msOrder)
    {
        return toAjax(msOrderService.insertMsOrder(msOrder));
    }

    /**
     * 修改码商交易明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        MsOrder msOrder = msOrderService.selectMsOrderById(id);
        mmap.put("msOrder", msOrder);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商交易明细
     */
    @RequiresPermissions("system:msorder:edit")
    @Log(title = "码商交易明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsOrder msOrder)
    {
        return toAjax(msOrderService.updateMsOrder(msOrder));
    }

    /**
     * 删除码商交易明细
     */
    @RequiresPermissions("system:msorder:remove")
    @Log(title = "码商交易明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msOrderService.deleteMsOrderByIds(ids));
    }
}
