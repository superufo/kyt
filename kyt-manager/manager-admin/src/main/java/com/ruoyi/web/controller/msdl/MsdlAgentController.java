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
import com.ruoyi.msdl.domain.MsdlAgent;
import com.ruoyi.msdl.service.IMsdlAgentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 码商代理Controller
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Controller
@RequestMapping("/msdl/agent")
public class MsdlAgentController extends BaseController
{
    private String prefix = "msdl/agent";

    @Autowired
    private IMsdlAgentService msdlAgentService;

    @RequiresPermissions("msdl:agent:view")
    @GetMapping()
    public String agent()
    {
        return prefix + "/agent";
    }

    /**
     * 查询码商代理列表
     */
    @RequiresPermissions("msdl:agent:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MsdlAgent msdlAgent)
    {
        startPage();
        List<MsdlAgent> list = msdlAgentService.selectMsdlAgentList(msdlAgent);
        return getDataTable(list);
    }

    /**
     * 导出码商代理列表
     */
    @RequiresPermissions("msdl:agent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MsdlAgent msdlAgent)
    {
        List<MsdlAgent> list = msdlAgentService.selectMsdlAgentList(msdlAgent);
        ExcelUtil<MsdlAgent> util = new ExcelUtil<MsdlAgent>(MsdlAgent.class);
        return util.exportExcel(list, "agent");
    }

    /**
     * 新增码商代理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存码商代理
     */
    @RequiresPermissions("msdl:agent:add")
    @Log(title = "码商代理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MsdlAgent msdlAgent)
    {
        return toAjax(msdlAgentService.insertMsdlAgent(msdlAgent));
    }

    /**
     * 修改码商代理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MsdlAgent msdlAgent = msdlAgentService.selectMsdlAgentById(id);
        mmap.put("msdlAgent", msdlAgent);
        return prefix + "/edit";
    }

    /**
     * 修改保存码商代理
     */
    @RequiresPermissions("msdl:agent:edit")
    @Log(title = "码商代理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MsdlAgent msdlAgent)
    {
        return toAjax(msdlAgentService.updateMsdlAgent(msdlAgent));
    }

    /**
     * 删除码商代理
     */
    @RequiresPermissions("msdl:agent:remove")
    @Log(title = "码商代理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(msdlAgentService.deleteMsdlAgentByIds(ids));
    }
}
