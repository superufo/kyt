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
import com.ruoyi.system.domain.MsWechatCashcode;
import com.ruoyi.system.service.IMsWechatCashcodeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 微信收款码Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/wechatcashcode")
public class MsWechatCashcodeController extends BaseController
{
    private String prefix = "system/wechatcashcode";

    @Autowired
    private IMsWechatCashcodeService msWechatCashcodeService;

    @RequiresPermissions("system:wechatcashcode:view")
    @GetMapping()
    public String cashcode()
    {
        return prefix + "/cashcode";
    }

    /**
     * 查询微信收款码列表
     */
    @RequiresPermissions("system:wechatcashcode:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsWechatCashcode msWechatCashcode)
    {
        startPage();
        List<MsWechatCashcode> list = msWechatCashcodeService.selectMsWechatCashcodeList(msWechatCashcode);
        return getDataTable(list);
    }

    /**
     * 导出微信收款码列表
     */
    @RequiresPermissions("system:wechatcashcode:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsWechatCashcode msWechatCashcode)
    {
        List<MsWechatCashcode> list = msWechatCashcodeService.selectMsWechatCashcodeList(msWechatCashcode);
        ExcelUtil<MsWechatCashcode> util = new ExcelUtil<MsWechatCashcode>(MsWechatCashcode.class);
        return util.exportExcel(list, "wechatcashcode");
    }

    /**
     * 新增微信收款码
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存微信收款码
     */
    @RequiresPermissions("system:wechatcashcode:add")
    @Log(title = "微信收款码", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsWechatCashcode msWechatCashcode)
    {
        return toAjax(msWechatCashcodeService.insertMsWechatCashcode(msWechatCashcode));
    }

    /**
     * 修改微信收款码
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsWechatCashcode msWechatCashcode = msWechatCashcodeService.selectMsWechatCashcodeById(id);
        mmap.put("msWechatCashcode", msWechatCashcode);
        return prefix + "/edit";
    }

    /**
     * 修改保存微信收款码
     */
    @RequiresPermissions("system:wechatcashcode:edit")
    @Log(title = "微信收款码", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsWechatCashcode msWechatCashcode)
    {
        return toAjax(msWechatCashcodeService.updateMsWechatCashcode(msWechatCashcode));
    }

    /**
     * 删除微信收款码
     */
    @RequiresPermissions("system:wechatcashcode:remove")
    @Log(title = "微信收款码", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msWechatCashcodeService.deleteMsWechatCashcodeByIds(ids));
    }
}
