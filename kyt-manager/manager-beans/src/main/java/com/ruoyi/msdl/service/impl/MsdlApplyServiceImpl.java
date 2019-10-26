package com.ruoyi.msdl.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.msdl.mapper.MsdlApplyMapper;
import com.ruoyi.msdl.domain.MsdlApply;
import com.ruoyi.msdl.service.IMsdlApplyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 码商代理申请Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
@Service
public class MsdlApplyServiceImpl implements IMsdlApplyService 
{
    @Autowired
    private MsdlApplyMapper msdlApplyMapper;

    /**
     * 查询码商代理申请
     * 
     * @param id 码商代理申请ID
     * @return 码商代理申请
     */
    @Override
    public MsdlApply selectMsdlApplyById(Long id)
    {
        return msdlApplyMapper.selectMsdlApplyById(id);
    }

    /**
     * 查询码商代理申请列表
     * 
     * @param msdlApply 码商代理申请
     * @return 码商代理申请
     */
    @Override
    public List<MsdlApply> selectMsdlApplyList(MsdlApply msdlApply)
    {
        return msdlApplyMapper.selectMsdlApplyList(msdlApply);
    }

    /**
     * 新增码商代理申请
     * 
     * @param msdlApply 码商代理申请
     * @return 结果
     */
    @Override
    public int insertMsdlApply(MsdlApply msdlApply)
    {
        return msdlApplyMapper.insertMsdlApply(msdlApply);
    }

    /**
     * 修改码商代理申请
     * 
     * @param msdlApply 码商代理申请
     * @return 结果
     */
    @Override
    public int updateMsdlApply(MsdlApply msdlApply)
    {
        return msdlApplyMapper.updateMsdlApply(msdlApply);
    }

    /**
     * 删除码商代理申请对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsdlApplyByIds(String ids)
    {
        return msdlApplyMapper.deleteMsdlApplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除码商代理申请信息
     * 
     * @param id 码商代理申请ID
     * @return 结果
     */
    @Override
    public int deleteMsdlApplyById(Long id)
    {
        return msdlApplyMapper.deleteMsdlApplyById(id);
    }
}
