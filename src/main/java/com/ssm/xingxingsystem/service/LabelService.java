package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Label;
import com.ssm.xingxingsystem.util.PageCountUtil;

import java.util.List;

public interface LabelService {
    List<Label> selectlabel(PageCountUtil pageCountUtil, String labelName);

    Label selectlabelBy(Integer id);

    void deleteLabel(Integer id);

    void addlabel(Label label);

    void labelUpdate(Label label);

    Integer selectlabelCont();
}
