package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 ms_statistics
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Date date;

    /** 码商编号 */
    @Excel(name = "码商编号")
    private String merchantId;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private Integer payType;

    /** 总订单数量 */
    @Excel(name = "总订单数量")
    private Long orderCount;

    /** 支付成功订单 */
    @Excel(name = "支付成功订单")
    private String successCount;

    /** 总订单金额 */
    @Excel(name = "总订单金额")
    private String amount;

    /** 成功订单金额 */
    @Excel(name = "成功订单金额")
    private String successAmount;

    /** 成功率 */
    @Excel(name = "成功率")
    private String successRate;

    public void setDate(Date date) 
    {
        this.date = date;
    }

    public Date getDate() 
    {
        return date;
    }
    public void setMerchantId(String merchantId) 
    {
        this.merchantId = merchantId;
    }

    public String getMerchantId() 
    {
        return merchantId;
    }
    public void setPayType(Integer payType) 
    {
        this.payType = payType;
    }

    public Integer getPayType() 
    {
        return payType;
    }
    public void setOrderCount(Long orderCount) 
    {
        this.orderCount = orderCount;
    }

    public Long getOrderCount() 
    {
        return orderCount;
    }
    public void setSuccessCount(String successCount) 
    {
        this.successCount = successCount;
    }

    public String getSuccessCount() 
    {
        return successCount;
    }
    public void setAmount(String amount) 
    {
        this.amount = amount;
    }

    public String getAmount() 
    {
        return amount;
    }
    public void setSuccessAmount(String successAmount) 
    {
        this.successAmount = successAmount;
    }

    public String getSuccessAmount() 
    {
        return successAmount;
    }
    public void setSuccessRate(String successRate) 
    {
        this.successRate = successRate;
    }

    public String getSuccessRate() 
    {
        return successRate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("date", getDate())
            .append("merchantId", getMerchantId())
            .append("payType", getPayType())
            .append("orderCount", getOrderCount())
            .append("successCount", getSuccessCount())
            .append("amount", getAmount())
            .append("successAmount", getSuccessAmount())
            .append("successRate", getSuccessRate())
            .toString();
    }
}
