package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsAlipayCashcodeMapper;
import com.ruoyi.system.domain.MsAlipayCashcode;
import com.ruoyi.system.service.IMsAlipayCashcodeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsAlipayCashcodeServiceImpl implements IMsAlipayCashcodeService 
{
    @Autowired
    private MsAlipayCashcodeMapper msAlipayCashcodeMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsAlipayCashcode selectMsAlipayCashcodeById(Long id)
    {
        return msAlipayCashcodeMapper.selectMsAlipayCashcodeById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsAlipayCashcode> selectMsAlipayCashcodeList(MsAlipayCashcode msAlipayCashcode)
    {
        return msAlipayCashcodeMapper.selectMsAlipayCashcodeList(msAlipayCashcode);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsAlipayCashcode(MsAlipayCashcode msAlipayCashcode)
    {
        msAlipayCashcode.setCreateTime(DateUtils.getNowDate());
        return msAlipayCashcodeMapper.insertMsAlipayCashcode(msAlipayCashcode);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsAlipayCashcode(MsAlipayCashcode msAlipayCashcode)
    {
        msAlipayCashcode.setUpdateTime(DateUtils.getNowDate());
        return msAlipayCashcodeMapper.updateMsAlipayCashcode(msAlipayCashcode);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsAlipayCashcodeByIds(String ids)
    {
        return msAlipayCashcodeMapper.deleteMsAlipayCashcodeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsAlipayCashcodeById(Long id)
    {
        return msAlipayCashcodeMapper.deleteMsAlipayCashcodeById(id);
    }
}
