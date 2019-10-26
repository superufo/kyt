package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsAdjustAmountMapper;
import com.ruoyi.system.domain.MsAdjustAmount;
import com.ruoyi.system.service.IMsAdjustAmountService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsAdjustAmountServiceImpl implements IMsAdjustAmountService 
{
    @Autowired
    private MsAdjustAmountMapper msAdjustAmountMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsAdjustAmount selectMsAdjustAmountById(Long id)
    {
        return msAdjustAmountMapper.selectMsAdjustAmountById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsAdjustAmount> selectMsAdjustAmountList(MsAdjustAmount msAdjustAmount)
    {
        return msAdjustAmountMapper.selectMsAdjustAmountList(msAdjustAmount);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsAdjustAmount(MsAdjustAmount msAdjustAmount)
    {
        return msAdjustAmountMapper.insertMsAdjustAmount(msAdjustAmount);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAdjustAmount 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsAdjustAmount(MsAdjustAmount msAdjustAmount)
    {
        return msAdjustAmountMapper.updateMsAdjustAmount(msAdjustAmount);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsAdjustAmountByIds(String ids)
    {
        return msAdjustAmountMapper.deleteMsAdjustAmountByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsAdjustAmountById(Long id)
    {
        return msAdjustAmountMapper.deleteMsAdjustAmountById(id);
    }
}
