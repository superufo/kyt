package com.ruoyi.msdl.mapper;

import com.ruoyi.msdl.domain.MsdlApply;
import java.util.List;

/**
 * 码商代理申请Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
public interface MsdlApplyMapper 
{
    /**
     * 查询码商代理申请
     * 
     * @param id 码商代理申请ID
     * @return 码商代理申请
     */
    public MsdlApply selectMsdlApplyById(Long id);

    /**
     * 查询码商代理申请列表
     * 
     * @param msdlApply 码商代理申请
     * @return 码商代理申请集合
     */
    public List<MsdlApply> selectMsdlApplyList(MsdlApply msdlApply);

    /**
     * 新增码商代理申请
     * 
     * @param msdlApply 码商代理申请
     * @return 结果
     */
    public int insertMsdlApply(MsdlApply msdlApply);

    /**
     * 修改码商代理申请
     * 
     * @param msdlApply 码商代理申请
     * @return 结果
     */
    public int updateMsdlApply(MsdlApply msdlApply);

    /**
     * 删除码商代理申请
     * 
     * @param id 码商代理申请ID
     * @return 结果
     */
    public int deleteMsdlApplyById(Long id);

    /**
     * 批量删除码商代理申请
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsdlApplyByIds(String[] ids);
}
