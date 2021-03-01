package pet.mvc.shopservice;

import org.springframework.web.multipart.MultipartFile;

import pet.mvc.shopdomain.Product;





public interface FileUploadService {
	
	String saveStore(MultipartFile file,Product product);
	boolean writeFile(MultipartFile file, String saveFileName);
}
