package com.ruoyi.msdl.mapper;

import com.ruoyi.msdl.domain.MsdlCommision;
import java.util.List;
import java.util.Date;

/**
 * 码商代理返佣统计Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
public interface MsdlCommisionMapper 
{
    /**
     * 查询码商代理返佣统计
     * 
     * @param day 码商代理返佣统计ID
     * @return 码商代理返佣统计
     */
    public MsdlCommision selectMsdlCommisionById(Date day);

    /**
     * 查询码商代理返佣统计列表
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 码商代理返佣统计集合
     */
    public List<MsdlCommision> selectMsdlCommisionList(MsdlCommision msdlCommision);

    /**
     * 新增码商代理返佣统计
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 结果
     */
    public int insertMsdlCommision(MsdlCommision msdlCommision);

    /**
     * 修改码商代理返佣统计
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 结果
     */
    public int updateMsdlCommision(MsdlCommision msdlCommision);

    /**
     * 删除码商代理返佣统计
     * 
     * @param day 码商代理返佣统计ID
     * @return 结果
     */
    public int deleteMsdlCommisionById(Date day);

    /**
     * 批量删除码商代理返佣统计
     * 
     * @param days 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsdlCommisionByIds(String[] days);
}
