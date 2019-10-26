package com.ruoyi.msdl.service.impl;

import java.util.List;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.msdl.mapper.MsdlCommisionMapper;
import com.ruoyi.msdl.domain.MsdlCommision;
import com.ruoyi.msdl.service.IMsdlCommisionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理返佣统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Service
public class MsdlCommisionServiceImpl implements IMsdlCommisionService 
{
    @Autowired
    private MsdlCommisionMapper msdlCommisionMapper;

    /**
     * 查询码商代理返佣统计
     * 
     * @param day 码商代理返佣统计ID
     * @return 码商代理返佣统计
     */
    @Override
    public MsdlCommision selectMsdlCommisionById(Date day)
    {
        return msdlCommisionMapper.selectMsdlCommisionById(day);
    }

    /**
     * 查询码商代理返佣统计列表
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 码商代理返佣统计
     */
    @Override
    public List<MsdlCommision> selectMsdlCommisionList(MsdlCommision msdlCommision)
    {
        return msdlCommisionMapper.selectMsdlCommisionList(msdlCommision);
    }

    /**
     * 新增码商代理返佣统计
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 结果
     */
    @Override
    public int insertMsdlCommision(MsdlCommision msdlCommision)
    {
        return msdlCommisionMapper.insertMsdlCommision(msdlCommision);
    }

    /**
     * 修改码商代理返佣统计
     * 
     * @param msdlCommision 码商代理返佣统计
     * @return 结果
     */
    @Override
    public int updateMsdlCommision(MsdlCommision msdlCommision)
    {
        return msdlCommisionMapper.updateMsdlCommision(msdlCommision);
    }

    /**
     * 删除码商代理返佣统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsdlCommisionByIds(String ids)
    {
        return msdlCommisionMapper.deleteMsdlCommisionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理返佣统计信息
     * 
     * @param day 码商代理返佣统计ID
     * @return 结果
     */
    @Override
    public int deleteMsdlCommisionById(Date day)
    {
        return msdlCommisionMapper.deleteMsdlCommisionById(day);
    }
}
