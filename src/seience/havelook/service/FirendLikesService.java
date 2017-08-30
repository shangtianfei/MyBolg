package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.FriendLinksMapper;
import seience.havelook.pojo.FriendLinks;

@Service
public class FirendLikesService {
	@Autowired
	FriendLinksMapper friendLinksMapper;

	public List<FriendLinks> friendLinkAllList() {
		// TODO Auto-generated method stub
		return friendLinksMapper.friendLinkAllList();
	}

	public FriendLinks selectByPrimaryKey(Short id) {
		// TODO Auto-generated method stub
		return friendLinksMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(FriendLinks friendLinks) {
		// TODO Auto-generated method stub
		return friendLinksMapper.updateByPrimaryKey(friendLinks);
	}

	public void deleteByPrimaryKey(Short friendLikes_id) {
		// TODO Auto-generated method stub
		friendLinksMapper.deleteByPrimaryKey(friendLikes_id);
	}

	public int insert(FriendLinks friendLinks) {
		return friendLinksMapper.insert(friendLinks);
	}

}
