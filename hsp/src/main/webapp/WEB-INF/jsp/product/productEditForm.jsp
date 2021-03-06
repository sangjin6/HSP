<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Update</title>

<script src="/resources/ckeditor/ckeditor.js"></script>

<style>
	.image_container img { margin:20px 0; }
	.small1 { width: 500px; }
	.small2 { height: 100px; }
</style>

</head>
<body>
	<h1>상품 수정</h1>
	
	<!-- 	
	<form name="edit" action="/hsp/product" method="post" enctype="multipart/form-data">
		<input type="hidden" name="_method" value="PUT" />
		 -->
	<form name="edit" action="/hsp/productupdate" method="post" enctype="multipart/form-data">
		<!-- <input type="hidden" name="_method" value="PUT" />  -->
		
		<div>
			채널 ID : <input type="text" name="channel_id" value=${product.channel_id} id="channel_id" readonly />
		</div>

		<div>
			상품 ID : <input type="text" name="product_id" value=${product.product_id} id="product_id" readonly />
		</div>

		<div>
			상품 제목 : <input type="text" name="product_name" placeholder=${product.product_name} id="product_name" />
		</div>
		
		<div>
			상품 사진 : <img class='small1' src="/hsp/product/display?filename=${product.product_img}"/>
			<input type="hidden" name="product_img" value="${product.product_img}">
		</div>
		
		<input type="file" name="attach" id="image" accept="image/*" onchange="setThumbnail(event);"/> 
		<div id="image_container"></div> 
		<script> 
		function setThumbnail(event) {
			var reader = new FileReader(); 
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				document.querySelector("div#image_container").appendChild(img); 
			};
				
			reader.readAsDataURL(event.target.files[0]); 
		} 
		</script>
		
		<div>
			상품 가격 : <input type="text" name="product_price" placeholder=${product.product_price} id="product_price" />
		</div>

		<div>
			제공할 할인율 : <input type="text" name="discount" placeholder=${product.discount} id="discount" />
		</div>

		<div>
			주문 가능한 주기 : <select name="orderable_cycle" id="orderable_cycle">
							<option value="S">일반</option>
							<option value="W">정기</option>
						  </select>
		</div>

		<textarea rows="5" cols="50" id="productDes" name="product_detail">${product.product_detail}</textarea>

		<script>
			var ckeditor_config = {
				resize_enaleb : false,
				enterMode : CKEDITOR.ENTER_BR,
				shiftEnterMode : CKEDITOR.ENTER_P,
				filebrowserUploadUrl : "/hsp/product/ckUpload"
			};

			CKEDITOR.replace("productDes", ckeditor_config);
		</script>
		
		<div>
			<button type="submit">상품 수정</button>
		</div>
	</form>

</body>
</html>