package com.ssm.xingxingsystem.util;

public class PageCountUtil {
    private Integer pageNow = 1;
    private Integer pageSize = 10;
    private Integer pageCount;
    private Integer pageEnd;




    public PageCountUtil(Integer pageNow, Integer pageSize, Integer tableCount){
        if(pageNow != null && pageNow > 0){
            this.pageNow = pageNow;
        }
        if(pageSize != null){
            this.pageSize = pageSize;
        }
        Integer i = tableCount%this.pageSize;
        if(i == 0){
            this.pageEnd = tableCount/this.pageSize;
        }else{
            this.pageEnd = (tableCount/this.pageSize)+1;
        }
        if(this.pageNow >= this.pageEnd){
            this.pageNow = this.pageEnd;
        }
        this.pageCount = (this.pageNow-1)*this.pageSize;
    }

    public Integer getPageEnd() {
        return pageEnd;
    }

    public void setPageEnd(Integer pageEnd) {
        this.pageEnd = pageEnd;
    }

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }
}
