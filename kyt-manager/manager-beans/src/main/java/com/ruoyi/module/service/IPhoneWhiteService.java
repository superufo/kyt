package com.ruoyi.module.service;

import com.ruoyi.module.domain.PhoneWhite;
import java.util.List;

/**
 * 手机白名单Service接口
 * 
 * @author ruoyi
 * @date 2019-10-07
 */
public interface IPhoneWhiteService 
{
    /**
     * 查询手机白名单
     * 
     * @param phone 手机白名单ID
     * @return 手机白名单
     */
    public PhoneWhite selectPhoneWhiteById(String phone);

    /**
     * 查询手机白名单列表
     * 
     * @param phoneWhite 手机白名单
     * @return 手机白名单集合
     */
    public List<PhoneWhite> selectPhoneWhiteList(PhoneWhite phoneWhite);

    /**
     * 新增手机白名单
     * 
     * @param phoneWhite 手机白名单
     * @return 结果
     */
    public int insertPhoneWhite(PhoneWhite phoneWhite);

    /**
     * 修改手机白名单
     * 
     * @param phoneWhite 手机白名单
     * @return 结果
     */
    public int updatePhoneWhite(PhoneWhite phoneWhite);

    /**
     * 批量删除手机白名单
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePhoneWhiteByIds(String ids);

    /**
     * 删除手机白名单信息
     * 
     * @param phone 手机白名单ID
     * @return 结果
     */
    public int deletePhoneWhiteById(String phone);
}
