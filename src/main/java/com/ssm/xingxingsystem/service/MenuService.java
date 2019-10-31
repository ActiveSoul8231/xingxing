package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.menu.FirstMenu;
import com.ssm.xingxingsystem.bean.menu.TwoMenu;
import com.ssm.xingxingsystem.util.PageCountUtil;
import com.ssm.xingxingsystem.vo.FirstMenuVo;

import java.util.List;

public interface MenuService {
    List<FirstMenu> firstMenuSelect(PageCountUtil pageCountUtil, String menuName);

    Integer getTableCount();

    String getMenuName(String menuName);

    void firstMenuInsert(String menuName);

    void firstMenuDelete(Integer id);

    FirstMenu toUpdateById(Integer id);

    void firstMenuUpdate(Integer id, String menuName);

    Integer getTableCount1();

    List<TwoMenu> twoMenuSelect(PageCountUtil pageCountUtil, String menu2Name, Integer oneMenuId);

    List<FirstMenu> getFirstMenu();

    void twoMenuInsert(String menu2Name, String menuName);

    void twoMenuDelete(Integer id);
}
