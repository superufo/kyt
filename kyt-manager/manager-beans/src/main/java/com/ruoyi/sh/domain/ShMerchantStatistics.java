package com.ruoyi.sh.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商户返佣统计对象 sh_merchant_statistics
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShMerchantStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long serverId;

    /** 码商类型 */
    @Excel(name = "码商类型")
    private Integer serverType;

    /** 余额 */
    @Excel(name = "余额")
    private Double amount;

    /** 冻结金额 */
    @Excel(name = "冻结金额")
    private Double freezeAmount;

    /** 微信接单量 */
    @Excel(name = "微信接单量")
    private Long wechatCount;

    /** 微信成功订单量 */
    @Excel(name = "微信成功订单量")
    private Long wechatSuccessCount;

    /** 微信成功金额 */
    @Excel(name = "微信成功金额")
    private Double wechatSuccessAmount;

    /** 支付宝接单量 */
    @Excel(name = "支付宝接单量")
    private Long alipayCout;

    /** 微信成功订单量 */
    @Excel(name = "微信成功订单量")
    private Long alipaySuccessCount;

    /** 微信成功金额 */
    @Excel(name = "微信成功金额")
    private Double alipaySuccessAmount;

    public void setServerId(Long serverId) 
    {
        this.serverId = serverId;
    }

    public Long getServerId() 
    {
        return serverId;
    }
    public void setServerType(Integer serverType) 
    {
        this.serverType = serverType;
    }

    public Integer getServerType() 
    {
        return serverType;
    }
    public void setAmount(Double amount) 
    {
        this.amount = amount;
    }

    public Double getAmount() 
    {
        return amount;
    }
    public void setFreezeAmount(Double freezeAmount) 
    {
        this.freezeAmount = freezeAmount;
    }

    public Double getFreezeAmount() 
    {
        return freezeAmount;
    }
    public void setWechatCount(Long wechatCount) 
    {
        this.wechatCount = wechatCount;
    }

    public Long getWechatCount() 
    {
        return wechatCount;
    }
    public void setWechatSuccessCount(Long wechatSuccessCount) 
    {
        this.wechatSuccessCount = wechatSuccessCount;
    }

    public Long getWechatSuccessCount() 
    {
        return wechatSuccessCount;
    }
    public void setWechatSuccessAmount(Double wechatSuccessAmount) 
    {
        this.wechatSuccessAmount = wechatSuccessAmount;
    }

    public Double getWechatSuccessAmount() 
    {
        return wechatSuccessAmount;
    }
    public void setAlipayCout(Long alipayCout) 
    {
        this.alipayCout = alipayCout;
    }

    public Long getAlipayCout() 
    {
        return alipayCout;
    }
    public void setAlipaySuccessCount(Long alipaySuccessCount) 
    {
        this.alipaySuccessCount = alipaySuccessCount;
    }

    public Long getAlipaySuccessCount() 
    {
        return alipaySuccessCount;
    }
    public void setAlipaySuccessAmount(Double alipaySuccessAmount) 
    {
        this.alipaySuccessAmount = alipaySuccessAmount;
    }

    public Double getAlipaySuccessAmount() 
    {
        return alipaySuccessAmount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("serverId", getServerId())
            .append("serverType", getServerType())
            .append("amount", getAmount())
            .append("freezeAmount", getFreezeAmount())
            .append("wechatCount", getWechatCount())
            .append("wechatSuccessCount", getWechatSuccessCount())
            .append("wechatSuccessAmount", getWechatSuccessAmount())
            .append("alipayCout", getAlipayCout())
            .append("alipaySuccessCount", getAlipaySuccessCount())
            .append("alipaySuccessAmount", getAlipaySuccessAmount())
            .toString();
    }
}
