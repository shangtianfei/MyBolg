package seience.havelook.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import seience.havelook.pojo.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);
    
    List<Comment> selectCommentListByCheckedNumber(@Param("checkedNumber")Byte checkedNumber, @Param("article_id")Integer article_id);
 
    List<Comment> selectCommentListNotAccess(@Param("checkedNumber")Byte checkedNumber);
    
    List<Comment> selectRecentNewsOrderByDescWithLimit(@Param("commentLimit")Integer commentLimit, @Param("checkedNumber")Byte checkedNumber);
    
    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);

    
}