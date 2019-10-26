package com.ruoyi.system.service;

import com.ruoyi.system.domain.MsAlipay;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface IMsAlipayService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsAlipay selectMsAlipayById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsAlipay> selectMsAlipayList(MsAlipay msAlipay);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 结果
     */
    public int insertMsAlipay(MsAlipay msAlipay);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 结果
     */
    public int updateMsAlipay(MsAlipay msAlipay);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsAlipayByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsAlipayById(Long id);
}
