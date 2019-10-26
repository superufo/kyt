package com.ruoyi.module.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 手机白名单对象 phone_white
 * 
 * @author ruoyi
 * @date 2019-10-07
 */
public class PhoneWhite extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("phone", getPhone())
            .toString();
    }
}
