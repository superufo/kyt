package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.MsWechatCashcode;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface MsWechatCashcodeMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsWechatCashcode selectMsWechatCashcodeById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsWechatCashcode> selectMsWechatCashcodeList(MsWechatCashcode msWechatCashcode);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 结果
     */
    public int insertMsWechatCashcode(MsWechatCashcode msWechatCashcode);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msWechatCashcode 【请填写功能名称】
     * @return 结果
     */
    public int updateMsWechatCashcode(MsWechatCashcode msWechatCashcode);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsWechatCashcodeById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsWechatCashcodeByIds(String[] ids);
}
