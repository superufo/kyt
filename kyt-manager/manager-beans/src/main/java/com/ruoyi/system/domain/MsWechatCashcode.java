package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 ms_wechat_cashcode
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsWechatCashcode extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 码商编号 */
    @Excel(name = "码商编号")
    private String merchantId;

    /** 微信账号 */
    @Excel(name = "微信账号")
    private String wechat;

    /** 类型  1 启用 0 禁用 */
    @Excel(name = "类型  1 启用 0 禁用")
    private Integer state;

    /** 金额 */
    @Excel(name = "金额")
    private Double amount;

    /** 收款码 */
    @Excel(name = "收款码")
    private String code;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMerchantId(String merchantId) 
    {
        this.merchantId = merchantId;
    }

    public String getMerchantId() 
    {
        return merchantId;
    }
    public void setWechat(String wechat) 
    {
        this.wechat = wechat;
    }

    public String getWechat() 
    {
        return wechat;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }
    public void setAmount(Double amount) 
    {
        this.amount = amount;
    }

    public Double getAmount() 
    {
        return amount;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("merchantId", getMerchantId())
            .append("wechat", getWechat())
            .append("state", getState())
            .append("amount", getAmount())
            .append("code", getCode())
            .append("createTime", getCreateTime())
            .toString();
    }
}
