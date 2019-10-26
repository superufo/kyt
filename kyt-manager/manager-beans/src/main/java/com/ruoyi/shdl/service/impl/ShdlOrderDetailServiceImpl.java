package com.ruoyi.shdl.service.impl;

import java.util.List;
import java.util.Date;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.shdl.mapper.ShdlOrderDetailMapper;
import com.ruoyi.shdl.domain.ShdlOrderDetail;
import com.ruoyi.shdl.service.IShdlOrderDetailService;
import com.ruoyi.common.core.text.Convert;

/**
 *  码商代理交易明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShdlOrderDetailServiceImpl implements IShdlOrderDetailService 
{
    @Autowired
    private ShdlOrderDetailMapper shdlOrderDetailMapper;

    /**
     * 查询 码商代理交易明细
     * 
     * @param id  码商代理交易明细ID
     * @return  码商代理交易明细
     */
    @Override
    public ShdlOrderDetail selectShdlOrderDetailById(Long id)
    {
        return shdlOrderDetailMapper.selectShdlOrderDetailById(id);
    }

    /**
     * 查询 码商代理交易明细列表
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return  码商代理交易明细
     */
    @Override
    public List<ShdlOrderDetail> selectShdlOrderDetailList(ShdlOrderDetail shdlOrderDetail)
    {
        return shdlOrderDetailMapper.selectShdlOrderDetailList(shdlOrderDetail);
    }

    /**
     * 新增 码商代理交易明细
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    @Override
    public int insertShdlOrderDetail(ShdlOrderDetail shdlOrderDetail)
    {
        shdlOrderDetail.setCreateTime(DateUtils.getNowDate());
        return shdlOrderDetailMapper.insertShdlOrderDetail(shdlOrderDetail);
    }

    /**
     * 修改 码商代理交易明细
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    @Override
    public int updateShdlOrderDetail(ShdlOrderDetail shdlOrderDetail)
    {
        shdlOrderDetail.setUpdateTime(DateUtils.getNowDate());
        return shdlOrderDetailMapper.updateShdlOrderDetail(shdlOrderDetail);
    }

    /**
     * 删除 码商代理交易明细对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShdlOrderDetailByIds(String ids)
    {
        return shdlOrderDetailMapper.deleteShdlOrderDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除 码商代理交易明细信息
     * 
     * @param id  码商代理交易明细ID
     * @return 结果
     */
    @Override
    public int deleteShdlOrderDetailById(Long id)
    {
        return shdlOrderDetailMapper.deleteShdlOrderDetailById(id);
    }
}
