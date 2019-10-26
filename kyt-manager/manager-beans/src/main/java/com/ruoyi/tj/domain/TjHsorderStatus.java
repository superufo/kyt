package com.ruoyi.tj.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商户订单状态统计对象 tj_hsorder_status
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public class TjHsorderStatus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商户编号 */
    private Long serverId;

    /** 交易类型 */
    private Integer tradeType;

    /** 总订单数 */
    @Excel(name = "总订单数")
    private Long tradeCount;

    /** 空单率 */
    @Excel(name = "空单率")
    private Double nullRate;

    /** 码商已完成 */
    @Excel(name = "码商已完成")
    private Long msFinishOrder;

    /** 系统完成 */
    @Excel(name = "系统完成")
    private Long systemFinishOrder;

    /** 超时未到账 */
    @Excel(name = "超时未到账")
    private Long timeoutOrder;

    /** 超时未付款 */
    @Excel(name = "超时未付款")
    private Long timeoutOrderNopay;

    /** 会员已确认付款 */
    @Excel(name = "会员已确认付款")
    private Long orderComfirm;

    /** 等待接单 */
    @Excel(name = "等待接单")
    private Long orderWaiting;

    /** 已接单 */
    @Excel(name = "已接单")
    private Long orderReceive;

    /** 接单超时 */
    @Excel(name = "接单超时")
    private Long orderWaitingTimeout;

    /** 失败已关闭 */
    @Excel(name = "失败已关闭")
    private Long orderClose;

    public void setServerId(Long serverId) 
    {
        this.serverId = serverId;
    }

    public Long getServerId() 
    {
        return serverId;
    }
    public void setTradeType(Integer tradeType) 
    {
        this.tradeType = tradeType;
    }

    public Integer getTradeType() 
    {
        return tradeType;
    }
    public void setTradeCount(Long tradeCount) 
    {
        this.tradeCount = tradeCount;
    }

    public Long getTradeCount() 
    {
        return tradeCount;
    }
    public void setNullRate(Double nullRate) 
    {
        this.nullRate = nullRate;
    }

    public Double getNullRate() 
    {
        return nullRate;
    }
    public void setMsFinishOrder(Long msFinishOrder) 
    {
        this.msFinishOrder = msFinishOrder;
    }

    public Long getMsFinishOrder() 
    {
        return msFinishOrder;
    }
    public void setSystemFinishOrder(Long systemFinishOrder) 
    {
        this.systemFinishOrder = systemFinishOrder;
    }

    public Long getSystemFinishOrder() 
    {
        return systemFinishOrder;
    }
    public void setTimeoutOrder(Long timeoutOrder) 
    {
        this.timeoutOrder = timeoutOrder;
    }

    public Long getTimeoutOrder() 
    {
        return timeoutOrder;
    }
    public void setTimeoutOrderNopay(Long timeoutOrderNopay) 
    {
        this.timeoutOrderNopay = timeoutOrderNopay;
    }

    public Long getTimeoutOrderNopay() 
    {
        return timeoutOrderNopay;
    }
    public void setOrderComfirm(Long orderComfirm) 
    {
        this.orderComfirm = orderComfirm;
    }

    public Long getOrderComfirm() 
    {
        return orderComfirm;
    }
    public void setOrderWaiting(Long orderWaiting) 
    {
        this.orderWaiting = orderWaiting;
    }

    public Long getOrderWaiting() 
    {
        return orderWaiting;
    }
    public void setOrderReceive(Long orderReceive) 
    {
        this.orderReceive = orderReceive;
    }

    public Long getOrderReceive() 
    {
        return orderReceive;
    }
    public void setOrderWaitingTimeout(Long orderWaitingTimeout) 
    {
        this.orderWaitingTimeout = orderWaitingTimeout;
    }

    public Long getOrderWaitingTimeout() 
    {
        return orderWaitingTimeout;
    }
    public void setOrderClose(Long orderClose) 
    {
        this.orderClose = orderClose;
    }

    public Long getOrderClose() 
    {
        return orderClose;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("serverId", getServerId())
            .append("tradeType", getTradeType())
            .append("tradeCount", getTradeCount())
            .append("nullRate", getNullRate())
            .append("msFinishOrder", getMsFinishOrder())
            .append("systemFinishOrder", getSystemFinishOrder())
            .append("timeoutOrder", getTimeoutOrder())
            .append("timeoutOrderNopay", getTimeoutOrderNopay())
            .append("orderComfirm", getOrderComfirm())
            .append("orderWaiting", getOrderWaiting())
            .append("orderReceive", getOrderReceive())
            .append("orderWaitingTimeout", getOrderWaitingTimeout())
            .append("orderClose", getOrderClose())
            .toString();
    }
}
