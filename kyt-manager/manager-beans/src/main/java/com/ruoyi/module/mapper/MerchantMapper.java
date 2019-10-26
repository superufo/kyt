package com.ruoyi.module.mapper;

import com.ruoyi.module.domain.Merchant;
import java.util.List;

/**
 * 商户名单Mapper接口
 * 
 * @author ruoyi
 * @date 2019-10-13
 */
public interface MerchantMapper 
{
    /**
     * 查询商户名单
     * 
     * @param id 商户名单ID
     * @return 商户名单
     */
    public Merchant selectMerchantById(Long id);

    /**
     * 查询商户名单列表
     * 
     * @param merchant 商户名单
     * @return 商户名单集合
     */
    public List<Merchant> selectMerchantList(Merchant merchant);

    /**
     * 新增商户名单
     * 
     * @param merchant 商户名单
     * @return 结果
     */
    public int insertMerchant(Merchant merchant);

    /**
     * 修改商户名单
     * 
     * @param merchant 商户名单
     * @return 结果
     */
    public int updateMerchant(Merchant merchant);

    /**
     * 删除商户名单
     * 
     * @param id 商户名单ID
     * @return 结果
     */
    public int deleteMerchantById(Long id);

    /**
     * 批量删除商户名单
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMerchantByIds(String[] ids);
}
