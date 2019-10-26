package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.MsStatistics;
import java.util.List;
import java.util.Date;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface MsStatisticsMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param date 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsStatistics selectMsStatisticsById(Date date);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsStatistics> selectMsStatisticsList(MsStatistics msStatistics);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 结果
     */
    public int insertMsStatistics(MsStatistics msStatistics);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msStatistics 【请填写功能名称】
     * @return 结果
     */
    public int updateMsStatistics(MsStatistics msStatistics);

    /**
     * 删除【请填写功能名称】
     * 
     * @param date 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsStatisticsById(Date date);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param dates 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsStatisticsByIds(String[] dates);
}
