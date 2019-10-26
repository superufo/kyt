package com.ruoyi.tj.service;

import com.ruoyi.tj.domain.TjHsorderStatus;
import java.util.List;

/**
 * 商户订单状态统计Service接口
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public interface ITjHsorderStatusService 
{
    /**
     * 查询商户订单状态统计
     * 
     * @param serverId 商户订单状态统计ID
     * @return 商户订单状态统计
     */
    public TjHsorderStatus selectTjHsorderStatusById(Long serverId);

    /**
     * 查询商户订单状态统计列表
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 商户订单状态统计集合
     */
    public List<TjHsorderStatus> selectTjHsorderStatusList(TjHsorderStatus tjHsorderStatus);

    /**
     * 新增商户订单状态统计
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 结果
     */
    public int insertTjHsorderStatus(TjHsorderStatus tjHsorderStatus);

    /**
     * 修改商户订单状态统计
     * 
     * @param tjHsorderStatus 商户订单状态统计
     * @return 结果
     */
    public int updateTjHsorderStatus(TjHsorderStatus tjHsorderStatus);

    /**
     * 批量删除商户订单状态统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTjHsorderStatusByIds(String ids);

    /**
     * 删除商户订单状态统计信息
     * 
     * @param serverId 商户订单状态统计ID
     * @return 结果
     */
    public int deleteTjHsorderStatusById(Long serverId);
}
