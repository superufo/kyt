package com.ruoyi.shdl.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 码商代理申请对象 shdl_apply
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShdlApply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** email */
    @Excel(name = "email")
    private String email;

    /** 手机 */
    @Excel(name = "手机")
    private String mobile;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String idcard;

    /** 姓名 */
    @Excel(name = "姓名")
    private String realname;

    /** 银行名称	 */
    @Excel(name = "银行名称	")
    private String bankname;

    /** 银行卡编号 */
    @Excel(name = "银行卡编号")
    private String bankno;

    /** 代理推荐Id */
    @Excel(name = "代理推荐Id")
    private Long reference;

    /** 申请类型 */
    @Excel(name = "申请类型")
    private Long type;

    /** 申请方式 */
    @Excel(name = "申请方式")
    private String mode;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    /** 申请时间 */
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date applyTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setNickname(String nickname) 
    {
        this.nickname = nickname;
    }

    public String getNickname() 
    {
        return nickname;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setMobile(String mobile) 
    {
        this.mobile = mobile;
    }

    public String getMobile() 
    {
        return mobile;
    }
    public void setIdcard(String idcard) 
    {
        this.idcard = idcard;
    }

    public String getIdcard() 
    {
        return idcard;
    }
    public void setRealname(String realname) 
    {
        this.realname = realname;
    }

    public String getRealname() 
    {
        return realname;
    }
    public void setBankname(String bankname) 
    {
        this.bankname = bankname;
    }

    public String getBankname() 
    {
        return bankname;
    }
    public void setBankno(String bankno) 
    {
        this.bankno = bankno;
    }

    public String getBankno() 
    {
        return bankno;
    }
    public void setReference(Long reference) 
    {
        this.reference = reference;
    }

    public Long getReference() 
    {
        return reference;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setMode(String mode) 
    {
        this.mode = mode;
    }

    public String getMode() 
    {
        return mode;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }
    public void setApplyTime(Date applyTime) 
    {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() 
    {
        return applyTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("nickname", getNickname())
            .append("email", getEmail())
            .append("mobile", getMobile())
            .append("idcard", getIdcard())
            .append("realname", getRealname())
            .append("bankname", getBankname())
            .append("bankno", getBankno())
            .append("reference", getReference())
            .append("type", getType())
            .append("mode", getMode())
            .append("remark", getRemark())
            .append("state", getState())
            .append("applyTime", getApplyTime())
            .toString();
    }
}
