package com.ruoyi.tj.service;

import com.ruoyi.tj.domain.TjMsorderStatus;
import java.util.List;

/**
 * 商户订单状态统计Service接口
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public interface ITjMsorderStatusService 
{
    /**
     * 查询商户订单状态统计
     * 
     * @param msMerchant 商户订单状态统计ID
     * @return 商户订单状态统计
     */
    public TjMsorderStatus selectTjMsorderStatusById(Long msMerchant);

    /**
     * 查询商户订单状态统计列表
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 商户订单状态统计集合
     */
    public List<TjMsorderStatus> selectTjMsorderStatusList(TjMsorderStatus tjMsorderStatus);

    /**
     * 新增商户订单状态统计
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 结果
     */
    public int insertTjMsorderStatus(TjMsorderStatus tjMsorderStatus);

    /**
     * 修改商户订单状态统计
     * 
     * @param tjMsorderStatus 商户订单状态统计
     * @return 结果
     */
    public int updateTjMsorderStatus(TjMsorderStatus tjMsorderStatus);

    /**
     * 批量删除商户订单状态统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTjMsorderStatusByIds(String ids);

    /**
     * 删除商户订单状态统计信息
     * 
     * @param msMerchant 商户订单状态统计ID
     * @return 结果
     */
    public int deleteTjMsorderStatusById(Long msMerchant);
}
