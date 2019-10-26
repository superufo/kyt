package com.ruoyi.module.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商户名单对象 merchant
 * 
 * @author ruoyi
 * @date 2019-10-13
 */
public class Merchant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 商户名称 */
    @Excel(name = "商户名称")
    private String name;

    /** 允许接入IP */
    @Excel(name = "允许接入IP")
    private String ip;

    /** 商户ID */
    @Excel(name = "商户ID")
    private String mchId;

    /** 接口密钥 */
    @Excel(name = "接口密钥")
    private String apiKey;

    /** 描述 */
    @Excel(name = "描述")
    private String depict;

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
    public void setIp(String ip) 
    {
        this.ip = ip;
    }

    public String getIp() 
    {
        return ip;
    }
    public void setMchId(String mchId) 
    {
        this.mchId = mchId;
    }

    public String getMchId() 
    {
        return mchId;
    }
    public void setApiKey(String apiKey) 
    {
        this.apiKey = apiKey;
    }

    public String getApiKey() 
    {
        return apiKey;
    }
    public void setDepict(String depict) 
    {
        this.depict = depict;
    }

    public String getDepict() 
    {
        return depict;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("ip", getIp())
            .append("mchId", getMchId())
            .append("apiKey", getApiKey())
            .append("depict", getDepict())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
