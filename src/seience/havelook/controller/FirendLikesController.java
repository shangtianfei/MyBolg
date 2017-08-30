package seience.havelook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Category;
import seience.havelook.pojo.FriendLinks;
import seience.havelook.service.CategoryService;
import seience.havelook.service.FirendLikesService;
import seience.havelook.utils.QueryVo;

@Controller
public class FirendLikesController {
	@Autowired
	FirendLikesService firendLikesService;
	@Autowired
	CategoryService categoryService;

	// 查找到所有友链
	@RequestMapping("firendLikes")
	public String friendLinkAllList(Model model) {
		List<FriendLinks> friendLinkList = firendLikesService.friendLinkAllList();
		model.addAttribute("friendLinkList", friendLinkList);

		// 查询出所有类别
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);
		return "admin/adminFriendLikes";

	}

	// 查询出对应id的友链信息
	@RequestMapping("friendLikes/preUpdateFriendLike")
	public @ResponseBody FriendLinks preUpdateFriendLike(QueryVo vo) {
		return firendLikesService.selectByPrimaryKey(vo.getFriendLikes_id());
	}

	// js提交了一个对象
	@RequestMapping("friendLikes/updateFriendLike")
	public @ResponseBody int updateFriendLike(FriendLinks friendLinks) {
		if(friendLinks.getId() == null){
			return firendLikesService.insert(friendLinks);
		} 
			return firendLikesService.updateByPrimaryKey(friendLinks);
	}

	// 查询出对应id的友链信息
	@RequestMapping("friendLikes/deleteFriendLike")
	public @ResponseBody void deleteFriendLike(QueryVo vo) {
		firendLikesService.deleteByPrimaryKey(vo.getFriendLikes_id());
	}

}
