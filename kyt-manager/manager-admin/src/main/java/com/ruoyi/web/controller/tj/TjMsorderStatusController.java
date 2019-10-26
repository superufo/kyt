package com.ruoyi.web.controller.tj;

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
import com.ruoyi.tj.domain.TjMsorderStatus;
import com.ruoyi.tj.service.ITjMsorderStatusService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户订单状态统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
@Controller
@RequestMapping("/tj/msstatus")
public class TjMsorderStatusController extends BaseController
{
    private String prefix = "tj/msstatus";

    @Autowired
    private ITjMsorderStatusService tjMsorderStatusService;

    @RequiresPermissions("tj:msstatus:view")
    @GetMapping()
    public String msstatus()
    {
        return prefix + "/msstatus";
    }

    /**
     * 查询商户订单状态统计列表
     */
    @RequiresPermissions("tj:msstatus:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TjMsorderStatus tjMsorderStatus)
    {
        startPage();
        List<TjMsorderStatus> list = tjMsorderStatusService.selectTjMsorderStatusList(tjMsorderStatus);
        return getDataTable(list);
    }

    /**
     * 导出商户订单状态统计列表
     */
    @RequiresPermissions("tj:msstatus:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TjMsorderStatus tjMsorderStatus)
    {
        List<TjMsorderStatus> list = tjMsorderStatusService.selectTjMsorderStatusList(tjMsorderStatus);
        ExcelUtil<TjMsorderStatus> util = new ExcelUtil<TjMsorderStatus>(TjMsorderStatus.class);
        return util.exportExcel(list, "msstatus");
    }

    /**
     * 新增商户订单状态统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户订单状态统计
     */
    @RequiresPermissions("tj:msstatus:add")
    @Log(title = "商户订单状态统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TjMsorderStatus tjMsorderStatus)
    {
        return toAjax(tjMsorderStatusService.insertTjMsorderStatus(tjMsorderStatus));
    }

    /**
     * 修改商户订单状态统计
     */
    @GetMapping("/edit/{msMerchant}")
    public String edit(@PathVariable("msMerchant") Long msMerchant, ModelMap mmap)
    {
        TjMsorderStatus tjMsorderStatus = tjMsorderStatusService.selectTjMsorderStatusById(msMerchant);
        mmap.put("tjMsorderStatus", tjMsorderStatus);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户订单状态统计
     */
    @RequiresPermissions("tj:msstatus:edit")
    @Log(title = "商户订单状态统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TjMsorderStatus tjMsorderStatus)
    {
        return toAjax(tjMsorderStatusService.updateTjMsorderStatus(tjMsorderStatus));
    }

    /**
     * 删除商户订单状态统计
     */
    @RequiresPermissions("tj:msstatus:remove")
    @Log(title = "商户订单状态统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tjMsorderStatusService.deleteTjMsorderStatusByIds(ids));
    }
}
