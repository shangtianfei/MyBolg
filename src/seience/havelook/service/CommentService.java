package seience.havelook.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.CommentMapper;
import seience.havelook.pojo.Comment;
import seience.havelook.utils.QueryVo;

@Service
public class CommentService {
	Date currentTime = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	@Autowired
	CommentMapper commentMapper;

	public void insertSelective(Comment comment) {
		comment.setTimestamp(formatter.format(currentTime));
		commentMapper.insertSelective(comment);
	}

	public List<Comment> selectCommentListByCheckedNumber(Byte checkedNumber, Integer article_id) {
		// TODO Auto-generated method stub
		return commentMapper.selectCommentListByCheckedNumber(checkedNumber,article_id);
	}

	public List<Comment> selectRecentNewsOrderByDescWithLimit(Integer commentLimit, Byte checkedNumber) {
		// TODO Auto-generated method stub
		return commentMapper.selectRecentNewsOrderByDescWithLimit(commentLimit,checkedNumber);
	}

	public List<Comment> selectCommentListNotAccess(Byte checkedNumber) {
		// TODO Auto-generated method stub
		return commentMapper.selectCommentListNotAccess(checkedNumber);
	}

	public void deleteByPrimaryKey(Integer commentId) {
		// TODO Auto-generated method stub
		commentMapper.deleteByPrimaryKey(commentId);
	}

	public void updateByPrimaryKeySelective(QueryVo vo) {
		// TODO Auto-generated method stub
		Comment comment = new Comment();
		comment.setId(vo.getCommentId());
		comment.setIs_checked(vo.getIs_checked());
		commentMapper.updateByPrimaryKeySelective(comment);
	}

}
