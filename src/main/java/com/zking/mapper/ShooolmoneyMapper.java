package com.zking.mapper;

import com.zking.model.Shooolmoney;

public interface ShooolmoneyMapper {
    int deleteByPrimaryKey(Integer smId);

    int insert(Shooolmoney record);

    int insertSelective(Shooolmoney record);

    Shooolmoney selectByPrimaryKey(Integer smId);

    int updateByPrimaryKeySelective(Shooolmoney record);

    int updateByPrimaryKey(Shooolmoney record);
}