package pet.walk.service;

import java.util.Hashtable;
import pet.member.vo.MypagePetVO;
import pet.walk.vo.CmtVo;
import pet.walk.vo.Comment;
import pet.walk.vo.Walk;
import pet.walk.vo.WalkListResult;
import pet.walk.vo.joinVo;

public interface WalkService {
	void insertWalk(Walk dto);
	Walk getWalk(long idx);
	WalkListResult getListS(int cp, int ps, String orderType, String keyword);
	CmtVo getWalkCmt(long idx);
	boolean insertWalkCmt(Comment dto);
	void walkUpdate(Walk dto);
	void walkDelete(long idx);
	Comment getWalkCmtData(long idx);
	boolean insertWalkJoin(joinVo vo, long cmtIdx);
	long selectByCmtIdx(long cmtIdx);
	void addHeart(joinVo vo);
	void deleteHeart(joinVo vo);
	int getWalkLike(long idx);
	MypagePetVO getCmtPetData(long member_number);
	Hashtable<String, Object> getMemData(long member_number);
	long checkLikeToggle(long walk_idx, long member_number);
	String getWalkPic(long member_number);
}
