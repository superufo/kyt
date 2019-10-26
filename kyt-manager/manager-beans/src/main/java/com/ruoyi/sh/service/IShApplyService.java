package com.ruoyi.sh.service;

import com.ruoyi.sh.domain.ShApply;
import java.util.List;

/**
 * 商户审核Service接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface IShApplyService 
{
    /**
     * 查询商户审核
     * 
     * @param id 商户审核ID
     * @return 商户审核
     */
    public ShApply selectShApplyById(Long id);

    /**
     * 查询商户审核列表
     * 
     * @param shApply 商户审核
     * @return 商户审核集合
     */
    public List<ShApply> selectShApplyList(ShApply shApply);

    /**
     * 新增商户审核
     * 
     * @param shApply 商户审核
     * @return 结果
     */
    public int insertShApply(ShApply shApply);

    /**
     * 修改商户审核
     * 
     * @param shApply 商户审核
     * @return 结果
     */
    public int updateShApply(ShApply shApply);

    /**
     * 批量删除商户审核
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShApplyByIds(String ids);

    /**
     * 删除商户审核信息
     * 
     * @param id 商户审核ID
     * @return 结果
     */
    public int deleteShApplyById(Long id);
}
