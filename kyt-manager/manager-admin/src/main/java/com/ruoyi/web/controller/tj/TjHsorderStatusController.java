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
import com.ruoyi.tj.domain.TjHsorderStatus;
import com.ruoyi.tj.service.ITjHsorderStatusService;
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
@RequestMapping("/tj/status")
public class TjHsorderStatusController extends BaseController
{
    private String prefix = "tj/status";

    @Autowired
    private ITjHsorderStatusService tjHsorderStatusService;

    @RequiresPermissions("tj:status:view")
    @GetMapping()
    public String status()
    {
        return prefix + "/status";
    }

    /**
     * 查询商户订单状态统计列表
     */
    @RequiresPermissions("tj:status:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TjHsorderStatus tjHsorderStatus)
    {
        startPage();
        List<TjHsorderStatus> list = tjHsorderStatusService.selectTjHsorderStatusList(tjHsorderStatus);
        return getDataTable(list);
    }

    /**
     * 导出商户订单状态统计列表
     */
    @RequiresPermissions("tj:status:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TjHsorderStatus tjHsorderStatus)
    {
        List<TjHsorderStatus> list = tjHsorderStatusService.selectTjHsorderStatusList(tjHsorderStatus);
        ExcelUtil<TjHsorderStatus> util = new ExcelUtil<TjHsorderStatus>(TjHsorderStatus.class);
        return util.exportExcel(list, "status");
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
    @RequiresPermissions("tj:status:add")
    @Log(title = "商户订单状态统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TjHsorderStatus tjHsorderStatus)
    {
        return toAjax(tjHsorderStatusService.insertTjHsorderStatus(tjHsorderStatus));
    }

    /**
     * 修改商户订单状态统计
     */
    @GetMapping("/edit/{serverId}")
    public String edit(@PathVariable("serverId") Long serverId, ModelMap mmap)
    {
        TjHsorderStatus tjHsorderStatus = tjHsorderStatusService.selectTjHsorderStatusById(serverId);
        mmap.put("tjHsorderStatus", tjHsorderStatus);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户订单状态统计
     */
    @RequiresPermissions("tj:status:edit")
    @Log(title = "商户订单状态统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TjHsorderStatus tjHsorderStatus)
    {
        return toAjax(tjHsorderStatusService.updateTjHsorderStatus(tjHsorderStatus));
    }

    /**
     * 删除商户订单状态统计
     */
    @RequiresPermissions("tj:status:remove")
    @Log(title = "商户订单状态统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tjHsorderStatusService.deleteTjHsorderStatusByIds(ids));
    }
}
