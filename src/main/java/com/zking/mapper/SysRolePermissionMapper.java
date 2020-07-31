package com.zking.mapper;

import com.zking.model.SysRolePermission;

public interface SysRolePermissionMapper {
    int insert(SysRolePermission record);

    int insertSelective(SysRolePermission record);
}