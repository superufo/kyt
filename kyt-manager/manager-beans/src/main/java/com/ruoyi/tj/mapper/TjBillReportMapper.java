package com.ruoyi.tj.mapper;

import com.ruoyi.tj.domain.TjBillReport;
import java.util.List;

/**
 *  对账统计报Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public interface TjBillReportMapper 
{
    /**
     * 查询 对账统计报
     * 
     * @param id  对账统计报ID
     * @return  对账统计报
     */
    public TjBillReport selectTjBillReportById(Long id);

    /**
     * 查询 对账统计报列表
     * 
     * @param tjBillReport  对账统计报
     * @return  对账统计报集合
     */
    public List<TjBillReport> selectTjBillReportList(TjBillReport tjBillReport);

    /**
     * 新增 对账统计报
     * 
     * @param tjBillReport  对账统计报
     * @return 结果
     */
    public int insertTjBillReport(TjBillReport tjBillReport);

    /**
     * 修改 对账统计报
     * 
     * @param tjBillReport  对账统计报
     * @return 结果
     */
    public int updateTjBillReport(TjBillReport tjBillReport);

    /**
     * 删除 对账统计报
     * 
     * @param id  对账统计报ID
     * @return 结果
     */
    public int deleteTjBillReportById(Long id);

    /**
     * 批量删除 对账统计报
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTjBillReportByIds(String[] ids);
}
