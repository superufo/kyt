package com.ruoyi.sh.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sh.mapper.ShMerchantStatisticsMapper;
import com.ruoyi.sh.domain.ShMerchantStatistics;
import com.ruoyi.sh.service.IShMerchantStatisticsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户返佣统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShMerchantStatisticsServiceImpl implements IShMerchantStatisticsService 
{
    @Autowired
    private ShMerchantStatisticsMapper shMerchantStatisticsMapper;

    /**
     * 查询商户返佣统计
     * 
     * @param serverId 商户返佣统计ID
     * @return 商户返佣统计
     */
    @Override
    public ShMerchantStatistics selectShMerchantStatisticsById(Long serverId)
    {
        return shMerchantStatisticsMapper.selectShMerchantStatisticsById(serverId);
    }

    /**
     * 查询商户返佣统计列表
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 商户返佣统计
     */
    @Override
    public List<ShMerchantStatistics> selectShMerchantStatisticsList(ShMerchantStatistics shMerchantStatistics)
    {
        return shMerchantStatisticsMapper.selectShMerchantStatisticsList(shMerchantStatistics);
    }

    /**
     * 新增商户返佣统计
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 结果
     */
    @Override
    public int insertShMerchantStatistics(ShMerchantStatistics shMerchantStatistics)
    {
        return shMerchantStatisticsMapper.insertShMerchantStatistics(shMerchantStatistics);
    }

    /**
     * 修改商户返佣统计
     * 
     * @param shMerchantStatistics 商户返佣统计
     * @return 结果
     */
    @Override
    public int updateShMerchantStatistics(ShMerchantStatistics shMerchantStatistics)
    {
        return shMerchantStatisticsMapper.updateShMerchantStatistics(shMerchantStatistics);
    }

    /**
     * 删除商户返佣统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShMerchantStatisticsByIds(String ids)
    {
        return shMerchantStatisticsMapper.deleteShMerchantStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户返佣统计信息
     * 
     * @param serverId 商户返佣统计ID
     * @return 结果
     */
    @Override
    public int deleteShMerchantStatisticsById(Long serverId)
    {
        return shMerchantStatisticsMapper.deleteShMerchantStatisticsById(serverId);
    }
}
