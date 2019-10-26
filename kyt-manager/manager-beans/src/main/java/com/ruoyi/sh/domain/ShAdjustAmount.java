package com.ruoyi.sh.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 商户金额调整对象 sh_adjust_amount
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShAdjustAmount extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自动主键 */
    private Long id;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private String orderId;

    /** 商户编号 */
    @Excel(name = "商户编号")
    private Long serverId;

    /** 微调类型 */
    @Excel(name = "微调类型")
    private Integer type;

    /** 微调金额 */
    @Excel(name = "微调金额")
    private Double amount;

    /** 审核状态 */
    @Excel(name = "审核状态")
    private Integer approve;

    /** 申请人 */
    @Excel(name = "申请人")
    private String applyer;

    /** 审核人 */
    @Excel(name = "审核人")
    private String approver;

    /** 申请时间 */
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date applyTime;

    /** 审核时间 */
    @Excel(name = "审核时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date approveTime;

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
    public void setServerId(Long serverId) 
    {
        this.serverId = serverId;
    }

    public Long getServerId() 
    {
        return serverId;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setAmount(Double amount) 
    {
        this.amount = amount;
    }

    public Double getAmount() 
    {
        return amount;
    }
    public void setApprove(Integer approve) 
    {
        this.approve = approve;
    }

    public Integer getApprove() 
    {
        return approve;
    }
    public void setApplyer(String applyer) 
    {
        this.applyer = applyer;
    }

    public String getApplyer() 
    {
        return applyer;
    }
    public void setApprover(String approver) 
    {
        this.approver = approver;
    }

    public String getApprover() 
    {
        return approver;
    }
    public void setApplyTime(Date applyTime) 
    {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() 
    {
        return applyTime;
    }
    public void setApproveTime(Date approveTime) 
    {
        this.approveTime = approveTime;
    }

    public Date getApproveTime() 
    {
        return approveTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("serverId", getServerId())
            .append("type", getType())
            .append("amount", getAmount())
            .append("approve", getApprove())
            .append("applyer", getApplyer())
            .append("approver", getApprover())
            .append("applyTime", getApplyTime())
            .append("approveTime", getApproveTime())
            .toString();
    }
}
