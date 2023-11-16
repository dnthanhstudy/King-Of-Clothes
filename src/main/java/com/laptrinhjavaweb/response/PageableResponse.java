package com.laptrinhjavaweb.response;

public class PageableResponse {

    private Integer pagecurrent;

    private Integer totalpage;

    private Integer pagefirst;

    public Integer getPagecurrent() {
        return pagecurrent;
    }

    public void setPagecurrent(Integer pagecurrent) {
        this.pagecurrent = pagecurrent;
    }

    public Integer getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(Integer totalpage) {
        this.totalpage = totalpage;
    }

    public Integer getPagefirst() {
        return pagefirst;
    }

    public void setPagefirst(Integer pagefirst) {
        this.pagefirst = pagefirst;
    }
}
