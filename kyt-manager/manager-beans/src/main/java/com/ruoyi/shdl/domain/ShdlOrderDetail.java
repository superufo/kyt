package com.ruoyi.shdl.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 *  码商代理交易明细对象 shdl_order_detail
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShdlOrderDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private String orderId;

    /** 代理编号 */
    @Excel(name = "代理编号")
    private Long agentId;

    /** 交易类型 */
    @Excel(name = "交易类型")
    private Integer tradeType;

    /** 变更前金额 */
    @Excel(name = "变更前金额")
    private Double originAmount;

    /** 交易金额 */
    @Excel(name = "交易金额")
    private Double num;

    /** 变更后金额 */
    @Excel(name = "变更后金额")
    private Double amount;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOrderId(String orderId) 
    {
        this.orderId = orderId;
    }

    public String getOrderId() 
    {
        return orderId;
    }
    public void setAgentId(Long agentId) 
    {
        this.agentId = agentId;
    }

    public Long getAgentId() 
    {
        return agentId;
    }
    public void setTradeType(Integer tradeType) 
    {
        this.tradeType = tradeType;
    }

    public Integer getTradeType() 
    {
        return tradeType;
    }
    public void setOriginAmount(Double originAmount) 
    {
        this.originAmount = originAmount;
    }

    public Double getOriginAmount() 
    {
        return originAmount;
    }
    public void setNum(Double num) 
    {
        this.num = num;
    }

    public Double getNum() 
    {
        return num;
    }
    public void setAmount(Double amount) 
    {
        this.amount = amount;
    }

    public Double getAmount() 
    {
        return amount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("agentId", getAgentId())
            .append("tradeType", getTradeType())
            .append("originAmount", getOriginAmount())
            .append("num", getNum())
            .append("amount", getAmount())
            .append("createTime", getCreateTime())
            .toString();
    }
}
