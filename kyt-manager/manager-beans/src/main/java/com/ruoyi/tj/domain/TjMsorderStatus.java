package com.ruoyi.tj.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商户订单状态统计对象 tj_msorder_status
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public class TjMsorderStatus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 码商编号 */
    private Long msMerchant;

    /** 类型 */
    private Long timeLength;

    /** 时间长度(分钟) */
    private Integer tradeType;

    /** 总订单数 */
    @Excel(name = "总订单数")
    private Long totalOrderCount;

    /** 超时订单数 */
    @Excel(name = "超时订单数")
    private Long orderTimeout;

    /** 订单总金额 */
    @Excel(name = "订单总金额")
    private Double orderAmount;

    /** 超时订单总金额 */
    @Excel(name = "超时订单总金额")
    private String orderTimeoutAmount;

    public void setMsMerchant(Long msMerchant) 
    {
        this.msMerchant = msMerchant;
    }

    public Long getMsMerchant() 
    {
        return msMerchant;
    }
    public void setTimeLength(Long timeLength) 
    {
        this.timeLength = timeLength;
    }

    public Long getTimeLength() 
    {
        return timeLength;
    }
    public void setTradeType(Integer tradeType) 
    {
        this.tradeType = tradeType;
    }

    public Integer getTradeType() 
    {
        return tradeType;
    }
    public void setTotalOrderCount(Long totalOrderCount) 
    {
        this.totalOrderCount = totalOrderCount;
    }

    public Long getTotalOrderCount() 
    {
        return totalOrderCount;
    }
    public void setOrderTimeout(Long orderTimeout) 
    {
        this.orderTimeout = orderTimeout;
    }

    public Long getOrderTimeout() 
    {
        return orderTimeout;
    }
    public void setOrderAmount(Double orderAmount) 
    {
        this.orderAmount = orderAmount;
    }

    public Double getOrderAmount() 
    {
        return orderAmount;
    }
    public void setOrderTimeoutAmount(String orderTimeoutAmount) 
    {
        this.orderTimeoutAmount = orderTimeoutAmount;
    }

    public String getOrderTimeoutAmount() 
    {
        return orderTimeoutAmount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("msMerchant", getMsMerchant())
            .append("timeLength", getTimeLength())
            .append("tradeType", getTradeType())
            .append("totalOrderCount", getTotalOrderCount())
            .append("orderTimeout", getOrderTimeout())
            .append("orderAmount", getOrderAmount())
            .append("orderTimeoutAmount", getOrderTimeoutAmount())
            .toString();
    }
}
