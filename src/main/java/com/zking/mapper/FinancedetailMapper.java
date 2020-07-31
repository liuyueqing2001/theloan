package com.zking.mapper;

import com.zking.model.Financedetail;

public interface FinancedetailMapper {
    int deleteByPrimaryKey(Integer fdId);

    int insert(Financedetail record);

    int insertSelective(Financedetail record);

    Financedetail selectByPrimaryKey(Integer fdId);

    int updateByPrimaryKeySelective(Financedetail record);

    int updateByPrimaryKey(Financedetail record);
}