package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.MsMerchantStatistics;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface MsMerchantStatisticsMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param merchantId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsMerchantStatistics selectMsMerchantStatisticsById(Long merchantId);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsMerchantStatistics> selectMsMerchantStatisticsList(MsMerchantStatistics msMerchantStatistics);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 结果
     */
    public int insertMsMerchantStatistics(MsMerchantStatistics msMerchantStatistics);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 结果
     */
    public int updateMsMerchantStatistics(MsMerchantStatistics msMerchantStatistics);

    /**
     * 删除【请填写功能名称】
     * 
     * @param merchantId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsMerchantStatisticsById(Long merchantId);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param merchantIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsMerchantStatisticsByIds(String[] merchantIds);
}
