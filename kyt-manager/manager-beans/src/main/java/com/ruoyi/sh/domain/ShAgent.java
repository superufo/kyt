package com.ruoyi.sh.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商户代理对象 sh_agent
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShAgent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 代理编号 */
    private Long id;

    /** 所属上级代理 */
    @Excel(name = "所属上级代理")
    private Long parantId;

    /** 代理名称 */
    @Excel(name = "代理名称")
    private String name;

    /** 手机 */
    @Excel(name = "手机")
    private String mobile;

    /** 密码 */
    @Excel(name = "密码")
    private String passwd;

    /** 微信佣金基准金额 */
    @Excel(name = "微信佣金基准金额")
    private Double wxCommissionAmount;

    /** 微信佣金比例*/
    @Excel(name = "微信佣金比例")
    private Double wxCommissionRate;

    /** 支付宝佣金基准金额 */
    @Excel(name = "支付宝佣金基准金额")
    private Double aliCommissionAmount;

    /** 支付宝佣金比例*/
    @Excel(name = "支付宝佣金比例")
    private Double aliCommissionRate;

    /** 余额 */
    @Excel(name = "余额")
    private Double amount;

    /** 冻结金额 */
    @Excel(name = "冻结金额")
    private Double freezeAmount;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setParantId(Long parantId) 
    {
        this.parantId = parantId;
    }

    public Long getParantId() 
    {
        return parantId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setMobile(String mobile) 
    {
        this.mobile = mobile;
    }

    public String getMobile() 
    {
        return mobile;
    }
    public void setPasswd(String passwd) 
    {
        this.passwd = passwd;
    }

    public String getPasswd() 
    {
        return passwd;
    }
    public void setWxCommissionAmount(Double wxCommissionAmount) 
    {
        this.wxCommissionAmount = wxCommissionAmount;
    }

    public Double getWxCommissionAmount() 
    {
        return wxCommissionAmount;
    }
    public void setWxCommissionRate(Double wxCommissionRate) 
    {
        this.wxCommissionRate = wxCommissionRate;
    }

    public Double getWxCommissionRate() 
    {
        return wxCommissionRate;
    }
    public void setAliCommissionAmount(Double aliCommissionAmount) 
    {
        this.aliCommissionAmount = aliCommissionAmount;
    }

    public Double getAliCommissionAmount() 
    {
        return aliCommissionAmount;
    }
    public void setAliCommissionRate(Double aliCommissionRate) 
    {
        this.aliCommissionRate = aliCommissionRate;
    }

    public Double getAliCommissionRate() 
    {
        return aliCommissionRate;
    }
    public void setAmount(Double amount) 
    {
        this.amount = amount;
    }

    public Double getAmount() 
    {
        return amount;
    }
    public void setFreezeAmount(Double freezeAmount) 
    {
        this.freezeAmount = freezeAmount;
    }

    public Double getFreezeAmount() 
    {
        return freezeAmount;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("parantId", getParantId())
            .append("name", getName())
            .append("mobile", getMobile())
            .append("passwd", getPasswd())
            .append("wxCommissionAmount", getWxCommissionAmount())
            .append("wxCommissionRate", getWxCommissionRate())
            .append("aliCommissionAmount", getAliCommissionAmount())
            .append("aliCommissionRate", getAliCommissionRate())
            .append("amount", getAmount())
            .append("freezeAmount", getFreezeAmount())
            .append("state", getState())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
