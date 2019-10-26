package com.ruoyi.msdl.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 码商代理返佣统计对象 msdl_commision
 * 
 * @author ruoyi
 * @date 2019-10-23
 */
public class MsdlCommision extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 统计日期 */
    private Date day;

    /** 类型 */
    private Integer type;

    /** 商户代理编号 */
    private Long msdlAgent;

    /** 层级 */
    @Excel(name = "层级")
    private Integer level;

    /** 总订单数 */
    @Excel(name = "总订单数")
    private Long orderCount;

    /** 完成订单数 */
    @Excel(name = "完成订单数")
    private Long successsCount;

    /** 充值金额 */
    @Excel(name = "充值金额")
    private Double payAmount;

    /** 到账金额 */
    @Excel(name = "到账金额")
    private Double income;

    /** 佣金 */
    @Excel(name = "佣金")
    private Double commision;

    /** 成功率*/
    @Excel(name = "成功率 ")
    private Double rate;

    public void setDay(Date day) 
    {
        this.day = day;
    }

    public Date getDay() 
    {
        return day;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setMsdlAgent(Long msdlAgent) 
    {
        this.msdlAgent = msdlAgent;
    }

    public Long getMsdlAgent() 
    {
        return msdlAgent;
    }
    public void setLevel(Integer level) 
    {
        this.level = level;
    }

    public Integer getLevel() 
    {
        return level;
    }
    public void setOrderCount(Long orderCount) 
    {
        this.orderCount = orderCount;
    }

    public Long getOrderCount() 
    {
        return orderCount;
    }
    public void setSuccesssCount(Long successsCount) 
    {
        this.successsCount = successsCount;
    }

    public Long getSuccesssCount() 
    {
        return successsCount;
    }
    public void setPayAmount(Double payAmount) 
    {
        this.payAmount = payAmount;
    }

    public Double getPayAmount() 
    {
        return payAmount;
    }
    public void setIncome(Double income) 
    {
        this.income = income;
    }

    public Double getIncome() 
    {
        return income;
    }
    public void setCommision(Double commision) 
    {
        this.commision = commision;
    }

    public Double getCommision() 
    {
        return commision;
    }
    public void setRate(Double rate) 
    {
        this.rate = rate;
    }

    public Double getRate() 
    {
        return rate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("day", getDay())
            .append("type", getType())
            .append("msdlAgent", getMsdlAgent())
            .append("level", getLevel())
            .append("orderCount", getOrderCount())
            .append("successsCount", getSuccesssCount())
            .append("payAmount", getPayAmount())
            .append("income", getIncome())
            .append("commision", getCommision())
            .append("rate", getRate())
            .toString();
    }
}
