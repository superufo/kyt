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
import com.ruoyi.shdl.domain.ShdlAgent;
import com.ruoyi.shdl.service.IShdlAgentService;
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
@RequestMapping("/shdl/agent")
public class ShdlAgentController extends BaseController
{
    private String prefix = "shdl/agent";

    @Autowired
    private IShdlAgentService shdlAgentService;

    @RequiresPermissions("shdl:agent:view")
    @GetMapping()
    public String agent()
    {
        return prefix + "/agent";
    }

    /**
     * 查询商户代理列表
     */
    @RequiresPermissions("shdl:agent:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ShdlAgent shdlAgent)
    {
        startPage();
        List<ShdlAgent> list = shdlAgentService.selectShdlAgentList(shdlAgent);
        return getDataTable(list);
    }

    /**
     * 导出商户代理列表
     */
    @RequiresPermissions("shdl:agent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ShdlAgent shdlAgent)
    {
        List<ShdlAgent> list = shdlAgentService.selectShdlAgentList(shdlAgent);
        ExcelUtil<ShdlAgent> util = new ExcelUtil<ShdlAgent>(ShdlAgent.class);
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
    @RequiresPermissions("shdl:agent:add")
    @Log(title = "商户代理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ShdlAgent shdlAgent)
    {
        return toAjax(shdlAgentService.insertShdlAgent(shdlAgent));
    }

    /**
     * 修改商户代理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ShdlAgent shdlAgent = shdlAgentService.selectShdlAgentById(id);
        mmap.put("shdlAgent", shdlAgent);
        return prefix + "/edit";
    }

    /**
     * 修改保存商户代理
     */
    @RequiresPermissions("shdl:agent:edit")
    @Log(title = "商户代理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ShdlAgent shdlAgent)
    {
        return toAjax(shdlAgentService.updateShdlAgent(shdlAgent));
    }

    /**
     * 删除商户代理
     */
    @RequiresPermissions("shdl:agent:remove")
    @Log(title = "商户代理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shdlAgentService.deleteShdlAgentByIds(ids));
    }
}
