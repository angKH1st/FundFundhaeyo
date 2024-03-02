package com.kh.semi1st.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {
	/** 원본파일 전달 받아서 파일명 수정작업 후 수정된 파일을 반환시켜주는 메소드
	 *  @param originFile
	 *  @return
	 */
	@Override
	public File rename(File originFile) {
		// 원본파일명 추출
		String originName = originFile.getName();

		// 파일 업로드 시간
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

		// 5자리 랜덤값(int ranNum)
		int ranNum = (int) (Math.random() * 90000 + 10000);

		// 원본 파일 확장자(String ext) : 마지막 .의 위치를 찾은 후 그 뒤를 읽기
		String ext = originName.substring(originName.lastIndexOf("."));

		String changeName = currentTime + ranNum + ext;

		return new File(originFile.getParent(), changeName);
	}
}
