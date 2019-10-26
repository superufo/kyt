package com.ruoyi.msdl.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.msdl.mapper.MsdlOrderDetailMapper;
import com.ruoyi.msdl.domain.MsdlOrderDetail;
import com.ruoyi.msdl.service.IMsdlOrderDetailService;
import com.ruoyi.common.core.text.Convert;

/**
 *  码商代理交易明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Service
public class MsdlOrderDetailServiceImpl implements IMsdlOrderDetailService 
{
    @Autowired
    private MsdlOrderDetailMapper msdlOrderDetailMapper;

    /**
     * 查询 码商代理交易明细
     * 
     * @param id  码商代理交易明细ID
     * @return  码商代理交易明细
     */
    @Override
    public MsdlOrderDetail selectMsdlOrderDetailById(Long id)
    {
        return msdlOrderDetailMapper.selectMsdlOrderDetailById(id);
    }

    /**
     * 查询 码商代理交易明细列表
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return  码商代理交易明细
     */
    @Override
    public List<MsdlOrderDetail> selectMsdlOrderDetailList(MsdlOrderDetail msdlOrderDetail)
    {
        return msdlOrderDetailMapper.selectMsdlOrderDetailList(msdlOrderDetail);
    }

    /**
     * 新增 码商代理交易明细
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    @Override
    public int insertMsdlOrderDetail(MsdlOrderDetail msdlOrderDetail)
    {
        msdlOrderDetail.setCreateTime(DateUtils.getNowDate());
        return msdlOrderDetailMapper.insertMsdlOrderDetail(msdlOrderDetail);
    }

    /**
     * 修改 码商代理交易明细
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    @Override
    public int updateMsdlOrderDetail(MsdlOrderDetail msdlOrderDetail)
    {
        msdlOrderDetail.setUpdateTime(DateUtils.getNowDate());
        return msdlOrderDetailMapper.updateMsdlOrderDetail(msdlOrderDetail);
    }

    /**
     * 删除 码商代理交易明细对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsdlOrderDetailByIds(String ids)
    {
        return msdlOrderDetailMapper.deleteMsdlOrderDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除 码商代理交易明细信息
     * 
     * @param id  码商代理交易明细ID
     * @return 结果
     */
    @Override
    public int deleteMsdlOrderDetailById(Long id)
    {
        return msdlOrderDetailMapper.deleteMsdlOrderDetailById(id);
    }
}
