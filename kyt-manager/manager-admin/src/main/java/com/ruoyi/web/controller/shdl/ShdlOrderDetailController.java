package com.ruoyi.web.controller.shdl;

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
import com.ruoyi.shdl.domain.ShdlOrderDetail;
import com.ruoyi.shdl.service.IShdlOrderDetailService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 *  商户代理交易明细Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/shdl/detail")
public class ShdlOrderDetailController extends BaseController
{
    private String prefix = "shdl/detail";

    @Autowired
    private IShdlOrderDetailService shdlOrderDetailService;

    @RequiresPermissions("shdl:detail:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询 商户代理交易明细列表
     */
    @RequiresPermissions("shdl:detail:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShdlOrderDetail shdlOrderDetail)
    {
        startPage();
        List<ShdlOrderDetail> list = shdlOrderDetailService.selectShdlOrderDetailList(shdlOrderDetail);
        return getDataTable(list);
    }

    /**
     * 导出 商户代理交易明细列表
     */
    @RequiresPermissions("shdl:detail:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShdlOrderDetail shdlOrderDetail)
    {
        List<ShdlOrderDetail> list = shdlOrderDetailService.selectShdlOrderDetailList(shdlOrderDetail);
        ExcelUtil<ShdlOrderDetail> util = new ExcelUtil<ShdlOrderDetail>(ShdlOrderDetail.class);
        return util.exportExcel(list, "detail");
    }

    /**
     * 新增 商户代理交易明细
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存 商户代理交易明细
     */
    @RequiresPermissions("shdl:detail:add")
    @Log(title = " 商户代理交易明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShdlOrderDetail shdlOrderDetail)
    {
        return toAjax(shdlOrderDetailService.insertShdlOrderDetail(shdlOrderDetail));
    }

    /**
     * 修改 商户代理交易明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShdlOrderDetail shdlOrderDetail = shdlOrderDetailService.selectShdlOrderDetailById(id);
        mmap.put("shdlOrderDetail", shdlOrderDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存 商户代理交易明细
     */
    @RequiresPermissions("shdl:detail:edit")
    @Log(title = " 商户代理交易明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShdlOrderDetail shdlOrderDetail)
    {
        return toAjax(shdlOrderDetailService.updateShdlOrderDetail(shdlOrderDetail));
    }

    /**
     * 删除 商户代理交易明细
     */
    @RequiresPermissions("shdl:detail:remove")
    @Log(title = " 商户代理交易明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shdlOrderDetailService.deleteShdlOrderDetailByIds(ids));
    }
}
