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
import com.ruoyi.sh.domain.ShMerchantStatistics;
import com.ruoyi.sh.service.IShMerchantStatisticsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户返佣统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/sh/statistics")
public class ShMerchantStatisticsController extends BaseController
{
    private String prefix = "sh/statistics";

    @Autowired
    private IShMerchantStatisticsService shMerchantStatisticsService;

    @RequiresPermissions("sh:statistics:view")
    @GetMapping()
    public String statistics()
    {
        return prefix + "/statistics";
    }

    /**
     * 查询商户返佣统计列表
     */
    @RequiresPermissions("sh:statistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShMerchantStatistics shMerchantStatistics)
    {
        startPage();
        List<ShMerchantStatistics> list = shMerchantStatisticsService.selectShMerchantStatisticsList(shMerchantStatistics);
        return getDataTable(list);
    }

    /**
     * 导出商户返佣统计列表
     */
    @RequiresPermissions("sh:statistics:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShMerchantStatistics shMerchantStatistics)
    {
        List<ShMerchantStatistics> list = shMerchantStatisticsService.selectShMerchantStatisticsList(shMerchantStatistics);
        ExcelUtil<ShMerchantStatistics> util = new ExcelUtil<ShMerchantStatistics>(ShMerchantStatistics.class);
        return util.exportExcel(list, "statistics");
    }

    /**
     * 新增商户返佣统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户返佣统计
     */
    @RequiresPermissions("sh:statistics:add")
    @Log(title = "商户返佣统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShMerchantStatistics shMerchantStatistics)
    {
        return toAjax(shMerchantStatisticsService.insertShMerchantStatistics(shMerchantStatistics));
    }

    /**
     * 修改商户返佣统计
     */
    @GetMapping("/edit/{serverId}")
    public String edit(@PathVariable("serverId") Long serverId, ModelMap mmap)
    {
        ShMerchantStatistics shMerchantStatistics = shMerchantStatisticsService.selectShMerchantStatisticsById(serverId);
        mmap.put("shMerchantStatistics", shMerchantStatistics);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户返佣统计
     */
    @RequiresPermissions("sh:statistics:edit")
    @Log(title = "商户返佣统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShMerchantStatistics shMerchantStatistics)
    {
        return toAjax(shMerchantStatisticsService.updateShMerchantStatistics(shMerchantStatistics));
    }

    /**
     * 删除商户返佣统计
     */
    @RequiresPermissions("sh:statistics:remove")
    @Log(title = "商户返佣统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shMerchantStatisticsService.deleteShMerchantStatisticsByIds(ids));
    }
}
