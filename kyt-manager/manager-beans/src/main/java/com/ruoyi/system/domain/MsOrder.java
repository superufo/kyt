package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 ms_order
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单编号 */
    private String id;

    /** 码商编号 */
    @Excel(name = "码商编号")
    private Long merchantId;

    /** 码商类型 */
    @Excel(name = "码商类型")
    private Integer merchantType;

    /** 交易类型 */
    @Excel(name = "交易类型")
    private Integer type;

    /** 变更前金额 */
    @Excel(name = "变更前金额")
    private Double originBlance;

    /** 交易金额 */
    @Excel(name = "交易金额")
    private Double money;

    /** 变更后金额 */
    @Excel(name = "变更后金额")
    private String blance;

    /** 交易日期 */
    @Excel(name = "交易日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
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
    public void setMerchantType(Integer merchantType) 
    {
        this.merchantType = merchantType;
    }

    public Integer getMerchantType() 
    {
        return merchantType;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setOriginBlance(Double originBlance) 
    {
        this.originBlance = originBlance;
    }

    public Double getOriginBlance() 
    {
        return originBlance;
    }
    public void setMoney(Double money) 
    {
        this.money = money;
    }

    public Double getMoney() 
    {
        return money;
    }
    public void setBlance(String blance) 
    {
        this.blance = blance;
    }

    public String getBlance() 
    {
        return blance;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("merchantId", getMerchantId())
            .append("merchantType", getMerchantType())
            .append("type", getType())
            .append("originBlance", getOriginBlance())
            .append("money", getMoney())
            .append("blance", getBlance())
            .append("createDate", getCreateDate())
            .toString();
    }
}
