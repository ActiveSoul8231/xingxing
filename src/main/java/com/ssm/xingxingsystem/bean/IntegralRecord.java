package com.ssm.xingxingsystem.bean;

public class IntegralRecord {
    private Integer id;
    private Integer userId;
    private String operationProject;
    private String operationTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getOperationProject() {
        return operationProject;
    }

    public void setOperationProject(String operationProject) {
        this.operationProject = operationProject;
    }

    public String getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(String operationTime) {
        this.operationTime = operationTime;
    }
}
