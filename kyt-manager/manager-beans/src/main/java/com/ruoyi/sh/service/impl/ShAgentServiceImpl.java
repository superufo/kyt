package com.ruoyi.sh.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sh.mapper.ShAgentMapper;
import com.ruoyi.sh.domain.ShAgent;
import com.ruoyi.sh.service.IShAgentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户代理Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShAgentServiceImpl implements IShAgentService 
{
    @Autowired
    private ShAgentMapper shAgentMapper;

    /**
     * 查询商户代理
     * 
     * @param id 商户代理ID
     * @return 商户代理
     */
    @Override
    public ShAgent selectShAgentById(Long id)
    {
        return shAgentMapper.selectShAgentById(id);
    }

    /**
     * 查询商户代理列表
     * 
     * @param shAgent 商户代理
     * @return 商户代理
     */
    @Override
    public List<ShAgent> selectShAgentList(ShAgent shAgent)
    {
        return shAgentMapper.selectShAgentList(shAgent);
    }

    /**
     * 新增商户代理
     * 
     * @param shAgent 商户代理
     * @return 结果
     */
    @Override
    public int insertShAgent(ShAgent shAgent)
    {
        shAgent.setCreateTime(DateUtils.getNowDate());
        return shAgentMapper.insertShAgent(shAgent);
    }

    /**
     * 修改商户代理
     * 
     * @param shAgent 商户代理
     * @return 结果
     */
    @Override
    public int updateShAgent(ShAgent shAgent)
    {
        shAgent.setUpdateTime(DateUtils.getNowDate());
        return shAgentMapper.updateShAgent(shAgent);
    }

    /**
     * 删除商户代理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShAgentByIds(String ids)
    {
        return shAgentMapper.deleteShAgentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户代理信息
     * 
     * @param id 商户代理ID
     * @return 结果
     */
    @Override
    public int deleteShAgentById(Long id)
    {
        return shAgentMapper.deleteShAgentById(id);
    }
}
