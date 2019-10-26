package com.ruoyi.sh.service;

import com.ruoyi.sh.domain.ShAdjustAmount;
import java.util.List;

/**
 * 商户金额调整Service接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface IShAdjustAmountService 
{
    /**
     * 查询商户金额调整
     * 
     * @param id 商户金额调整ID
     * @return 商户金额调整
     */
    public ShAdjustAmount selectShAdjustAmountById(Long id);

    /**
     * 查询商户金额调整列表
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 商户金额调整集合
     */
    public List<ShAdjustAmount> selectShAdjustAmountList(ShAdjustAmount shAdjustAmount);

    /**
     * 新增商户金额调整
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 结果
     */
    public int insertShAdjustAmount(ShAdjustAmount shAdjustAmount);

    /**
     * 修改商户金额调整
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 结果
     */
    public int updateShAdjustAmount(ShAdjustAmount shAdjustAmount);

    /**
     * 批量删除商户金额调整
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShAdjustAmountByIds(String ids);

    /**
     * 删除商户金额调整信息
     * 
     * @param id 商户金额调整ID
     * @return 结果
     */
    public int deleteShAdjustAmountById(Long id);
}
