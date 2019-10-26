package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsWechatMapper;
import com.ruoyi.system.domain.MsWechat;
import com.ruoyi.system.service.IMsWechatService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsWechatServiceImpl implements IMsWechatService 
{
    @Autowired
    private MsWechatMapper msWechatMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsWechat selectMsWechatById(Long id)
    {
        return msWechatMapper.selectMsWechatById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msWechat 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsWechat> selectMsWechatList(MsWechat msWechat)
    {
        return msWechatMapper.selectMsWechatList(msWechat);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msWechat 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsWechat(MsWechat msWechat)
    {
        return msWechatMapper.insertMsWechat(msWechat);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msWechat 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsWechat(MsWechat msWechat)
    {
        return msWechatMapper.updateMsWechat(msWechat);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsWechatByIds(String ids)
    {
        return msWechatMapper.deleteMsWechatByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsWechatById(Long id)
    {
        return msWechatMapper.deleteMsWechatById(id);
    }
}
