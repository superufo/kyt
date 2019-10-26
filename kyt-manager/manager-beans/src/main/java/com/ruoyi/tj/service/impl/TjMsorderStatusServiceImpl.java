package com.ruoyi.tj.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.tj.mapper.TjMsorderStatusMapper;
import com.ruoyi.tj.domain.TjMsorderStatus;
import com.ruoyi.tj.service.ITjMsorderStatusService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户订单状态统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
@Service
public class TjMsorderStatusServiceImpl implements ITjMsorderStatusService 
{
    @Autowired
    private TjMsorderStatusMapper tjMsorderStatusMapper;

    /**
     * 查询商户订单状态统计
     * 
     * @param msMerchant 商户订单状态统计ID
     * @return 商户订单状态统计
     */
    @Override
    public TjMsorderStatus selectTjMsorderStatusById(Long msMerchant)
    {
        return tjMsorderStatusMapper.selectTjMsorderStatusById(msMerchant);
    }

    /**
     * 查询商户订单状态统计列表
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 商户订单状态统计
     */
    @Override
    public List<TjMsorderStatus> selectTjMsorderStatusList(TjMsorderStatus tjMsorderStatus)
    {
        return tjMsorderStatusMapper.selectTjMsorderStatusList(tjMsorderStatus);
    }

    /**
     * 新增商户订单状态统计
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 结果
     */
    @Override
    public int insertTjMsorderStatus(TjMsorderStatus tjMsorderStatus)
    {
        return tjMsorderStatusMapper.insertTjMsorderStatus(tjMsorderStatus);
    }

    /**
     * 修改商户订单状态统计
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 结果
     */
    @Override
    public int updateTjMsorderStatus(TjMsorderStatus tjMsorderStatus)
    {
        return tjMsorderStatusMapper.updateTjMsorderStatus(tjMsorderStatus);
    }

    /**
     * 删除商户订单状态统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTjMsorderStatusByIds(String ids)
    {
        return tjMsorderStatusMapper.deleteTjMsorderStatusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户订单状态统计信息
     * 
     * @param msMerchant 商户订单状态统计ID
     * @return 结果
     */
    @Override
    public int deleteTjMsorderStatusById(Long msMerchant)
    {
        return tjMsorderStatusMapper.deleteTjMsorderStatusById(msMerchant);
    }
}
