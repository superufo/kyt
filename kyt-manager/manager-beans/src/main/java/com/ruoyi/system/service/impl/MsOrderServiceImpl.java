package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsOrderMapper;
import com.ruoyi.system.domain.MsOrder;
import com.ruoyi.system.service.IMsOrderService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsOrderServiceImpl implements IMsOrderService 
{
    @Autowired
    private MsOrderMapper msOrderMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsOrder selectMsOrderById(String id)
    {
        return msOrderMapper.selectMsOrderById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msOrder 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsOrder> selectMsOrderList(MsOrder msOrder)
    {
        return msOrderMapper.selectMsOrderList(msOrder);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsOrder(MsOrder msOrder)
    {
        return msOrderMapper.insertMsOrder(msOrder);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsOrder(MsOrder msOrder)
    {
        return msOrderMapper.updateMsOrder(msOrder);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsOrderByIds(String ids)
    {
        return msOrderMapper.deleteMsOrderByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsOrderById(String id)
    {
        return msOrderMapper.deleteMsOrderById(id);
    }
}
