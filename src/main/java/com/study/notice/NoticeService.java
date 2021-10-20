package com.study.notice;

import java.util.List;
import java.util.Map;

import com.study.contents.ContentsDTO;

public interface NoticeService {

	int total(Map map);

	List<ContentsDTO> list(Map map);

	int create(NoticeDTO dto);

	void upCnt(int noticeno);

	NoticeDTO read(int noticeno);

	int passwd(Map map);

	int update(NoticeDTO dto);

	int delete(int noticeno);	

}
