package seience.havelook.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.logging.log4j2.Log4j2LoggerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import seience.havelook.pojo.Article;
import seience.havelook.pojo.ArticleWithBLOBs;
import seience.havelook.pojo.Category;
import seience.havelook.pojo.Comment;
import seience.havelook.pojo.FriendLinks;
import seience.havelook.pojo.PagePojo;
import seience.havelook.pojo.Userinfo;
import seience.havelook.service.ArticleService;
import seience.havelook.service.CategoryService;
import seience.havelook.service.CommentService;
import seience.havelook.service.FirendLikesService;
import seience.havelook.service.UserinfoService;
import seience.havelook.utils.QueryVo;

@Controller
public class ArticleController {
	@Autowired
	ArticleService articleService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	UserinfoService userinfoService;
	@Autowired
	CommentService commentService;
	@Autowired
	FirendLikesService firendLikesService;

	Integer articleLimit = 5;// 展示在前台右边导航模板的文章数
	Integer commentLimit = 5;// 展示在前台的评论数
	Byte checkedNumber = 1;// 数字1代表允许发布的评论

	@RequestMapping("/index")
	public String toIndex(Model model, HttpSession session) {
		// 查询出所有文章，放置前台
		List<Article> articleList = articleService.selectByExampleWithCategoryAndUserinfo();
		model.addAttribute("articleList", articleList);

		// 查询出所有类别
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);

		// 查询出最新发布的文章
		List<Article> recentNewsArticleList = articleService.selectRecentNewsOrderByDescWithLimit(articleLimit);
		model.addAttribute("recentNewsArticleList", recentNewsArticleList);

		// 查询出最近日期的评论
		List<Comment> recentNewsCommentList = commentService.selectRecentNewsOrderByDescWithLimit(commentLimit,
				checkedNumber);
		model.addAttribute("recentNewsCommentList", recentNewsCommentList);

		// 查询出友链
		List<FriendLinks> firendLikeList = firendLikesService.friendLinkAllList();
		model.addAttribute("firendLikeList", firendLikeList);

	/*	// 把用户名放前台
		Userinfo userinfo = userinfoService.getSession(session);
		model.addAttribute("username", userinfo.getUsername());*/
		return "index";
	}

	@RequestMapping("/admin")
	public String adminShow(Model model, HttpSession session) {
		// 查询出所有文章，放置后台
		List<Article> articleList = articleService.selectByExampleWithCategoryAndUserinfo();
		model.addAttribute("articleList", articleList);

		// 查询出所有类别
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);
		return "admin/adminShow";
	}

	// 进入到添加页
	@RequestMapping("/toEdit")
	public String toEdit(Model model) {
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);
		return "edit/writer";
	}

	// 执行保存或更新
	@RequestMapping("/edit/saveOrUpdate")
	public @ResponseBody void saveOrUpdate(QueryVo vo, HttpSession session) {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		ArticleWithBLOBs articleWithBLOBs = new ArticleWithBLOBs();

		articleWithBLOBs = articleService.saveOrUpdateCommon(vo);
		if (vo.getArticle_id() != null) {
			articleWithBLOBs.setArticle_id(vo.getArticle_id());
			articleWithBLOBs.setModify_time(formatter.format(currentTime));
			articleService.updateByPrimaryKeySelective(articleWithBLOBs);
		} else {
			articleWithBLOBs.setPublish_time(formatter.format(currentTime));
			articleWithBLOBs.setModify_time(formatter.format(currentTime));
			Userinfo userinfo = userinfoService.getSession(session);
			articleWithBLOBs.setUser_id(userinfo.getUser_id());
			articleService.insertSelective(articleWithBLOBs);
		}
	}

	// 删除文章 不加@ResponseBody在ajax就没有返回值
	@RequestMapping("/edit/deleteEdit")
	public @ResponseBody void deleteEdit(QueryVo vo) {
		articleService.deleteByPrimaryKey(vo.getArticle_id());
	}

	// 修改————————RestFul风格的开发
	@RequestMapping("/edit/preUpdateEdit/{article_id}")
	public String updateEdit(@PathVariable Integer article_id, Model model) {

		ArticleWithBLOBs articleWithBLOBs = articleService.selectByPrimaryKey(article_id);
		model.addAttribute("articleWithBLOBs", articleWithBLOBs);

		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);
		return "edit/writer";
	}

	// 查看文章详细内容
	@RequestMapping("/selectByPrimaryKey/{article_id}")
	public String selectByPrimaryKey(@PathVariable Integer article_id, Model model,HttpSession session) {
		ArticleWithBLOBs articleWithBLOBs = articleService.selectByPrimaryKeyWithCategoryAndUserinfo(article_id);
		model.addAttribute("articleWithBLOBs", articleWithBLOBs);

		// 查询出最新发布的文章
		List<Article> recentNewsArticleList = articleService.selectRecentNewsOrderByDescWithLimit(articleLimit);
		model.addAttribute("recentNewsArticleList", recentNewsArticleList);

		// 查询出所有类别
		List<Category> categoryList = categoryService.selectCategorys();
		model.addAttribute("categoryList", categoryList);

		// 查询能显示的评论
		Byte checkedNumber = 1;
		List<Comment> commentList = commentService.selectCommentListByCheckedNumber(checkedNumber, article_id);
		model.addAttribute("commentList", commentList);

		// 查询出最近日期的评论
		List<Comment> recentNewsCommentList = commentService.selectRecentNewsOrderByDescWithLimit(commentLimit,
				checkedNumber);
		model.addAttribute("recentNewsCommentList", recentNewsCommentList);

		// 查询出友链
		List<FriendLinks> firendLikeList = firendLikesService.friendLinkAllList();
		model.addAttribute("firendLikeList", firendLikeList);


		// 查询出上一篇下一篇
		Integer pageSize = 1;
		PagePojo independentUpAndDownPage = articleService.PersonService(article_id, pageSize);
		model.addAttribute("independentUpAndDownPage", independentUpAndDownPage);
		return "edit/independentShow";
	}
	
	@RequestMapping("/updatePic")
	public String updatePic(MultipartFile pictureFile) throws Exception{
		String name = UUID.randomUUID().toString().replaceAll("-", "");
		//jpg
		String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
		
		pictureFile.transferTo(new File("D:\\upload\\" + name + "." + ext));
		return null;
	}
}
