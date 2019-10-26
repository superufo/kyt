package com.ruoyi.shdl.mapper;

import com.ruoyi.shdl.domain.ShdlOrderDetail;
import java.util.List;

/**
 *  码商代理交易明细Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface ShdlOrderDetailMapper 
{
    /**
     * 查询 码商代理交易明细
     * 
     * @param id  码商代理交易明细ID
     * @return  码商代理交易明细
     */
    public ShdlOrderDetail selectShdlOrderDetailById(Long id);

    /**
     * 查询 码商代理交易明细列表
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return  码商代理交易明细集合
     */
    public List<ShdlOrderDetail> selectShdlOrderDetailList(ShdlOrderDetail shdlOrderDetail);

    /**
     * 新增 码商代理交易明细
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    public int insertShdlOrderDetail(ShdlOrderDetail shdlOrderDetail);

    /**
     * 修改 码商代理交易明细
     * 
     * @param shdlOrderDetail  码商代理交易明细
     * @return 结果
     */
    public int updateShdlOrderDetail(ShdlOrderDetail shdlOrderDetail);

    /**
     * 删除 码商代理交易明细
     * 
     * @param id  码商代理交易明细ID
     * @return 结果
     */
    public int deleteShdlOrderDetailById(Long id);

    /**
     * 批量删除 码商代理交易明细
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShdlOrderDetailByIds(String[] ids);
}
