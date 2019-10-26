package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 ms_merchant
 * 
 * @author ruoyi
 * @date 2019-10-22
 */
public class MsMerchant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 码商编号 */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** $column.columnComment */
    @Excel(name = "名称")
    private String account;

    /** 类型 */
    @Excel(name = "类型")
    private Integer type;

    /** 所属代理 */
    @Excel(name = "所属代理")
    private Long agentId;

    /** 余额 */
    @Excel(name = "余额")
    private Double balance;

    /** 冻结金额 */
    @Excel(name = "冻结金额")
    private Double freezeBalance;

    /** 微信费率 */
    @Excel(name = "微信费率")
    private Double wechatRate;

    /** 支付宝费率 */
    @Excel(name = "支付宝费率")
    private Double alipayRate;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    /** 创建日期 */
    @Excel(name = "创建日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setAccount(String account) 
    {
        this.account = account;
    }

    public String getAccount() 
    {
        return account;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setAgentId(Long agentId) 
    {
        this.agentId = agentId;
    }

    public Long getAgentId() 
    {
        return agentId;
    }
    public void setBalance(Double balance) 
    {
        this.balance = balance;
    }

    public Double getBalance() 
    {
        return balance;
    }
    public void setFreezeBalance(Double freezeBalance) 
    {
        this.freezeBalance = freezeBalance;
    }

    public Double getFreezeBalance() 
    {
        return freezeBalance;
    }
    public void setWechatRate(Double wechatRate) 
    {
        this.wechatRate = wechatRate;
    }

    public Double getWechatRate() 
    {
        return wechatRate;
    }
    public void setAlipayRate(Double alipayRate) 
    {
        this.alipayRate = alipayRate;
    }

    public Double getAlipayRate() 
    {
        return alipayRate;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
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
            .append("name", getName())
            .append("account", getAccount())
            .append("type", getType())
            .append("agentId", getAgentId())
            .append("balance", getBalance())
            .append("freezeBalance", getFreezeBalance())
            .append("wechatRate", getWechatRate())
            .append("alipayRate", getAlipayRate())
            .append("state", getState())
            .append("createDate", getCreateDate())
            .toString();
    }
}
