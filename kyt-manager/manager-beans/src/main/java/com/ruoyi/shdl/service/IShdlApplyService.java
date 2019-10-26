package com.ruoyi.shdl.service;

import com.ruoyi.shdl.domain.ShdlApply;
import java.util.List;

/**
 * 码商代理申请Service接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface IShdlApplyService 
{
    /**
     * 查询码商代理申请
     * 
     * @param id 码商代理申请ID
     * @return 码商代理申请
     */
    public ShdlApply selectShdlApplyById(Long id);

    /**
     * 查询码商代理申请列表
     * 
     * @param shdlApply 码商代理申请
     * @return 码商代理申请集合
     */
    public List<ShdlApply> selectShdlApplyList(ShdlApply shdlApply);

    /**
     * 新增码商代理申请
     * 
     * @param shdlApply 码商代理申请
     * @return 结果
     */
    public int insertShdlApply(ShdlApply shdlApply);

    /**
     * 修改码商代理申请
     * 
     * @param shdlApply 码商代理申请
     * @return 结果
     */
    public int updateShdlApply(ShdlApply shdlApply);

    /**
     * 批量删除码商代理申请
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShdlApplyByIds(String ids);

    /**
     * 删除码商代理申请信息
     * 
     * @param id 码商代理申请ID
     * @return 结果
     */
    public int deleteShdlApplyById(Long id);
}
