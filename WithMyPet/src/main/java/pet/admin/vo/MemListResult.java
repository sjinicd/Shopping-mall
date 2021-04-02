package pet.admin.vo;

import java.util.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pet.member.vo.MemberVO;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemListResult {
	private int currentPage;
	private long totalCount;
	private List<MemberVO> list;
	private long totalPageCount;
	private String keyword;
	private int startRow;
	private int endRow;
	private List<MemberOption> memberOption;
	private List<String> memberPic;

	public MemListResult(int currentPage, long totalCount, String keyword, List<MemberVO> list, List<MemberOption> memberOption, List<String> memberPic) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.keyword = keyword;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
		this.memberOption = memberOption;
		this.memberPic = memberPic;
	}
	private long calTotalPageCount() {
		long tpc = totalCount/7; 
		if(totalCount%7 != 0) tpc++;
		return tpc;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}
	public List<MemberVO> getList() {
		return list;
	}
	public void setList(List<MemberVO> list) {
		this.list = list;
	}
	public long getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(long totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getStartRow() {
		return (currentPage-1) * 7;
	}
	public int getEndRow() {
		return currentPage * 7;
	}
	public void setMemberOption(List<MemberOption> memberOption) {
		this.memberOption = memberOption;
	}
	public List<MemberOption> getMemberOption() {
		return memberOption;
	}
	public void setMemberPic(List<String> memberPic) {
		this.memberPic = memberPic;
	}
	public List<String> getMemberPic() {
		return memberPic;
	}
}
