package com.zking.mapper;

import com.zking.model.MoneyType;

public interface MoneyTypeMapper {
    int deleteByPrimaryKey(Integer mtId);

    int insert(MoneyType record);

    int insertSelective(MoneyType record);

    MoneyType selectByPrimaryKey(Integer mtId);

    int updateByPrimaryKeySelective(MoneyType record);

    int updateByPrimaryKey(MoneyType record);
}