package com.ssm.xingxingsystem.vo;

import com.ssm.xingxingsystem.bean.menu.TwoMenu;

import java.util.List;

public class FirstMenuVo {
    private Integer id;
    private String menuName;
    private List<TwoMenu> twoMenuList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public List<TwoMenu> getTwoMenuList() {
        return twoMenuList;
    }

    public void setTwoMenuList(List<TwoMenu> twoMenuList) {
        this.twoMenuList = twoMenuList;
    }
}
