package Bean;

import java.util.List;

public class Page<T> {
    private int pageNum;        //当前页,从请求那边传过来。
    private int pageSize;       //每页显示的数据条数。
    private int totalRecord;    //总的记录条数。查询数据库得到的数据

    private int totalPage;    //总页数，通过totalRecord和pageSize计算可以得来
    //开始索引，也就是我们在数据库中要从第几行数据开始拿，有了startIndex和pageSize，
    //就知道了limit语句的两个数据，就能获得每页需要显示的数据了
    private int startIndex;

    //将每页要显示的数据放在list集合中
    private List<T> list;

    private int start;
    private int end;


    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    //通过pageNum，pageSize，totalRecord计算得来tatalPage和startIndex
    public Page(int pageNum,int pageSize,int totalRecord) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.totalRecord = totalRecord;

        //totalPage 总页数
        if(totalRecord%pageSize==0){
            this.totalPage = totalRecord / pageSize;
        }else{
            this.totalPage = totalRecord / pageSize +1;
        }

        //开始索引
        this.startIndex = (pageNum-1)*pageSize ;
        //显示5页
        this.start = 1;
        this.end = 3;

        //显示页数的算法
        if(totalPage <= 3){
            //总页数都小于3，那么end就为总页数的值了。
            this.end = this.totalPage;
        }else{
            //总页数大于3，那么就要根据当前是第几页，来判断start和end为多少了，
            this.start = pageNum - 1;
            this.end = pageNum + 1;

            if(start <= 0){
                //比如当前页是第1页
                this.start = 1;
                this.end = 3;
            }
            if(end >= this.totalPage){
                //比如当前页是最后一页则
                this.end = totalPage;
                this.start = end - 2;
            }
        }
    }
}
