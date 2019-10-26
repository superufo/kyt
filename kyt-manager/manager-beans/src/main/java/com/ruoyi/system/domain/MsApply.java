package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 ms_apply
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsApply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 码商编号 */
    @Excel(name = "码商编号")
    private Long merchantId;

    /** 码商昵称 */
    @Excel(name = "码商昵称")
    private String merchantName;

    /** 码商账号 */
    @Excel(name = "码商账号")
    private String merchantAccount;

    /** 联系QQ */
    @Excel(name = "联系QQ")
    private String qq;

    /** 联系手机号 */
    @Excel(name = "联系手机号")
    private Long mobile;

    /** 申请时间 */
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date applyTime;

    /** $column.columnComment */
    @Excel(name = "申请时间")
    private Integer status;

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
    public void setMerchantName(String merchantName) 
    {
        this.merchantName = merchantName;
    }

    public String getMerchantName() 
    {
        return merchantName;
    }
    public void setMerchantAccount(String merchantAccount) 
    {
        this.merchantAccount = merchantAccount;
    }

    public String getMerchantAccount() 
    {
        return merchantAccount;
    }
    public void setQq(String qq) 
    {
        this.qq = qq;
    }

    public String getQq() 
    {
        return qq;
    }
    public void setMobile(Long mobile) 
    {
        this.mobile = mobile;
    }

    public Long getMobile() 
    {
        return mobile;
    }
    public void setApplyTime(Date applyTime) 
    {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() 
    {
        return applyTime;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("merchantId", getMerchantId())
            .append("merchantName", getMerchantName())
            .append("merchantAccount", getMerchantAccount())
            .append("qq", getQq())
            .append("mobile", getMobile())
            .append("applyTime", getApplyTime())
            .append("status", getStatus())
            .append("remark", getRemark())
            .toString();
    }
}
