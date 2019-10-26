package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.MsAlipayMapper;
import com.ruoyi.system.domain.MsAlipay;
import com.ruoyi.system.service.IMsAlipayService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
@Service
public class MsAlipayServiceImpl implements IMsAlipayService 
{
    @Autowired
    private MsAlipayMapper msAlipayMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MsAlipay selectMsAlipayById(Long id)
    {
        return msAlipayMapper.selectMsAlipayById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MsAlipay> selectMsAlipayList(MsAlipay msAlipay)
    {
        return msAlipayMapper.selectMsAlipayList(msAlipay);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMsAlipay(MsAlipay msAlipay)
    {
        return msAlipayMapper.insertMsAlipay(msAlipay);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param msAlipay 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMsAlipay(MsAlipay msAlipay)
    {
        return msAlipayMapper.updateMsAlipay(msAlipay);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMsAlipayByIds(String ids)
    {
        return msAlipayMapper.deleteMsAlipayByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMsAlipayById(Long id)
    {
        return msAlipayMapper.deleteMsAlipayById(id);
    }
}
