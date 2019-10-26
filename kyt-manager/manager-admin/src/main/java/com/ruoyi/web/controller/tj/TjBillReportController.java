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
import com.ruoyi.tj.domain.TjBillReport;
import com.ruoyi.tj.service.ITjBillReportService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 *  对账统计报Controller
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
@Controller
@RequestMapping("/tj/report")
public class TjBillReportController extends BaseController
{
    private String prefix = "tj/report";

    @Autowired
    private ITjBillReportService tjBillReportService;

    @RequiresPermissions("tj:report:view")
    @GetMapping()
    public String report()
    {
        return prefix + "/report";
    }

    /**
     * 查询 对账统计报列表
     */
    @RequiresPermissions("tj:report:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TjBillReport tjBillReport)
    {
        startPage();
        List<TjBillReport> list = tjBillReportService.selectTjBillReportList(tjBillReport);
        return getDataTable(list);
    }

    /**
     * 导出 对账统计报列表
     */
    @RequiresPermissions("tj:report:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TjBillReport tjBillReport)
    {
        List<TjBillReport> list = tjBillReportService.selectTjBillReportList(tjBillReport);
        ExcelUtil<TjBillReport> util = new ExcelUtil<TjBillReport>(TjBillReport.class);
        return util.exportExcel(list, "report");
    }

    /**
     * 新增 对账统计报
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存 对账统计报
     */
    @RequiresPermissions("tj:report:add")
    @Log(title = " 对账统计报", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TjBillReport tjBillReport)
    {
        return toAjax(tjBillReportService.insertTjBillReport(tjBillReport));
    }

    /**
     * 修改 对账统计报
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TjBillReport tjBillReport = tjBillReportService.selectTjBillReportById(id);
        mmap.put("tjBillReport", tjBillReport);
        return prefix + "/edit";
    }

    /**
     * 修改保存 对账统计报
     */
    @RequiresPermissions("tj:report:edit")
    @Log(title = " 对账统计报", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TjBillReport tjBillReport)
    {
        return toAjax(tjBillReportService.updateTjBillReport(tjBillReport));
    }

    /**
     * 删除 对账统计报
     */
    @RequiresPermissions("tj:report:remove")
    @Log(title = " 对账统计报", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tjBillReportService.deleteTjBillReportByIds(ids));
    }
}
