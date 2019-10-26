package com.ruoyi.shdl.service;

import com.ruoyi.shdl.domain.ShdlCommision;
import java.util.List;
import java.util.Date;

/**
 * 码商代理返佣统计Service接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface IShdlCommisionService 
{
    /**
     * 查询码商代理返佣统计
     * 
     * @param day 码商代理返佣统计ID
     * @return 码商代理返佣统计
     */
    public ShdlCommision selectShdlCommisionById(Date day);

    /**
     * 查询码商代理返佣统计列表
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 码商代理返佣统计集合
     */
    public List<ShdlCommision> selectShdlCommisionList(ShdlCommision shdlCommision);

    /**
     * 新增码商代理返佣统计
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 结果
     */
    public int insertShdlCommision(ShdlCommision shdlCommision);

    /**
     * 修改码商代理返佣统计
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 结果
     */
    public int updateShdlCommision(ShdlCommision shdlCommision);

    /**
     * 批量删除码商代理返佣统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShdlCommisionByIds(String ids);

    /**
     * 删除码商代理返佣统计信息
     * 
     * @param day 码商代理返佣统计ID
     * @return 结果
     */
    public int deleteShdlCommisionById(Date day);
}
