package com.hsp.certification;

public interface CertificationService {
	/* 이메일 인증 */
	public boolean certEmail(String email);
	
	/* 계좌인증 */
	public void certAccount();
	
}