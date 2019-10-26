package com.ruoyi.tj.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 *  对账统计报对象 tj_bill_report
 * 
 * @author ruoyi
 * @date 2019-10-26
 */
public class TjBillReport extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 微信成功交易金额 */
    @Excel(name = "微信成功交易金额")
    private Double wechatAmount;

    /** 支付宝成功交易金额 */
    @Excel(name = "支付宝成功交易金额")
    private Double alipayAmount;

    /** 总交易成功金额 */
    @Excel(name = "总交易成功金额")
    private Double totalAmount;

    /** 码商佣金 */
    @Excel(name = "码商佣金")
    private Double msCommission;

    /** 商户会员付款手续费 */
    @Excel(name = "商户会员付款手续费")
    private Double shServiceCharge;

    /** 码商账户微调上款 */
    @Excel(name = "码商账户微调上款")
    private Double msAdjustUpamount;

    /** 码商账户微调下款 */
    @Excel(name = "码商账户微调下款")
    private Double msAdjustDownamount;

    /** 商户账户微调上款 */
    @Excel(name = "商户账户微调上款")
    private Double shAdjustUpamount;

    /** 商户账户微调下款 */
    @Excel(name = "商户账户微调下款")
    private Double shAdjustDownamount;

    /** 服务码商充值金额 */
    @Excel(name = "服务码商充值金额")
    private Double servicePayAmount;

    /** 商户提现金额 */
    @Excel(name = "商户提现金额")
    private String shFetchAmount;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setWechatAmount(Double wechatAmount) 
    {
        this.wechatAmount = wechatAmount;
    }

    public Double getWechatAmount() 
    {
        return wechatAmount;
    }
    public void setAlipayAmount(Double alipayAmount) 
    {
        this.alipayAmount = alipayAmount;
    }

    public Double getAlipayAmount() 
    {
        return alipayAmount;
    }
    public void setTotalAmount(Double totalAmount) 
    {
        this.totalAmount = totalAmount;
    }

    public Double getTotalAmount() 
    {
        return totalAmount;
    }
    public void setMsCommission(Double msCommission) 
    {
        this.msCommission = msCommission;
    }

    public Double getMsCommission() 
    {
        return msCommission;
    }
    public void setShServiceCharge(Double shServiceCharge) 
    {
        this.shServiceCharge = shServiceCharge;
    }

    public Double getShServiceCharge() 
    {
        return shServiceCharge;
    }
    public void setMsAdjustUpamount(Double msAdjustUpamount) 
    {
        this.msAdjustUpamount = msAdjustUpamount;
    }

    public Double getMsAdjustUpamount() 
    {
        return msAdjustUpamount;
    }
    public void setMsAdjustDownamount(Double msAdjustDownamount) 
    {
        this.msAdjustDownamount = msAdjustDownamount;
    }

    public Double getMsAdjustDownamount() 
    {
        return msAdjustDownamount;
    }
    public void setShAdjustUpamount(Double shAdjustUpamount) 
    {
        this.shAdjustUpamount = shAdjustUpamount;
    }

    public Double getShAdjustUpamount() 
    {
        return shAdjustUpamount;
    }
    public void setShAdjustDownamount(Double shAdjustDownamount) 
    {
        this.shAdjustDownamount = shAdjustDownamount;
    }

    public Double getShAdjustDownamount() 
    {
        return shAdjustDownamount;
    }
    public void setServicePayAmount(Double servicePayAmount) 
    {
        this.servicePayAmount = servicePayAmount;
    }

    public Double getServicePayAmount() 
    {
        return servicePayAmount;
    }
    public void setShFetchAmount(String shFetchAmount) 
    {
        this.shFetchAmount = shFetchAmount;
    }

    public String getShFetchAmount() 
    {
        return shFetchAmount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("wechatAmount", getWechatAmount())
            .append("alipayAmount", getAlipayAmount())
            .append("totalAmount", getTotalAmount())
            .append("msCommission", getMsCommission())
            .append("shServiceCharge", getShServiceCharge())
            .append("msAdjustUpamount", getMsAdjustUpamount())
            .append("msAdjustDownamount", getMsAdjustDownamount())
            .append("shAdjustUpamount", getShAdjustUpamount())
            .append("shAdjustDownamount", getShAdjustDownamount())
            .append("servicePayAmount", getServicePayAmount())
            .append("shFetchAmount", getShFetchAmount())
            .toString();
    }
}
