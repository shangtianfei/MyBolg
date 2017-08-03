package seience.havelook.dao;

import seience.havelook.pojo.Usermanager;

public interface UsermanagerMapper {
    int deleteByPrimaryKey(Byte id);

    int insert(Usermanager record);

    int insertSelective(Usermanager record);

    Usermanager selectByPrimaryKey(Byte id);

    int updateByPrimaryKeySelective(Usermanager record);

    int updateByPrimaryKey(Usermanager record);
}