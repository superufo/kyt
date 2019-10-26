package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysBanknoMapper;
import com.ruoyi.system.domain.SysBankno;
import com.ruoyi.system.service.ISysBanknoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 银行卡Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
@Service
public class SysBanknoServiceImpl implements ISysBanknoService 
{
    @Autowired
    private SysBanknoMapper sysBanknoMapper;

    /**
     * 查询银行卡
     * 
     * @param id 银行卡ID
     * @return 银行卡
     */
    @Override
    public SysBankno selectSysBanknoById(Long id)
    {
        return sysBanknoMapper.selectSysBanknoById(id);
    }

    /**
     * 查询银行卡列表
     * 
     * @param sysBankno 银行卡
     * @return 银行卡
     */
    @Override
    public List<SysBankno> selectSysBanknoList(SysBankno sysBankno)
    {
        return sysBanknoMapper.selectSysBanknoList(sysBankno);
    }

    /**
     * 新增银行卡
     * 
     * @param sysBankno 银行卡
     * @return 结果
     */
    @Override
    public int insertSysBankno(SysBankno sysBankno)
    {
        sysBankno.setCreateTime(DateUtils.getNowDate());
        return sysBanknoMapper.insertSysBankno(sysBankno);
    }

    /**
     * 修改银行卡
     * 
     * @param sysBankno 银行卡
     * @return 结果
     */
    @Override
    public int updateSysBankno(SysBankno sysBankno)
    {
        sysBankno.setUpdateTime(DateUtils.getNowDate());
        return sysBanknoMapper.updateSysBankno(sysBankno);
    }

    /**
     * 删除银行卡对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysBanknoByIds(String ids)
    {
        return sysBanknoMapper.deleteSysBanknoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除银行卡信息
     * 
     * @param id 银行卡ID
     * @return 结果
     */
    @Override
    public int deleteSysBanknoById(Long id)
    {
        return sysBanknoMapper.deleteSysBanknoById(id);
    }
}
