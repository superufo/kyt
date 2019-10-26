package com.ruoyi.system.service;

import com.ruoyi.system.domain.MsOrder;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public interface IMsOrderService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MsOrder selectMsOrderById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msOrder 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MsOrder> selectMsOrderList(MsOrder msOrder);

    /**
     * 新增【请填写功能名称】
     * 
     * @param msOrder 【请填写功能名称】
     * @return 结果
     */
    public int insertMsOrder(MsOrder msOrder);

    /**
     * 修改【请填写功能名称】
     * 
     * @param msOrder 【请填写功能名称】
     * @return 结果
     */
    public int updateMsOrder(MsOrder msOrder);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsOrderByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMsOrderById(String id);
}
