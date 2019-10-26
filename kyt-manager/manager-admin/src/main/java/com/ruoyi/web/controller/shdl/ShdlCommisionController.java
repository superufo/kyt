package com.ruoyi.web.controller.shdl;

import java.util.List;
import java.util.Date;
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
import com.ruoyi.shdl.domain.ShdlCommision;
import com.ruoyi.shdl.service.IShdlCommisionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户代理返佣统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/shdl/commision")
public class ShdlCommisionController extends BaseController
{
    private String prefix = "shdl/commision";

    @Autowired
    private IShdlCommisionService shdlCommisionService;

    @RequiresPermissions("shdl:commision:view")
    @GetMapping()
    public String commision()
    {
        return prefix + "/commision";
    }

    /**
     * 查询商户代理返佣统计列表
     */
    @RequiresPermissions("shdl:commision:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShdlCommision shdlCommision)
    {
        startPage();
        List<ShdlCommision> list = shdlCommisionService.selectShdlCommisionList(shdlCommision);
        return getDataTable(list);
    }

    /**
     * 导出商户代理返佣统计列表
     */
    @RequiresPermissions("shdl:commision:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShdlCommision shdlCommision)
    {
        List<ShdlCommision> list = shdlCommisionService.selectShdlCommisionList(shdlCommision);
        ExcelUtil<ShdlCommision> util = new ExcelUtil<ShdlCommision>(ShdlCommision.class);
        return util.exportExcel(list, "commision");
    }

    /**
     * 新增商户代理返佣统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户代理返佣统计
     */
    @RequiresPermissions("shdl:commision:add")
    @Log(title = "商户代理返佣统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShdlCommision shdlCommision)
    {
        return toAjax(shdlCommisionService.insertShdlCommision(shdlCommision));
    }

    /**
     * 修改商户代理返佣统计
     */
    @GetMapping("/edit/{day}")
    public String edit(@PathVariable("day") Date day, ModelMap mmap)
    {
        ShdlCommision shdlCommision = shdlCommisionService.selectShdlCommisionById(day);
        mmap.put("shdlCommision", shdlCommision);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户代理返佣统计
     */
    @RequiresPermissions("shdl:commision:edit")
    @Log(title = "商户代理返佣统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShdlCommision shdlCommision)
    {
        return toAjax(shdlCommisionService.updateShdlCommision(shdlCommision));
    }

    /**
     * 删除商户代理返佣统计
     */
    @RequiresPermissions("shdl:commision:remove")
    @Log(title = "商户代理返佣统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shdlCommisionService.deleteShdlCommisionByIds(ids));
    }
}
