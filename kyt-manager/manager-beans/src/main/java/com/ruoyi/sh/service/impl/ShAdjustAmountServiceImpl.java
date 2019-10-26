package com.ruoyi.sh.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sh.mapper.ShAdjustAmountMapper;
import com.ruoyi.sh.domain.ShAdjustAmount;
import com.ruoyi.sh.service.IShAdjustAmountService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户金额调整Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShAdjustAmountServiceImpl implements IShAdjustAmountService 
{
    @Autowired
    private ShAdjustAmountMapper shAdjustAmountMapper;

    /**
     * 查询商户金额调整
     * 
     * @param id 商户金额调整ID
     * @return 商户金额调整
     */
    @Override
    public ShAdjustAmount selectShAdjustAmountById(Long id)
    {
        return shAdjustAmountMapper.selectShAdjustAmountById(id);
    }

    /**
     * 查询商户金额调整列表
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 商户金额调整
     */
    @Override
    public List<ShAdjustAmount> selectShAdjustAmountList(ShAdjustAmount shAdjustAmount)
    {
        return shAdjustAmountMapper.selectShAdjustAmountList(shAdjustAmount);
    }

    /**
     * 新增商户金额调整
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 结果
     */
    @Override
    public int insertShAdjustAmount(ShAdjustAmount shAdjustAmount)
    {
        return shAdjustAmountMapper.insertShAdjustAmount(shAdjustAmount);
    }

    /**
     * 修改商户金额调整
     * 
     * @param shAdjustAmount 商户金额调整
     * @return 结果
     */
    @Override
    public int updateShAdjustAmount(ShAdjustAmount shAdjustAmount)
    {
        return shAdjustAmountMapper.updateShAdjustAmount(shAdjustAmount);
    }

    /**
     * 删除商户金额调整对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShAdjustAmountByIds(String ids)
    {
        return shAdjustAmountMapper.deleteShAdjustAmountByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户金额调整信息
     * 
     * @param id 商户金额调整ID
     * @return 结果
     */
    @Override
    public int deleteShAdjustAmountById(Long id)
    {
        return shAdjustAmountMapper.deleteShAdjustAmountById(id);
    }
}
