package com.hsp.product;

import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	public void registProduct(Product product, MultipartFile attach);
	public void updateProduct(Product product, MultipartFile attach); // Multipart 추가
	public void deleteProduct(Product product);
	public List<Product> viewProductList(); // 파라미터 Product -> X
	public Product viewProduct(Product product);
	
	public String imgUpload(MultipartFile attach);
	public ResponseEntity<Resource> display(String fileName);
}
