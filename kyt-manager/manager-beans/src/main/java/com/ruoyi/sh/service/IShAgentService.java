package com.ruoyi.sh.service;

import com.ruoyi.sh.domain.ShAgent;
import java.util.List;

/**
 * 商户代理Service接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface IShAgentService 
{
    /**
     * 查询商户代理
     * 
     * @param id 商户代理ID
     * @return 商户代理
     */
    public ShAgent selectShAgentById(Long id);

    /**
     * 查询商户代理列表
     * 
     * @param shAgent 商户代理
     * @return 商户代理集合
     */
    public List<ShAgent> selectShAgentList(ShAgent shAgent);

    /**
     * 新增商户代理
     * 
     * @param shAgent 商户代理
     * @return 结果
     */
    public int insertShAgent(ShAgent shAgent);

    /**
     * 修改商户代理
     * 
     * @param shAgent 商户代理
     * @return 结果
     */
    public int updateShAgent(ShAgent shAgent);

    /**
     * 批量删除商户代理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShAgentByIds(String ids);

    /**
     * 删除商户代理信息
     * 
     * @param id 商户代理ID
     * @return 结果
     */
    public int deleteShAgentById(Long id);
}
