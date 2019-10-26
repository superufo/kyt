package com.ruoyi.web.controller.msdl;

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
import com.ruoyi.msdl.domain.MsdlCommision;
import com.ruoyi.msdl.service.IMsdlCommisionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商代理返佣统计Controller
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Controller
@RequestMapping("/msdl/commision")
public class MsdlCommisionController extends BaseController
{
    private String prefix = "msdl/commision";

    @Autowired
    private IMsdlCommisionService msdlCommisionService;

    @RequiresPermissions("msdl:commision:view")
    @GetMapping()
    public String commision()
    {
        return prefix + "/commision";
    }

    /**
     * 查询码商代理返佣统计列表
     */
    @RequiresPermissions("msdl:commision:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsdlCommision msdlCommision)
    {
        startPage();
        List<MsdlCommision> list = msdlCommisionService.selectMsdlCommisionList(msdlCommision);
        return getDataTable(list);
    }

    /**
     * 导出码商代理返佣统计列表
     */
    @RequiresPermissions("msdl:commision:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsdlCommision msdlCommision)
    {
        List<MsdlCommision> list = msdlCommisionService.selectMsdlCommisionList(msdlCommision);
        ExcelUtil<MsdlCommision> util = new ExcelUtil<MsdlCommision>(MsdlCommision.class);
        return util.exportExcel(list, "commision");
    }

    /**
     * 新增码商代理返佣统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商代理返佣统计
     */
    @RequiresPermissions("msdl:commision:add")
    @Log(title = "码商代理返佣统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsdlCommision msdlCommision)
    {
        return toAjax(msdlCommisionService.insertMsdlCommision(msdlCommision));
    }

    /**
     * 修改码商代理返佣统计
     */
    @GetMapping("/edit/{day}")
    public String edit(@PathVariable("day") Date day, ModelMap mmap)
    {
        MsdlCommision msdlCommision = msdlCommisionService.selectMsdlCommisionById(day);
        mmap.put("msdlCommision", msdlCommision);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商代理返佣统计
     */
    @RequiresPermissions("msdl:commision:edit")
    @Log(title = "码商代理返佣统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsdlCommision msdlCommision)
    {
        return toAjax(msdlCommisionService.updateMsdlCommision(msdlCommision));
    }

    /**
     * 删除码商代理返佣统计
     */
    @RequiresPermissions("msdl:commision:remove")
    @Log(title = "码商代理返佣统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msdlCommisionService.deleteMsdlCommisionByIds(ids));
    }
}
