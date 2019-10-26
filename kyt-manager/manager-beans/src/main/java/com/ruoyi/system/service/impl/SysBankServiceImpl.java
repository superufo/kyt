package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysBankMapper;
import com.ruoyi.system.domain.SysBank;
import com.ruoyi.system.service.ISysBankService;
import com.ruoyi.common.core.text.Convert;

/**
 * 银行Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
@Service
public class SysBankServiceImpl implements ISysBankService 
{
    @Autowired
    private SysBankMapper sysBankMapper;

    /**
     * 查询银行
     * 
     * @param id 银行ID
     * @return 银行
     */
    @Override
    public SysBank selectSysBankById(Long id)
    {
        return sysBankMapper.selectSysBankById(id);
    }

    /**
     * 查询银行列表
     * 
     * @param sysBank 银行
     * @return 银行
     */
    @Override
    public List<SysBank> selectSysBankList(SysBank sysBank)
    {
        return sysBankMapper.selectSysBankList(sysBank);
    }

    /**
     * 新增银行
     * 
     * @param sysBank 银行
     * @return 结果
     */
    @Override
    public int insertSysBank(SysBank sysBank)
    {
        sysBank.setCreateTime(DateUtils.getNowDate());
        return sysBankMapper.insertSysBank(sysBank);
    }

    /**
     * 修改银行
     * 
     * @param sysBank 银行
     * @return 结果
     */
    @Override
    public int updateSysBank(SysBank sysBank)
    {
        sysBank.setUpdateTime(DateUtils.getNowDate());
        return sysBankMapper.updateSysBank(sysBank);
    }

    /**
     * 删除银行对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysBankByIds(String ids)
    {
        return sysBankMapper.deleteSysBankByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除银行信息
     * 
     * @param id 银行ID
     * @return 结果
     */
    @Override
    public int deleteSysBankById(Long id)
    {
        return sysBankMapper.deleteSysBankById(id);
    }
}
