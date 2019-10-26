package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 银行卡对象 sys_bankno
 * 
 * @author ruoyi
 * @date 2019-10-25
 */
public class SysBankno extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 银行卡类型 */
    @Excel(name = "银行卡类型")
    private Integer type;

    /** 账户名 */
    @Excel(name = "账户名")
    private String account;

    /** 卡号 */
    @Excel(name = "卡号")
    private String bankno;

    /** 所属银行 */
    @Excel(name = "所属银行")
    private String bank;

    /** 用户编号 */
    @Excel(name = "用户编号")
    private Long userid;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    /** 开户行 */
    @Excel(name = "开户行")
    private String bankAddress;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setAccount(String account) 
    {
        this.account = account;
    }

    public String getAccount() 
    {
        return account;
    }
    public void setBankno(String bankno) 
    {
        this.bankno = bankno;
    }

    public String getBankno() 
    {
        return bankno;
    }
    public void setBank(String bank) 
    {
        this.bank = bank;
    }

    public String getBank() 
    {
        return bank;
    }
    public void setUserid(Long userid) 
    {
        this.userid = userid;
    }

    public Long getUserid() 
    {
        return userid;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }
    public void setBankAddress(String bankAddress) 
    {
        this.bankAddress = bankAddress;
    }

    public String getBankAddress() 
    {
        return bankAddress;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("account", getAccount())
            .append("bankno", getBankno())
            .append("bank", getBank())
            .append("userid", getUserid())
            .append("state", getState())
            .append("createTime", getCreateTime())
            .append("bankAddress", getBankAddress())
            .toString();
    }
}
