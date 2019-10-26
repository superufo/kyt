package com.ruoyi.shdl.service.impl;

import java.util.List;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.shdl.mapper.ShdlCommisionMapper;
import com.ruoyi.shdl.domain.ShdlCommision;
import com.ruoyi.shdl.service.IShdlCommisionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理返佣统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShdlCommisionServiceImpl implements IShdlCommisionService 
{
    @Autowired
    private ShdlCommisionMapper shdlCommisionMapper;

    /**
     * 查询码商代理返佣统计
     * 
     * @param day 码商代理返佣统计ID
     * @return 码商代理返佣统计
     */
    @Override
    public ShdlCommision selectShdlCommisionById(Date day)
    {
        return shdlCommisionMapper.selectShdlCommisionById(day);
    }

    /**
     * 查询码商代理返佣统计列表
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 码商代理返佣统计
     */
    @Override
    public List<ShdlCommision> selectShdlCommisionList(ShdlCommision shdlCommision)
    {
        return shdlCommisionMapper.selectShdlCommisionList(shdlCommision);
    }

    /**
     * 新增码商代理返佣统计
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 结果
     */
    @Override
    public int insertShdlCommision(ShdlCommision shdlCommision)
    {
        return shdlCommisionMapper.insertShdlCommision(shdlCommision);
    }

    /**
     * 修改码商代理返佣统计
     * 
     * @param shdlCommision 码商代理返佣统计
     * @return 结果
     */
    @Override
    public int updateShdlCommision(ShdlCommision shdlCommision)
    {
        return shdlCommisionMapper.updateShdlCommision(shdlCommision);
    }

    /**
     * 删除码商代理返佣统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShdlCommisionByIds(String ids)
    {
        return shdlCommisionMapper.deleteShdlCommisionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理返佣统计信息
     * 
     * @param day 码商代理返佣统计ID
     * @return 结果
     */
    @Override
    public int deleteShdlCommisionById(Date day)
    {
        return shdlCommisionMapper.deleteShdlCommisionById(day);
    }
}
