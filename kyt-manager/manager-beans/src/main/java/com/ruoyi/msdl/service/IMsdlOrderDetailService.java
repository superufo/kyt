package com.ruoyi.msdl.service;

import com.ruoyi.msdl.domain.MsdlOrderDetail;
import java.util.List;

/**
 *  码商代理交易明细Service接口
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
public interface IMsdlOrderDetailService 
{
    /**
     * 查询 码商代理交易明细
     * 
     * @param id  码商代理交易明细ID
     * @return  码商代理交易明细
     */
    public MsdlOrderDetail selectMsdlOrderDetailById(Long id);

    /**
     * 查询 码商代理交易明细列表
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return  码商代理交易明细集合
     */
    public List<MsdlOrderDetail> selectMsdlOrderDetailList(MsdlOrderDetail msdlOrderDetail);

    /**
     * 新增 码商代理交易明细
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    public int insertMsdlOrderDetail(MsdlOrderDetail msdlOrderDetail);

    /**
     * 修改 码商代理交易明细
     * 
     * @param msdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    public int updateMsdlOrderDetail(MsdlOrderDetail msdlOrderDetail);

    /**
     * 批量删除 码商代理交易明细
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsdlOrderDetailByIds(String ids);

    /**
     * 删除 码商代理交易明细信息
     * 
     * @param id  码商代理交易明细ID
     * @return 结果
     */
    public int deleteMsdlOrderDetailById(Long id);
}
