package com.zking.mapper;

import com.zking.model.StaffType;

public interface StaffTypeMapper {
    int deleteByPrimaryKey(Integer stId);

    int insert(StaffType record);

    int insertSelective(StaffType record);

    StaffType selectByPrimaryKey(Integer stId);

    int updateByPrimaryKeySelective(StaffType record);

    int updateByPrimaryKey(StaffType record);
}