package com.ruoyi.sh.mapper;

import com.ruoyi.sh.domain.ShMerchantStatistics;
import java.util.List;

/**
 * 商户返佣统计Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface ShMerchantStatisticsMapper 
{
    /**
     * 查询商户返佣统计
     * 
     * @param serverId 商户返佣统计ID
     * @return 商户返佣统计
     */
    public ShMerchantStatistics selectShMerchantStatisticsById(Long serverId);

    /**
     * 查询商户返佣统计列表
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 商户返佣统计集合
     */
    public List<ShMerchantStatistics> selectShMerchantStatisticsList(ShMerchantStatistics shMerchantStatistics);

    /**
     * 新增商户返佣统计
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 结果
     */
    public int insertShMerchantStatistics(ShMerchantStatistics shMerchantStatistics);

    /**
     * 修改商户返佣统计
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 结果
     */
    public int updateShMerchantStatistics(ShMerchantStatistics shMerchantStatistics);

    /**
     * 删除商户返佣统计
     * 
     * @param serverId 商户返佣统计ID
     * @return 结果
     */
    public int deleteShMerchantStatisticsById(Long serverId);

    /**
     * 批量删除商户返佣统计
     * 
     * @param serverIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteShMerchantStatisticsByIds(String[] serverIds);
}
