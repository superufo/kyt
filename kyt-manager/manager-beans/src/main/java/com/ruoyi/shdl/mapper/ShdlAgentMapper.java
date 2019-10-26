package com.ruoyi.shdl.mapper;

import com.ruoyi.shdl.domain.ShdlAgent;
import java.util.List;

/**
 * 码商代理Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public interface ShdlAgentMapper 
{
    /**
     * 查询码商代理
     * 
     * @param id 码商代理ID
     * @return 码商代理
     */
    public ShdlAgent selectShdlAgentById(Long id);

    /**
     * 查询码商代理列表
     * 
     * @param shdlAgent 码商代理
     * @return 码商代理集合
     */
    public List<ShdlAgent> selectShdlAgentList(ShdlAgent shdlAgent);

    /**
     * 新增码商代理
     * 
     * @param shdlAgent 码商代理
     * @return 结果
     */
    public int insertShdlAgent(ShdlAgent shdlAgent);

    /**
     * 修改码商代理
     * 
     * @param shdlAgent 码商代理
     * @return 结果
     */
    public int updateShdlAgent(ShdlAgent shdlAgent);

    /**
     * 删除码商代理
     * 
     * @param id 码商代理ID
     * @return 结果
     */
    public int deleteShdlAgentById(Long id);

    /**
     * 批量删除码商代理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteShdlAgentByIds(String[] ids);
}
