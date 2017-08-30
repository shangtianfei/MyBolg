package seience.havelook.dao;

import seience.havelook.pojo.Userinfo;

public interface UserinfoMapper {
    int deleteByPrimaryKey(Integer user_id);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);

    Userinfo selectByPrimaryKey(Integer user_id);

    Userinfo selectByUsername(String username);
    
    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);

}