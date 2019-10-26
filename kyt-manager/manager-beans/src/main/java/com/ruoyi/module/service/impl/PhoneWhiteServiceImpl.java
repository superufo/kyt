package com.ruoyi.module.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.module.mapper.PhoneWhiteMapper;
import com.ruoyi.module.domain.PhoneWhite;
import com.ruoyi.module.service.IPhoneWhiteService;
import com.ruoyi.common.core.text.Convert;

/**
 * 手机白名单Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-07
 */
@Service
@DataSource(value = DataSourceType.SLAVE)
public class PhoneWhiteServiceImpl implements IPhoneWhiteService 
{
    @Autowired
    private PhoneWhiteMapper phoneWhiteMapper;

    /**
     * 查询手机白名单
     * 
     * @param phone 手机白名单ID
     * @return 手机白名单
     */
    @Override
    public PhoneWhite selectPhoneWhiteById(String phone)
    {
        return phoneWhiteMapper.selectPhoneWhiteById(phone);
    }

    /**
     * 查询手机白名单列表
     * 
     * @param phoneWhite 手机白名单
     * @return 手机白名单
     */
    @Override
    public List<PhoneWhite> selectPhoneWhiteList(PhoneWhite phoneWhite)
    {
        return phoneWhiteMapper.selectPhoneWhiteList(phoneWhite);
    }

    /**
     * 新增手机白名单
     * 
     * @param phoneWhite 手机白名单
     * @return 结果
     */
    @Override
    public int insertPhoneWhite(PhoneWhite phoneWhite)
    {
        return phoneWhiteMapper.insertPhoneWhite(phoneWhite);
    }

    /**
     * 修改手机白名单
     * 
     * @param phoneWhite 手机白名单
     * @return 结果
     */
    @Override
    public int updatePhoneWhite(PhoneWhite phoneWhite)
    {
        return phoneWhiteMapper.updatePhoneWhite(phoneWhite);
    }

    /**
     * 删除手机白名单对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePhoneWhiteByIds(String ids)
    {
        return phoneWhiteMapper.deletePhoneWhiteByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除手机白名单信息
     * 
     * @param phone 手机白名单ID
     * @return 结果
     */
    @Override
    public int deletePhoneWhiteById(String phone)
    {
        return phoneWhiteMapper.deletePhoneWhiteById(phone);
    }
}
