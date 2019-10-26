package com.ruoyi.shdl.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.shdl.mapper.ShdlApplyMapper;
import com.ruoyi.shdl.domain.ShdlApply;
import com.ruoyi.shdl.service.IShdlApplyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理申请Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShdlApplyServiceImpl implements IShdlApplyService 
{
    @Autowired
    private ShdlApplyMapper shdlApplyMapper;

    /**
     * 查询码商代理申请
     * 
     * @param id 码商代理申请ID
     * @return 码商代理申请
     */
    @Override
    public ShdlApply selectShdlApplyById(Long id)
    {
        return shdlApplyMapper.selectShdlApplyById(id);
    }

    /**
     * 查询码商代理申请列表
     * 
     * @param shdlApply 码商代理申请
     * @return 码商代理申请
     */
    @Override
    public List<ShdlApply> selectShdlApplyList(ShdlApply shdlApply)
    {
        return shdlApplyMapper.selectShdlApplyList(shdlApply);
    }

    /**
     * 新增码商代理申请
     * 
     * @param shdlApply 码商代理申请
     * @return 结果
     */
    @Override
    public int insertShdlApply(ShdlApply shdlApply)
    {
        return shdlApplyMapper.insertShdlApply(shdlApply);
    }

    /**
     * 修改码商代理申请
     * 
     * @param shdlApply 码商代理申请
     * @return 结果
     */
    @Override
    public int updateShdlApply(ShdlApply shdlApply)
    {
        return shdlApplyMapper.updateShdlApply(shdlApply);
    }

    /**
     * 删除码商代理申请对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShdlApplyByIds(String ids)
    {
        return shdlApplyMapper.deleteShdlApplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理申请信息
     * 
     * @param id 码商代理申请ID
     * @return 结果
     */
    @Override
    public int deleteShdlApplyById(Long id)
    {
        return shdlApplyMapper.deleteShdlApplyById(id);
    }
}
