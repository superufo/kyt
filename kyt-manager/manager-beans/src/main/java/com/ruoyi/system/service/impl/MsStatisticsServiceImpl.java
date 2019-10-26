package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsStatisticsMapper;
import com.ruoyi.system.domain.MsStatistics;
import com.ruoyi.system.service.IMsStatisticsService;
import com.ruoyi.common.core.text.Convert;
import java.util.Date;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsStatisticsServiceImpl implements IMsStatisticsService 
{
    @Autowired
    private MsStatisticsMapper msStatisticsMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param date 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsStatistics selectMsStatisticsById(Date date)
    {
        return msStatisticsMapper.selectMsStatisticsById(date);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsStatistics> selectMsStatisticsList(MsStatistics msStatistics)
    {
        return msStatisticsMapper.selectMsStatisticsList(msStatistics);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsStatistics(MsStatistics msStatistics)
    {
        return msStatisticsMapper.insertMsStatistics(msStatistics);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsStatistics(MsStatistics msStatistics)
    {
        return msStatisticsMapper.updateMsStatistics(msStatistics);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsStatisticsByIds(String ids)
    {
        return msStatisticsMapper.deleteMsStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param date 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsStatisticsById(Date date)
    {
        return msStatisticsMapper.deleteMsStatisticsById(date);
    }
}
