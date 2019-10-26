package com.ruoyi.tj.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.tj.mapper.TjBillReportMapper;
import com.ruoyi.tj.domain.TjBillReport;
import com.ruoyi.tj.service.ITjBillReportService;
import com.ruoyi.common.core.text.Convert;

/**
 *  对账统计报Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
@Service
public class TjBillReportServiceImpl implements ITjBillReportService 
{
    @Autowired
    private TjBillReportMapper tjBillReportMapper;

    /**
     * 查询 对账统计报
     * 
     * @param id  对账统计报ID
     * @return  对账统计报
     */
    @Override
    public TjBillReport selectTjBillReportById(Long id)
    {
        return tjBillReportMapper.selectTjBillReportById(id);
    }

    /**
     * 查询 对账统计报列表
     * 
     * @param tjBillReport  对账统计报
     * @return  对账统计报
     */
    @Override
    public List<TjBillReport> selectTjBillReportList(TjBillReport tjBillReport)
    {
        return tjBillReportMapper.selectTjBillReportList(tjBillReport);
    }

    /**
     * 新增 对账统计报
     * 
     * @param tjBillReport  对账统计报
     * @return 结果
     */
    @Override
    public int insertTjBillReport(TjBillReport tjBillReport)
    {
        return tjBillReportMapper.insertTjBillReport(tjBillReport);
    }

    /**
     * 修改 对账统计报
     * 
     * @param tjBillReport  对账统计报
     * @return 结果
     */
    @Override
    public int updateTjBillReport(TjBillReport tjBillReport)
    {
        return tjBillReportMapper.updateTjBillReport(tjBillReport);
    }

    /**
     * 删除 对账统计报对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTjBillReportByIds(String ids)
    {
        return tjBillReportMapper.deleteTjBillReportByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除 对账统计报信息
     * 
     * @param id  对账统计报ID
     * @return 结果
     */
    @Override
    public int deleteTjBillReportById(Long id)
    {
        return tjBillReportMapper.deleteTjBillReportById(id);
    }
}
