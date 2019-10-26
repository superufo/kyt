package com.ruoyi.system.service;

import com.ruoyi.system.domain.MsAlipayCashcode;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface IMsAlipayCashcodeService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsAlipayCashcode selectMsAlipayCashcodeById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsAlipayCashcode> selectMsAlipayCashcodeList(MsAlipayCashcode msAlipayCashcode);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 结果
     */
    public int insertMsAlipayCashcode(MsAlipayCashcode msAlipayCashcode);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAlipayCashcode 【请填写功能名称】
     * @return 结果
     */
    public int updateMsAlipayCashcode(MsAlipayCashcode msAlipayCashcode);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsAlipayCashcodeByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsAlipayCashcodeById(Long id);
}
