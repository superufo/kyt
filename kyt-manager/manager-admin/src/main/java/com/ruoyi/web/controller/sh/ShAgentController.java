package com.ruoyi.web.controller.sh;

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
import com.ruoyi.sh.domain.ShAgent;
import com.ruoyi.sh.service.IShAgentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商户代理Controller
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Controller
@RequestMapping("/sh/agent")
public class ShAgentController extends BaseController
{
    private String prefix = "sh/agent";

    @Autowired
    private IShAgentService shAgentService;

    @RequiresPermissions("sh:agent:view")
    @GetMapping()
    public String agent()
    {
        return prefix + "/agent";
    }

    /**
     * 查询商户代理列表
     */
    @RequiresPermissions("sh:agent:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShAgent shAgent)
    {
        startPage();
        List<ShAgent> list = shAgentService.selectShAgentList(shAgent);
        return getDataTable(list);
    }

    /**
     * 导出商户代理列表
     */
    @RequiresPermissions("sh:agent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShAgent shAgent)
    {
        List<ShAgent> list = shAgentService.selectShAgentList(shAgent);
        ExcelUtil<ShAgent> util = new ExcelUtil<ShAgent>(ShAgent.class);
        return util.exportExcel(list, "agent");
    }

    /**
     * 新增商户代理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商户代理
     */
    @RequiresPermissions("sh:agent:add")
    @Log(title = "商户代理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShAgent shAgent)
    {
        return toAjax(shAgentService.insertShAgent(shAgent));
    }

    /**
     * 修改商户代理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShAgent shAgent = shAgentService.selectShAgentById(id);
        mmap.put("shAgent", shAgent);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户代理
     */
    @RequiresPermissions("sh:agent:edit")
    @Log(title = "商户代理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShAgent shAgent)
    {
        return toAjax(shAgentService.updateShAgent(shAgent));
    }

    /**
     * 删除商户代理
     */
    @RequiresPermissions("sh:agent:remove")
    @Log(title = "商户代理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shAgentService.deleteShAgentByIds(ids));
    }
}
