package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysBankno;
import java.util.List;

/**
 * 银行卡Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
public interface SysBanknoMapper 
{
    /**
     * 查询银行卡
     * 
     * @param id 银行卡ID
     * @return 银行卡
     */
    public SysBankno selectSysBanknoById(Long id);

    /**
     * 查询银行卡列表
     * 
     * @param sysBankno 银行卡
     * @return 银行卡集合
     */
    public List<SysBankno> selectSysBanknoList(SysBankno sysBankno);

    /**
     * 新增银行卡
     * 
     * @param sysBankno 银行卡
     * @return 结果
     */
    public int insertSysBankno(SysBankno sysBankno);

    /**
     * 修改银行卡
     * 
     * @param sysBankno 银行卡
     * @return 结果
     */
    public int updateSysBankno(SysBankno sysBankno);

    /**
     * 删除银行卡
     * 
     * @param id 银行卡ID
     * @return 结果
     */
    public int deleteSysBanknoById(Long id);

    /**
     * 批量删除银行卡
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysBanknoByIds(String[] ids);
}
