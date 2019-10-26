package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysBank;
import java.util.List;

/**
 * 银行Service接口
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
public interface ISysBankService 
{
    /**
     * 查询银行
     * 
     * @param id 银行ID
     * @return 银行
     */
    public SysBank selectSysBankById(Long id);

    /**
     * 查询银行列表
     * 
     * @param sysBank 银行
     * @return 银行集合
     */
    public List<SysBank> selectSysBankList(SysBank sysBank);

    /**
     * 新增银行
     * 
     * @param sysBank 银行
     * @return 结果
     */
    public int insertSysBank(SysBank sysBank);

    /**
     * 修改银行
     * 
     * @param sysBank 银行
     * @return 结果
     */
    public int updateSysBank(SysBank sysBank);

    /**
     * 批量删除银行
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysBankByIds(String ids);

    /**
     * 删除银行信息
     * 
     * @param id 银行ID
     * @return 结果
     */
    public int deleteSysBankById(Long id);
}
