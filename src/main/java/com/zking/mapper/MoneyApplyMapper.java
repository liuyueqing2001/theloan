package com.zking.mapper;

import com.zking.model.MoneyApply;

public interface MoneyApplyMapper {
    int deleteByPrimaryKey(Integer maId);

    int insert(MoneyApply record);

    int insertSelective(MoneyApply record);

    MoneyApply selectByPrimaryKey(Integer maId);

    int updateByPrimaryKeySelective(MoneyApply record);

    int updateByPrimaryKey(MoneyApply record);
}