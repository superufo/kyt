package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.MsAdjustAmount;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface MsAdjustAmountMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsAdjustAmount selectMsAdjustAmountById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsAdjustAmount> selectMsAdjustAmountList(MsAdjustAmount msAdjustAmount);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 结果
     */
    public int insertMsAdjustAmount(MsAdjustAmount msAdjustAmount);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 结果
     */
    public int updateMsAdjustAmount(MsAdjustAmount msAdjustAmount);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsAdjustAmountById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsAdjustAmountByIds(String[] ids);
}
