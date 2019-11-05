package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Label;
import com.ssm.xingxingsystem.dao.LabelDao;
import com.ssm.xingxingsystem.service.LabelService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LabelServiceImpl implements LabelService {

    @Autowired
    private LabelDao labelDao;


    @Override
    public List<Label> selectlabel(PageCountUtil pageCountUtil, String labelName) {
        return labelDao.selectlabel(pageCountUtil,labelName);
    }

    @Override
    public Label selectlabelBy(Integer id) {
        return labelDao.selectlabelBy(id);
    }

    @Override
    public void deleteLabel(Integer id) {
            labelDao.deleteLabel(id);
    }

    @Override
    public void addlabel(Label label) {
        labelDao.addlabel(label);
    }

    @Override
    public void labelUpdate(Label label) {
        labelDao.labelUpdate(label);
    }

    @Override
    public Integer selectlabelCont() {
        List<Label> label = labelDao.selectlabelCont();
        return label.size();

    }
}
