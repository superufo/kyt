package com.ruoyi.shdl.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.shdl.mapper.ShdlAgentMapper;
import com.ruoyi.shdl.domain.ShdlAgent;
import com.ruoyi.shdl.service.IShdlAgentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShdlAgentServiceImpl implements IShdlAgentService 
{
    @Autowired
    private ShdlAgentMapper shdlAgentMapper;

    /**
     * 查询码商代理
     * 
     * @param id 码商代理ID
     * @return 码商代理
     */
    @Override
    public ShdlAgent selectShdlAgentById(Long id)
    {
        return shdlAgentMapper.selectShdlAgentById(id);
    }

    /**
     * 查询码商代理列表
     * 
     * @param shdlAgent 码商代理
     * @return 码商代理
     */
    @Override
    public List<ShdlAgent> selectShdlAgentList(ShdlAgent shdlAgent)
    {
        return shdlAgentMapper.selectShdlAgentList(shdlAgent);
    }

    /**
     * 新增码商代理
     * 
     * @param shdlAgent 码商代理
     * @return 结果
     */
    @Override
    public int insertShdlAgent(ShdlAgent shdlAgent)
    {
        shdlAgent.setCreateTime(DateUtils.getNowDate());
        return shdlAgentMapper.insertShdlAgent(shdlAgent);
    }

    /**
     * 修改码商代理
     * 
     * @param shdlAgent 码商代理
     * @return 结果
     */
    @Override
    public int updateShdlAgent(ShdlAgent shdlAgent)
    {
        shdlAgent.setUpdateTime(DateUtils.getNowDate());
        return shdlAgentMapper.updateShdlAgent(shdlAgent);
    }

    /**
     * 删除码商代理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShdlAgentByIds(String ids)
    {
        return shdlAgentMapper.deleteShdlAgentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理信息
     * 
     * @param id 码商代理ID
     * @return 结果
     */
    @Override
    public int deleteShdlAgentById(Long id)
    {
        return shdlAgentMapper.deleteShdlAgentById(id);
    }
}
