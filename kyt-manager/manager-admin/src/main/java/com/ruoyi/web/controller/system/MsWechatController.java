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
import com.ruoyi.system.domain.MsWechat;
import com.ruoyi.system.service.IMsWechatService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商微信账户Controller
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Controller
@RequestMapping("/system/wechat")
public class MsWechatController extends BaseController
{
    private String prefix = "system/wechat";

    @Autowired
    private IMsWechatService msWechatService;

    @RequiresPermissions("system:wechat:view")
    @GetMapping()
    public String wechat()
    {
        return prefix + "/wechat";
    }

    /**
     * 查询码商微信账户列表
     */
    @RequiresPermissions("system:wechat:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsWechat msWechat)
    {
        startPage();
        List<MsWechat> list = msWechatService.selectMsWechatList(msWechat);
        return getDataTable(list);
    }

    /**
     * 导出码商微信账户列表
     */
    @RequiresPermissions("system:wechat:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsWechat msWechat)
    {
        List<MsWechat> list = msWechatService.selectMsWechatList(msWechat);
        ExcelUtil<MsWechat> util = new ExcelUtil<MsWechat>(MsWechat.class);
        return util.exportExcel(list, "wechat");
    }

    /**
     * 新增码商微信账户
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商微信账户
     */
    @RequiresPermissions("system:wechat:add")
    @Log(title = "码商微信账户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsWechat msWechat)
    {
        return toAjax(msWechatService.insertMsWechat(msWechat));
    }

    /**
     * 修改码商微信账户
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsWechat msWechat = msWechatService.selectMsWechatById(id);
        mmap.put("msWechat", msWechat);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商微信账户
     */
    @RequiresPermissions("system:wechat:edit")
    @Log(title = "码商微信账户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsWechat msWechat)
    {
        return toAjax(msWechatService.updateMsWechat(msWechat));
    }

    /**
     * 删除码商微信账户
     */
    @RequiresPermissions("system:wechat:remove")
    @Log(title = "码商微信账户", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msWechatService.deleteMsWechatByIds(ids));
    }
}
