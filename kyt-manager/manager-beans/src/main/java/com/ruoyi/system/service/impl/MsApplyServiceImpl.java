package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsApplyMapper;
import com.ruoyi.system.domain.MsApply;
import com.ruoyi.system.service.IMsApplyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsApplyServiceImpl implements IMsApplyService 
{
    @Autowired
    private MsApplyMapper msApplyMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsApply selectMsApplyById(Long id)
    {
        return msApplyMapper.selectMsApplyById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msApply 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsApply> selectMsApplyList(MsApply msApply)
    {
        return msApplyMapper.selectMsApplyList(msApply);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msApply 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsApply(MsApply msApply)
    {
        return msApplyMapper.insertMsApply(msApply);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msApply 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsApply(MsApply msApply)
    {
        return msApplyMapper.updateMsApply(msApply);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsApplyByIds(String ids)
    {
        return msApplyMapper.deleteMsApplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsApplyById(Long id)
    {
        return msApplyMapper.deleteMsApplyById(id);
    }
}
