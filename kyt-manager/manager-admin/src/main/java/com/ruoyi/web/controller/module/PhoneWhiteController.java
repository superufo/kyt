package com.ruoyi.web.controller.module;

import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
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
import com.ruoyi.module.domain.PhoneWhite;
import com.ruoyi.module.service.IPhoneWhiteService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 手机白名单Controller
 * 
 * @author ruoyi
 * @date 2019-10-07
 */
@Controller
@RequestMapping("/module/white")
public class PhoneWhiteController extends BaseController
{
    private String prefix = "module/white";

    @Autowired
    private IPhoneWhiteService phoneWhiteService;

    @RequiresPermissions("module:white:view")
    @GetMapping()
    public String white()
    {
        return prefix + "/white";
    }

    /**
     * 查询手机白名单列表
     */
    @RequiresPermissions("module:white:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PhoneWhite phoneWhite)
    {
        startPage();
        List<PhoneWhite> list = phoneWhiteService.selectPhoneWhiteList(phoneWhite);
        return getDataTable(list);
    }

    /**
     * 新增手机白名单
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存手机白名单
     */
    @RequiresPermissions("module:white:add")
    @Log(title = "手机白名单", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PhoneWhite phoneWhite)
    {
        return toAjax(phoneWhiteService.insertPhoneWhite(phoneWhite));
    }

    /**
     * 修改手机白名单
     */
    @GetMapping("/edit/{phone}")
    public String edit(@PathVariable("phone") String phone, ModelMap mmap)
    {
        PhoneWhite phoneWhite = phoneWhiteService.selectPhoneWhiteById(phone);
        mmap.put("phoneWhite", phoneWhite);
        return prefix + "/edit";
    }

    /**
     * 修改保存手机白名单
     */
    @RequiresPermissions("module:white:edit")
    @Log(title = "手机白名单", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PhoneWhite phoneWhite)
    {
        return toAjax(phoneWhiteService.updatePhoneWhite(phoneWhite));
    }

    /**
     * 删除手机白名单
     */
    @RequiresPermissions("module:white:remove")
    @Log(title = "手机白名单", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(phoneWhiteService.deletePhoneWhiteByIds(ids));
    }
}
