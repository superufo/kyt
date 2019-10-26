package com.ruoyi.tj.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.tj.mapper.TjHsorderStatusMapper;
import com.ruoyi.tj.domain.TjHsorderStatus;
import com.ruoyi.tj.service.ITjHsorderStatusService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户订单状态统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
@Service
public class TjHsorderStatusServiceImpl implements ITjHsorderStatusService 
{
    @Autowired
    private TjHsorderStatusMapper tjHsorderStatusMapper;

    /**
     * 查询商户订单状态统计
     * 
     * @param serverId 商户订单状态统计ID
     * @return 商户订单状态统计
     */
    @Override
    public TjHsorderStatus selectTjHsorderStatusById(Long serverId)
    {
        return tjHsorderStatusMapper.selectTjHsorderStatusById(serverId);
    }

    /**
     * 查询商户订单状态统计列表
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 商户订单状态统计
     */
    @Override
    public List<TjHsorderStatus> selectTjHsorderStatusList(TjHsorderStatus tjHsorderStatus)
    {
        return tjHsorderStatusMapper.selectTjHsorderStatusList(tjHsorderStatus);
    }

    /**
     * 新增商户订单状态统计
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 结果
     */
    @Override
    public int insertTjHsorderStatus(TjHsorderStatus tjHsorderStatus)
    {
        return tjHsorderStatusMapper.insertTjHsorderStatus(tjHsorderStatus);
    }

    /**
     * 修改商户订单状态统计
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 结果
     */
    @Override
    public int updateTjHsorderStatus(TjHsorderStatus tjHsorderStatus)
    {
        return tjHsorderStatusMapper.updateTjHsorderStatus(tjHsorderStatus);
    }

    /**
     * 删除商户订单状态统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTjHsorderStatusByIds(String ids)
    {
        return tjHsorderStatusMapper.deleteTjHsorderStatusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户订单状态统计信息
     * 
     * @param serverId 商户订单状态统计ID
     * @return 结果
     */
    @Override
    public int deleteTjHsorderStatusById(Long serverId)
    {
        return tjHsorderStatusMapper.deleteTjHsorderStatusById(serverId);
    }
}
