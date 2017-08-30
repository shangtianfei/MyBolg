package seience.havelook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Category;
import seience.havelook.pojo.Comment;
import seience.havelook.service.CategoryService;
import seience.havelook.service.CommentService;
import seience.havelook.utils.QueryVo;

@Controller
public class CommentController {
	@Autowired
	CommentService commentService;
	@Autowired
	CategoryService categoryService;
	// 添加评论
	@RequestMapping("/comment/commentSubmit")
	public @ResponseBody String commentSubmit(Comment comment) {
		commentService.insertSelective(comment);
		return "success";
	}

	// 进入管理评论页面
	@RequestMapping("/adminAccess")
	public String adminAccess(Model model) {
		Byte checkedNumber = 0;// 1为访问者可视状态，0为不可视,这里的sql条件是 >= 0
		List<Comment> allCommentList = commentService.selectCommentListNotAccess(checkedNumber);
		model.addAttribute("allCommentList", allCommentList);
		
		// 查询出所有类别
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);
		return "admin/adminAccess";
	}

	// 删除评论
	@RequestMapping("comment/delete")
	public @ResponseBody String commentDelete(QueryVo vo) {
		commentService.deleteByPrimaryKey(vo.getCommentId());
		return "success";
	}

	//更新评论状态
	@RequestMapping("comment/updateCommect")
	public @ResponseBody String updateCommect(QueryVo vo) {
		commentService.updateByPrimaryKeySelective(vo);
		return "success";
	}
}
