package com.ruoyi.web.controller.module;

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
import com.ruoyi.module.domain.Merchant;
import com.ruoyi.module.service.IMerchantService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户名单Controller
 * 
 * @author ruoyi
 * @date 2019-10-13
 */
@Controller
@RequestMapping("/module/merchant")
public class MerchantController extends BaseController
{
    private String prefix = "module/merchant";

    @Autowired
    private IMerchantService merchantService;

    @RequiresPermissions("module:merchant:view")
    @GetMapping()
    public String merchant()
    {
        return prefix + "/merchant";
    }

    /**
     * 查询商户名单列表
     */
    @RequiresPermissions("module:merchant:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Merchant merchant)
    {
        startPage();
        List<Merchant> list = merchantService.selectMerchantList(merchant);
        return getDataTable(list);
    }

    /**
     * 导出商户名单列表
     */
    @RequiresPermissions("module:merchant:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Merchant merchant)
    {
        List<Merchant> list = merchantService.selectMerchantList(merchant);
        ExcelUtil<Merchant> util = new ExcelUtil<Merchant>(Merchant.class);
        return util.exportExcel(list, "merchant");
    }

    /**
     * 新增商户名单
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户名单
     */
    @RequiresPermissions("module:merchant:add")
    @Log(title = "商户名单", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Merchant merchant)
    {
        return toAjax(merchantService.insertMerchant(merchant));
    }

    /**
     * 修改商户名单
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Merchant merchant = merchantService.selectMerchantById(id);
        mmap.put("merchant", merchant);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户名单
     */
    @RequiresPermissions("module:merchant:edit")
    @Log(title = "商户名单", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Merchant merchant)
    {
        return toAjax(merchantService.updateMerchant(merchant));
    }

    /**
     * 删除商户名单
     */
    @RequiresPermissions("module:merchant:remove")
    @Log(title = "商户名单", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(merchantService.deleteMerchantByIds(ids));
    }
}
