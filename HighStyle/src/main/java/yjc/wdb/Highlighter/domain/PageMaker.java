package yjc.wdb.Highlighter.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 10;
	
	private Criteria cri;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}

	private void calcData(){
		endPage = (int) (Math.ceil(cri.getPage()/
				(double) displayPageNum) * displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount/
				(double)cri.getPerPageNum()));
		
		if(endPage > tempEndPage){
			endPage = tempEndPage;
		}
		
		prev = startPage == 1? false:true;
		next = endPage * cri.getPerPageNum() >= totalCount? false:true;
	}
	
	public String makeQuery(int page){
		UriComponents uriComponents = 
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.build();
		
		return uriComponents.toUriString();
	}
	public String makeSearchQuery(int page){
		UriComponents uriComponents = 
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.queryParam("onoff", ((privateSearchCriteria)cri).getOnoff())
				.queryParam("pg", ((privateSearchCriteria)cri).getPg())
				.queryParam("subject", ((privateSearchCriteria)cri).getSubject())
				.queryParam("location2", ((privateSearchCriteria)cri).getLocation2())
				.queryParam("lo17", ((privateSearchCriteria)cri).getLo17())
				.queryParam("college", ((privateSearchCriteria)cri).getCollege())
				.queryParam("tuit_fees", ((privateSearchCriteria)cri).getTuit_fees())
				.queryParam("ext_obj", ((privateSearchCriteria)cri).getExt_obj())
				.queryParam("ext_exp_y", ((privateSearchCriteria)cri).getExt_exp_y())
				.queryParam("ext_exp_m", ((privateSearchCriteria)cri).getExt_exp_m())
				.queryParam("gender", ((privateSearchCriteria)cri).getGender())
				.queryParam("ext_way", ((privateSearchCriteria)cri).getExt_way())
				.queryParam("class_lev", ((privateSearchCriteria)cri).getClass_lev())
				.build();
		
		return uriComponents.toUriString();
	}
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	
}
