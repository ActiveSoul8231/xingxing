package com.ssm.xingxingsystem.service.impl;


import com.ssm.xingxingsystem.bean.menu.FirstMenu;
import com.ssm.xingxingsystem.bean.menu.TwoMenu;
import com.ssm.xingxingsystem.dao.MenuDao;
import com.ssm.xingxingsystem.service.MenuService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import com.ssm.xingxingsystem.vo.FirstMenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {
    @Autowired
    MenuDao menuDao;

    @Override
    public List<FirstMenu> firstMenuSelect(PageCountUtil pageCountUtil, String menuName) {
        return menuDao.firstMenuSelect(pageCountUtil,menuName);
    }

    @Override
    public Integer getTableCount() {
        return menuDao.getTableCount();
    }

    @Override
    public String getMenuName(String menuName) {
        FirstMenu firstMenu = menuDao.getMenuName(menuName);
        if (firstMenu != null){
            return "已存在";
        }
        return "";
    }

    @Override
    public void firstMenuInsert(String menuName) {
        menuDao.firstMenuInsert(menuName);
    }

    @Override
    public void firstMenuDelete(Integer id) {
        menuDao.firstMenuDeleteById(id);
    }

    @Override
    public FirstMenu toUpdateById(Integer id) {
        return menuDao.toUpdateById(id);
    }

    @Override
    public void firstMenuUpdate(Integer id, String menuName) {
        menuDao.firstMenuUpdate(id,menuName);
    }

    @Override
    public Integer getTableCount1() {
        return menuDao.getTableCount1();
    }

    @Override
    public List<TwoMenu> twoMenuSelect(PageCountUtil pageCountUtil, String menu2Name, Integer oneMenuId) {
        return menuDao.twoMenuSelect(pageCountUtil,menu2Name,oneMenuId);
    }

    @Override
    public List<FirstMenu> getFirstMenu() {
        return menuDao.getFirstMenu();
    }

    @Override
    public void twoMenuInsert(String menu2Name, String menuName) {
        menuDao.twoMenuInsert(menu2Name,menuName);
    }

    @Override
    public void twoMenuDelete(Integer id) {
        menuDao.twoMenuDeleteById(id);
    }
}
