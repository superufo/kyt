package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 ms_wechat
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsWechat extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 码商编号 */
    @Excel(name = "码商编号")
    private Long merchantId;

    /** 码商账号 */
    @Excel(name = "码商账号")
    private String merchantAccount;

    /** 微信名称 */
    @Excel(name = "微信名称")
    private String wechatName;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    /** 最后交易日期 */
    @Excel(name = "最后交易日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastTradeTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMerchantId(Long merchantId) 
    {
        this.merchantId = merchantId;
    }

    public Long getMerchantId() 
    {
        return merchantId;
    }
    public void setMerchantAccount(String merchantAccount) 
    {
        this.merchantAccount = merchantAccount;
    }

    public String getMerchantAccount() 
    {
        return merchantAccount;
    }
    public void setWechatName(String wechatName) 
    {
        this.wechatName = wechatName;
    }

    public String getWechatName() 
    {
        return wechatName;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }
    public void setLastTradeTime(Date lastTradeTime) 
    {
        this.lastTradeTime = lastTradeTime;
    }

    public Date getLastTradeTime() 
    {
        return lastTradeTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("merchantId", getMerchantId())
            .append("merchantAccount", getMerchantAccount())
            .append("wechatName", getWechatName())
            .append("state", getState())
            .append("lastTradeTime", getLastTradeTime())
            .toString();
    }
}
