package pet.member.service;
import java.util.ArrayList;
import pet.member.vo.FollowVO;
public interface FollowService {
   //�ȷο� �߰�
   public void addfollow(FollowVO vo) throws Exception;
   //�ȷ��� select
   public ArrayList<FollowVO> following(int vo);
   //�ȷο� select
   public ArrayList<FollowVO> follower(int vo);
 //�ȷ��� delete
   public ArrayList<FollowVO> deleteFollowing(String vo);
 //�ȷο� delete
   public ArrayList<FollowVO> deleteFollower(String vo);
}















