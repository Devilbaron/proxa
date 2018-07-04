package cn.demon.entity;

import cn.demon.utils.IdGen;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;

public class DateEntity<T> extends BaseEntity<User> {

    private static final long serialVersionUID = 1L;

    protected String remarks;	// 备注
    protected Date createDate;	// 创建日期
    protected Date updateDate;	// 更新日期
    protected String delFlag; 	// 删除标记（0：正常；1：删除；2：审核）

    public DateEntity() {
        super();
        this.updateDate = new Date();
        this.createDate = this.updateDate;
        this.delFlag = DEL_FLAG_NORMAL;
    }

    public DateEntity(String id) {
        super(id);
    }
    /**
     * 插入之前执行方法，需要手动调用
     */

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }


    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }


    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @JsonIgnore
    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }
}
