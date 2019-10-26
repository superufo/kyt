package com.ruoyi.module.service.impl;

import java.util.List;
import java.util.UUID;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.utility.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.module.mapper.MerchantMapper;
import com.ruoyi.module.domain.Merchant;
import com.ruoyi.module.service.IMerchantService;
import com.ruoyi.common.core.text.Convert;

/**
 * 商户名单Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-10-13
 */
@Service
@DataSource(value = DataSourceType.SLAVE)
public class MerchantServiceImpl implements IMerchantService 
{
    @Autowired
    private MerchantMapper merchantMapper;

    /**
     * 查询商户名单
     * 
     * @param id 商户名单ID
     * @return 商户名单
     */
    @Override
    public Merchant selectMerchantById(Long id)
    {
        return merchantMapper.selectMerchantById(id);
    }

    /**
     * 查询商户名单列表
     * 
     * @param merchant 商户名单
     * @return 商户名单
     */
    @Override
    public List<Merchant> selectMerchantList(Merchant merchant)
    {
        return merchantMapper.selectMerchantList(merchant);
    }

    /**
     * 新增商户名单
     * 
     * @param merchant 商户名单
     * @return 结果
     */
    @Override
    public int insertMerchant(Merchant merchant)
    {
        try {
            String mchId = UUID.randomUUID().toString().replace("-", "");
            String apiKey =  UUID.randomUUID().toString().replace("-", "");
            merchant.setMchId("kyt"+MD5Util.Bit16(mchId));
            merchant.setApiKey(MD5Util.Bit32(apiKey));
        } catch (Exception e) {
            e.printStackTrace();
        }
        merchant.setCreateTime(DateUtils.getNowDate());
        return merchantMapper.insertMerchant(merchant);
    }

    /**
     * 修改商户名单
     * 
     * @param merchant 商户名单
     * @return 结果
     */
    @Override
    public int updateMerchant(Merchant merchant)
    {
        merchant.setUpdateTime(DateUtils.getNowDate());
        return merchantMapper.updateMerchant(merchant);
    }

    /**
     * 删除商户名单对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMerchantByIds(String ids)
    {
        return merchantMapper.deleteMerchantByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商户名单信息
     * 
     * @param id 商户名单ID
     * @return 结果
     */
    @Override
    public int deleteMerchantById(Long id)
    {
        return merchantMapper.deleteMerchantById(id);
    }
}
