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
import com.ruoyi.system.domain.MsAlipayCashcode;
import com.ruoyi.system.service.IMsAlipayCashcodeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 支付宝收款码Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/alipaycashcode")
public class MsAlipayCashcodeController extends BaseController
{
    private String prefix = "system/alipaycashcode";

    @Autowired
    private IMsAlipayCashcodeService msAlipayCashcodeService;

    @RequiresPermissions("system:alipaycashcode:view")
    @GetMapping()
    public String cashcode()
    {
        return prefix + "/cashcode";
    }

    /**
     * 查询支付宝收款码列表
     */
    @RequiresPermissions("system:alipaycashcode:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsAlipayCashcode msAlipayCashcode)
    {
        startPage();
        List<MsAlipayCashcode> list = msAlipayCashcodeService.selectMsAlipayCashcodeList(msAlipayCashcode);
        return getDataTable(list);
    }

    /**
     * 导出支付宝收款码列表
     */
    @RequiresPermissions("system:alipaycashcode:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsAlipayCashcode msAlipayCashcode)
    {
        List<MsAlipayCashcode> list = msAlipayCashcodeService.selectMsAlipayCashcodeList(msAlipayCashcode);
        ExcelUtil<MsAlipayCashcode> util = new ExcelUtil<MsAlipayCashcode>(MsAlipayCashcode.class);
        return util.exportExcel(list, "cashcode");
    }

    /**
     * 新增支付宝收款码
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存支付宝收款码
     */
    @RequiresPermissions("system:alipaycashcode:add")
    @Log(title = "支付宝收款码", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsAlipayCashcode msAlipayCashcode)
    {
        return toAjax(msAlipayCashcodeService.insertMsAlipayCashcode(msAlipayCashcode));
    }

    /**
     * 修改支付宝收款码
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsAlipayCashcode msAlipayCashcode = msAlipayCashcodeService.selectMsAlipayCashcodeById(id);
        mmap.put("msAlipayCashcode", msAlipayCashcode);
        return prefix + "/edit";
    }

    /**
     * 修改保存支付宝收款码
     */
    @RequiresPermissions("system:alipaycashcode:edit")
    @Log(title = "支付宝收款码", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsAlipayCashcode msAlipayCashcode)
    {
        return toAjax(msAlipayCashcodeService.updateMsAlipayCashcode(msAlipayCashcode));
    }

    /**
     * 删除支付宝收款码
     */
    @RequiresPermissions("system:alipaycashcode:remove")
    @Log(title = "支付宝收款码", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msAlipayCashcodeService.deleteMsAlipayCashcodeByIds(ids));
    }
}
