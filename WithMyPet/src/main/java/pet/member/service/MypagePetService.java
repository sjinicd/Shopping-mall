package pet.member.service;

import pet.member.vo.MemberVO;
import pet.member.vo.MypagePetVO;


public interface MypagePetService {

   
   //pet���� ����
   public void petUpdateDo(MypagePetVO vo) throws Exception;
   
   //pet���� select
   public MypagePetVO petMypage(int member_number);
   
  
}