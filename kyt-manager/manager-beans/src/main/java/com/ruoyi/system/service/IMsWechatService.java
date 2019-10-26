package com.ruoyi.system.service;

import com.ruoyi.system.domain.MsWechat;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface IMsWechatService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsWechat selectMsWechatById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msWechat 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsWechat> selectMsWechatList(MsWechat msWechat);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msWechat 【请填写功能名称】
     * @return 结果
     */
    public int insertMsWechat(MsWechat msWechat);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msWechat 【请填写功能名称】
     * @return 结果
     */
    public int updateMsWechat(MsWechat msWechat);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsWechatByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsWechatById(Long id);
}
