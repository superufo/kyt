package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsWechatCashcodeMapper;
import com.ruoyi.system.domain.MsWechatCashcode;
import com.ruoyi.system.service.IMsWechatCashcodeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsWechatCashcodeServiceImpl implements IMsWechatCashcodeService 
{
    @Autowired
    private MsWechatCashcodeMapper msWechatCashcodeMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsWechatCashcode selectMsWechatCashcodeById(Long id)
    {
        return msWechatCashcodeMapper.selectMsWechatCashcodeById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsWechatCashcode> selectMsWechatCashcodeList(MsWechatCashcode msWechatCashcode)
    {
        return msWechatCashcodeMapper.selectMsWechatCashcodeList(msWechatCashcode);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsWechatCashcode(MsWechatCashcode msWechatCashcode)
    {
        msWechatCashcode.setCreateTime(DateUtils.getNowDate());
        return msWechatCashcodeMapper.insertMsWechatCashcode(msWechatCashcode);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsWechatCashcode(MsWechatCashcode msWechatCashcode)
    {
        msWechatCashcode.setUpdateTime(DateUtils.getNowDate());
        return msWechatCashcodeMapper.updateMsWechatCashcode(msWechatCashcode);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsWechatCashcodeByIds(String ids)
    {
        return msWechatCashcodeMapper.deleteMsWechatCashcodeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsWechatCashcodeById(Long id)
    {
        return msWechatCashcodeMapper.deleteMsWechatCashcodeById(id);
    }
}
