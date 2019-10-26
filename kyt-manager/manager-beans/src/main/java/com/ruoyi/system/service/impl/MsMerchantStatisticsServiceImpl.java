package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsMerchantStatisticsMapper;
import com.ruoyi.system.domain.MsMerchantStatistics;
import com.ruoyi.system.service.IMsMerchantStatisticsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsMerchantStatisticsServiceImpl implements IMsMerchantStatisticsService 
{
    @Autowired
    private MsMerchantStatisticsMapper msMerchantStatisticsMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param merchantId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsMerchantStatistics selectMsMerchantStatisticsById(Long merchantId)
    {
        return msMerchantStatisticsMapper.selectMsMerchantStatisticsById(merchantId);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsMerchantStatistics> selectMsMerchantStatisticsList(MsMerchantStatistics msMerchantStatistics)
    {
        return msMerchantStatisticsMapper.selectMsMerchantStatisticsList(msMerchantStatistics);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsMerchantStatistics(MsMerchantStatistics msMerchantStatistics)
    {
        return msMerchantStatisticsMapper.insertMsMerchantStatistics(msMerchantStatistics);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msMerchantStatistics 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsMerchantStatistics(MsMerchantStatistics msMerchantStatistics)
    {
        return msMerchantStatisticsMapper.updateMsMerchantStatistics(msMerchantStatistics);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsMerchantStatisticsByIds(String ids)
    {
        return msMerchantStatisticsMapper.deleteMsMerchantStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param merchantId 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsMerchantStatisticsById(Long merchantId)
    {
        return msMerchantStatisticsMapper.deleteMsMerchantStatisticsById(merchantId);
    }
}
