package cn.demon.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User{
    private String name;        //用户名
    private String sex;         //性别
    private String age;         //年龄
    private String height;      //身高
    private String via;         //本人照片
    private String wechat;      //微信号
    private String iphone;      //手机号
    private String city;        //所在城市
    private Date create_date;//创建时间
    private Date updata_date;//更新时间
    private String remarks;     //备注
    private String del_flag;    //删除标记

    public User() {
        super();
        this.updata_date = new Date();
        this.create_date = this.updata_date;
        this.del_flag = "0";
    }
    public User(String name,String sex,String age,String height,String via,String wechat,String iphone,String city,String create_date,String updata_date,String remarks,String del_flag){
        super();
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.height = height;
        this.via = via;
        this.wechat = wechat;
        this.iphone = iphone;
        this.city = city;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getVia() {
        return via;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    public String getIphone() {
        return iphone;
    }

    public void setIphone(String iphone) {
        this.iphone = iphone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getUpdata_date() {
        return updata_date;
    }

    public void setUpdata_date(Date updata_date) {
        this.updata_date = updata_date;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getDel_flag() {
        return del_flag;
    }

    public void setDel_flag(String del_flag) {
        this.del_flag = del_flag;
    }
}