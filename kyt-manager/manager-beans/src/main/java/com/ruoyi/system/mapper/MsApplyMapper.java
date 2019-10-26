package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.MsApply;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface MsApplyMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsApply selectMsApplyById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msApply 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsApply> selectMsApplyList(MsApply msApply);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msApply 【请填写功能名称】
     * @return 结果
     */
    public int insertMsApply(MsApply msApply);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msApply 【请填写功能名称】
     * @return 结果
     */
    public int updateMsApply(MsApply msApply);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsApplyById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsApplyByIds(String[] ids);
}
