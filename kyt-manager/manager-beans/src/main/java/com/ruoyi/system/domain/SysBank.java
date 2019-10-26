package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 银行对象 sys_bank
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
public class SysBank extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 银行 */
    @Excel(name = "银行")
    private String bank;

    /** 银行代码 */
    @Excel(name = "银行代码")
    private Long bankcode;

    /** logo */
    @Excel(name = "logo")
    private String logo;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setBank(String bank) 
    {
        this.bank = bank;
    }

    public String getBank() 
    {
        return bank;
    }
    public void setBankcode(Long bankcode) 
    {
        this.bankcode = bankcode;
    }

    public Long getBankcode() 
    {
        return bankcode;
    }
    public void setLogo(String logo) 
    {
        this.logo = logo;
    }

    public String getLogo() 
    {
        return logo;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("bank", getBank())
            .append("bankcode", getBankcode())
            .append("logo", getLogo())
            .append("state", getState())
            .append("createTime", getCreateTime())
            .toString();
    }
}
