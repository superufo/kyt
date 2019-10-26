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
import com.ruoyi.system.domain.MsStatistics;
import com.ruoyi.system.service.IMsStatisticsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import java.util.Date;

/**
 *   码商订单统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/statistics")
public class MsStatisticsController extends BaseController
{
    private String prefix = "system/statistics";

    @Autowired
    private IMsStatisticsService msStatisticsService;

    @RequiresPermissions("system:statistics:view")
    @GetMapping()
    public String statistics()
    {
        return prefix + "/statistics";
    }

    /**
     * 查询  码商订单统计列表
     */
    @RequiresPermissions("system:statistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsStatistics msStatistics)
    {
        startPage();
        List<MsStatistics> list = msStatisticsService.selectMsStatisticsList(msStatistics);
        return getDataTable(list);
    }

    /**
     * 导出  码商订单统计列表
     */
    @RequiresPermissions("system:statistics:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsStatistics msStatistics)
    {
        List<MsStatistics> list = msStatisticsService.selectMsStatisticsList(msStatistics);
        ExcelUtil<MsStatistics> util = new ExcelUtil<MsStatistics>(MsStatistics.class);
        return util.exportExcel(list, "statistics");
    }

    /**
     * 新增  码商订单统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存  码商订单统计
     */
    @RequiresPermissions("system:statistics:add")
    @Log(title = "  码商订单统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsStatistics msStatistics)
    {
        return toAjax(msStatisticsService.insertMsStatistics(msStatistics));
    }

    /**
     * 修改  码商订单统计
     */
    @GetMapping("/edit/{date}")
    public String edit(@PathVariable("date") Date date, ModelMap mmap)
    {
        MsStatistics msStatistics = msStatisticsService.selectMsStatisticsById(date);
        mmap.put("msStatistics", msStatistics);
        return prefix + "/edit";
    }

    /**
     * 修改保存  码商订单统计
     */
    @RequiresPermissions("system:statistics:edit")
    @Log(title = "  码商订单统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsStatistics msStatistics)
    {
        return toAjax(msStatisticsService.updateMsStatistics(msStatistics));
    }

    /**
     * 删除  码商订单统计
     */
    @RequiresPermissions("system:statistics:remove")
    @Log(title = "  码商订单统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msStatisticsService.deleteMsStatisticsByIds(ids));
    }
}
