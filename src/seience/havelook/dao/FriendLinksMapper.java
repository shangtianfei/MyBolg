package seience.havelook.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import seience.havelook.pojo.FriendLinks;

public interface FriendLinksMapper {
    int deleteByPrimaryKey(Short id);

    int insert(FriendLinks record);

    int insertSelective(FriendLinks record);

    FriendLinks selectByPrimaryKey(Short id);

    @Select("select id, web_name, web_url, sort_num from friend_links ORDER BY sort_num")
    List<FriendLinks> friendLinkAllList();
    
    int updateByPrimaryKeySelective(FriendLinks record);

    int updateByPrimaryKey(FriendLinks record);

}