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
import com.ruoyi.system.domain.MsMerchantStatistics;
import com.ruoyi.system.service.IMsMerchantStatisticsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 *  在线码商时时统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/merchantstatistics")
public class MsMerchantStatisticsController extends BaseController
{
    private String prefix = "system/merchantstatistics";

    @Autowired
    private IMsMerchantStatisticsService msMerchantStatisticsService;

    @RequiresPermissions("system:merchantstatistics:view")
    @GetMapping()
    public String statistics()
    {
        return prefix + "/statistics";
    }

    /**
     * 查询 在线码商时时统计列表
     */
    @RequiresPermissions("system:merchantstatistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsMerchantStatistics msMerchantStatistics)
    {
        startPage();
        List<MsMerchantStatistics> list = msMerchantStatisticsService.selectMsMerchantStatisticsList(msMerchantStatistics);
        return getDataTable(list);
    }

    /**
     * 导出 在线码商时时统计列表
     */
    @RequiresPermissions("system:merchantstatistics:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsMerchantStatistics msMerchantStatistics)
    {
        List<MsMerchantStatistics> list = msMerchantStatisticsService.selectMsMerchantStatisticsList(msMerchantStatistics);
        ExcelUtil<MsMerchantStatistics> util = new ExcelUtil<MsMerchantStatistics>(MsMerchantStatistics.class);
        return util.exportExcel(list, "statistics");
    }

    /**
     * 新增 在线码商时时统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存 在线码商时时统计
     */
    @RequiresPermissions("system:merchantstatistics:add")
    @Log(title = " 在线码商时时统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsMerchantStatistics msMerchantStatistics)
    {
        return toAjax(msMerchantStatisticsService.insertMsMerchantStatistics(msMerchantStatistics));
    }

    /**
     * 修改 在线码商时时统计
     */
    @GetMapping("/edit/{merchantId}")
    public String edit(@PathVariable("merchantId") Long merchantId, ModelMap mmap)
    {
        MsMerchantStatistics msMerchantStatistics = msMerchantStatisticsService.selectMsMerchantStatisticsById(merchantId);
        mmap.put("msMerchantStatistics", msMerchantStatistics);
        return prefix + "/edit";
    }

    /**
     * 修改保存 在线码商时时统计
     */
    @RequiresPermissions("system:merchantstatistics:edit")
    @Log(title = " 在线码商时时统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsMerchantStatistics msMerchantStatistics)
    {
        return toAjax(msMerchantStatisticsService.updateMsMerchantStatistics(msMerchantStatistics));
    }

    /**
     * 删除 在线码商时时统计
     */
    @RequiresPermissions("system:merchantstatistics:remove")
    @Log(title = " 在线码商时时统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msMerchantStatisticsService.deleteMsMerchantStatisticsByIds(ids));
    }
}
