package com.ruoyi.system.service;

import com.ruoyi.system.domain.MsMerchant;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface IMsMerchantService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsMerchant selectMsMerchantById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msMerchant 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsMerchant> selectMsMerchantList(MsMerchant msMerchant);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msMerchant 【请填写功能名称】
     * @return 结果
     */
    public int insertMsMerchant(MsMerchant msMerchant);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msMerchant 【请填写功能名称】
     * @return 结果
     */
    public int updateMsMerchant(MsMerchant msMerchant);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsMerchantByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsMerchantById(Long id);
}
