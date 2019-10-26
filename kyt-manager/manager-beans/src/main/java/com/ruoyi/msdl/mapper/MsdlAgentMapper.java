package com.ruoyi.msdl.mapper;

import com.ruoyi.msdl.domain.MsdlAgent;
import java.util.List;

/**
 * 码商代理Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
public interface MsdlAgentMapper 
{
    /**
     * 查询码商代理
     * 
     * @param id 码商代理ID
     * @return 码商代理
     */
    public MsdlAgent selectMsdlAgentById(Long id);

    /**
     * 查询码商代理列表
     * 
     * @param msdlAgent 码商代理
     * @return 码商代理集合
     */
    public List<MsdlAgent> selectMsdlAgentList(MsdlAgent msdlAgent);

    /**
     * 新增码商代理
     * 
     * @param msdlAgent 码商代理
     * @return 结果
     */
    public int insertMsdlAgent(MsdlAgent msdlAgent);

    /**
     * 修改码商代理
     * 
     * @param msdlAgent 码商代理
     * @return 结果
     */
    public int updateMsdlAgent(MsdlAgent msdlAgent);

    /**
     * 删除码商代理
     * 
     * @param id 码商代理ID
     * @return 结果
     */
    public int deleteMsdlAgentById(Long id);

    /**
     * 批量删除码商代理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMsdlAgentByIds(String[] ids);
}
