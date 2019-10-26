package com.ruoyi.web.controller.msdl;

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
import com.ruoyi.msdl.domain.MsdlOrderDetail;
import com.ruoyi.msdl.service.IMsdlOrderDetailService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 *  码商代理交易明细Controller
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Controller
@RequestMapping("/msdl/detail")
public class MsdlOrderDetailController extends BaseController
{
    private String prefix = "msdl/detail";

    @Autowired
    private IMsdlOrderDetailService msdlOrderDetailService;

    @RequiresPermissions("msdl:detail:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询 码商代理交易明细列表
     */
    @RequiresPermissions("msdl:detail:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsdlOrderDetail msdlOrderDetail)
    {
        startPage();
        List<MsdlOrderDetail> list = msdlOrderDetailService.selectMsdlOrderDetailList(msdlOrderDetail);
        return getDataTable(list);
    }

    /**
     * 导出 码商代理交易明细列表
     */
    @RequiresPermissions("msdl:detail:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsdlOrderDetail msdlOrderDetail)
    {
        List<MsdlOrderDetail> list = msdlOrderDetailService.selectMsdlOrderDetailList(msdlOrderDetail);
        ExcelUtil<MsdlOrderDetail> util = new ExcelUtil<MsdlOrderDetail>(MsdlOrderDetail.class);
        return util.exportExcel(list, "detail");
    }

    /**
     * 新增 码商代理交易明细
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存 码商代理交易明细
     */
    @RequiresPermissions("msdl:detail:add")
    @Log(title = " 码商代理交易明细", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsdlOrderDetail msdlOrderDetail)
    {
        return toAjax(msdlOrderDetailService.insertMsdlOrderDetail(msdlOrderDetail));
    }

    /**
     * 修改 码商代理交易明细
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsdlOrderDetail msdlOrderDetail = msdlOrderDetailService.selectMsdlOrderDetailById(id);
        mmap.put("msdlOrderDetail", msdlOrderDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存 码商代理交易明细
     */
    @RequiresPermissions("msdl:detail:edit")
    @Log(title = " 码商代理交易明细", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsdlOrderDetail msdlOrderDetail)
    {
        return toAjax(msdlOrderDetailService.updateMsdlOrderDetail(msdlOrderDetail));
    }

    /**
     * 删除 码商代理交易明细
     */
    @RequiresPermissions("msdl:detail:remove")
    @Log(title = " 码商代理交易明细", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msdlOrderDetailService.deleteMsdlOrderDetailByIds(ids));
    }
}
