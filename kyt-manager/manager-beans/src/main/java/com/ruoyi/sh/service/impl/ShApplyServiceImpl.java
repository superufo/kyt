package com.ruoyi.sh.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sh.mapper.ShApplyMapper;
import com.ruoyi.sh.domain.ShApply;
import com.ruoyi.sh.service.IShApplyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户审核Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
@Service
public class ShApplyServiceImpl implements IShApplyService 
{
    @Autowired
    private ShApplyMapper shApplyMapper;

    /**
     * 查询商户审核
     * 
     * @param id 商户审核ID
     * @return 商户审核
     */
    @Override
    public ShApply selectShApplyById(Long id)
    {
        return shApplyMapper.selectShApplyById(id);
    }

    /**
     * 查询商户审核列表
     * 
     * @param shApply 商户审核
     * @return 商户审核
     */
    @Override
    public List<ShApply> selectShApplyList(ShApply shApply)
    {
        return shApplyMapper.selectShApplyList(shApply);
    }

    /**
     * 新增商户审核
     * 
     * @param shApply 商户审核
     * @return 结果
     */
    @Override
    public int insertShApply(ShApply shApply)
    {
        return shApplyMapper.insertShApply(shApply);
    }

    /**
     * 修改商户审核
     * 
     * @param shApply 商户审核
     * @return 结果
     */
    @Override
    public int updateShApply(ShApply shApply)
    {
        return shApplyMapper.updateShApply(shApply);
    }

    /**
     * 删除商户审核对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteShApplyByIds(String ids)
    {
        return shApplyMapper.deleteShApplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户审核信息
     * 
     * @param id 商户审核ID
     * @return 结果
     */
    @Override
    public int deleteShApplyById(Long id)
    {
        return shApplyMapper.deleteShApplyById(id);
    }
}
