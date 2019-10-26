package com.ruoyi.msdl.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.msdl.mapper.MsdlAgentMapper;
import com.ruoyi.msdl.domain.MsdlAgent;
import com.ruoyi.msdl.service.IMsdlAgentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Service
public class MsdlAgentServiceImpl implements IMsdlAgentService 
{
    @Autowired
    private MsdlAgentMapper msdlAgentMapper;

    /**
     * 查询码商代理
     * 
     * @param id 码商代理ID
     * @return 码商代理
     */
    @Override
    public MsdlAgent selectMsdlAgentById(Long id)
    {
        return msdlAgentMapper.selectMsdlAgentById(id);
    }

    /**
     * 查询码商代理列表
     * 
     * @param msdlAgent 码商代理
     * @return 码商代理
     */
    @Override
    public List<MsdlAgent> selectMsdlAgentList(MsdlAgent msdlAgent)
    {
        return msdlAgentMapper.selectMsdlAgentList(msdlAgent);
    }

    /**
     * 新增码商代理
     * 
     * @param msdlAgent 码商代理
     * @return 结果
     */
    @Override
    public int insertMsdlAgent(MsdlAgent msdlAgent)
    {
        msdlAgent.setCreateTime(DateUtils.getNowDate());
        return msdlAgentMapper.insertMsdlAgent(msdlAgent);
    }

    /**
     * 修改码商代理
     * 
     * @param msdlAgent 码商代理
     * @return 结果
     */
    @Override
    public int updateMsdlAgent(MsdlAgent msdlAgent)
    {
        msdlAgent.setUpdateTime(DateUtils.getNowDate());
        return msdlAgentMapper.updateMsdlAgent(msdlAgent);
    }

    /**
     * 删除码商代理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsdlAgentByIds(String ids)
    {
        return msdlAgentMapper.deleteMsdlAgentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理信息
     * 
     * @param id 码商代理ID
     * @return 结果
     */
    @Override
    public int deleteMsdlAgentById(Long id)
    {
        return msdlAgentMapper.deleteMsdlAgentById(id);
    }
}
