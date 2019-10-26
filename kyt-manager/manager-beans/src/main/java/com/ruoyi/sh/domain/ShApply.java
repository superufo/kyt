package com.ruoyi.sh.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 商户审核对象 sh_apply
 * 
 * @author ruoyi
 * @date 2019-10-24
 */
public class ShApply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 服务商编号 */
    @Excel(name = "服务商编号")
    private Long serverId;

    /** 服务商昵称 */
    @Excel(name = "服务商昵称")
    private String serverName;

    /** 服务商账号 */
    @Excel(name = "服务商账号")
    private String serverAccount;

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
    public void setServerId(Long serverId) 
    {
        this.serverId = serverId;
    }

    public Long getServerId() 
    {
        return serverId;
    }
    public void setServerName(String serverName) 
    {
        this.serverName = serverName;
    }

    public String getServerName() 
    {
        return serverName;
    }
    public void setServerAccount(String serverAccount) 
    {
        this.serverAccount = serverAccount;
    }

    public String getServerAccount() 
    {
        return serverAccount;
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
            .append("serverId", getServerId())
            .append("serverName", getServerName())
            .append("serverAccount", getServerAccount())
            .append("qq", getQq())
            .append("mobile", getMobile())
            .append("applyTime", getApplyTime())
            .append("status", getStatus())
            .append("remark", getRemark())
            .toString();
    }
}
