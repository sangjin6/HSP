<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp"%>
	
	<div class="breadcrumb-area breadcrumb-area-padding-2 bg-gray-2">
        <div class="custom-container">
            <div class="breadcrumb-content text-center">
                <ul>
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li class="active">Inquiry</li>
                </ul>
            </div>
        </div>
    </div>
		<div class="blog-details-area padding-30-row-col pt-75 pb-75">
            <div class="container">
                <div class="row flex-row-reverse">
                    <div class="col-lg-8">
	<div class="blog-details-wrapper">
                            <div class="blog-details-top-content">
                                
                                <h1>${inquiry.inquiry_title}</h1>
                                <div class="blog-meta-3">
                                    <ul>
                                        <li><a href="#"> 등록자</a> </li>
                                        <li><i class="far fa-calendar"></i> ${inquiry.inquiry_regit_date}</li>
                                    </ul>
                                </div>
                            </div>
                            <p>${inquiry.inquiry_content}</p>

                            <div class="blog-reply-wrapper">
                                
                                <form action="#">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6">
                                            <div class="input-style blog-input-style">
                                                ---------------------------------------------------
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="input-style blog-input-style">
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="col-12">
                                            <div class="textarea-style blog-textarea-style">
                                                ${inquiry.answer}
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="blog-comment-submit">
<!-- 버튼 원래 있던 자리 -->
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 
		<form name="edit" action="/inquiry/${inquiry.inquiry_id}/editform" method="get">
			<button type="submit">문의 수정</button>
		</form>
		<form name="list" action="/inquiry/${inquiry.product_id}" method="get">
			<button type="submit">목록으로</button>
		</form>
		 -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>