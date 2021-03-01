package pet.mvc.shopservice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Pay;


public interface CartService {
	
	public void addProductsInCart(Cart cart) throws Exception;
	public List<Cart> findCartProducts(long product_code) throws Exception;
	public Pay selectPay(int member_number) throws Exception;
	public void updatePayS(Pay pay) throws Exception;
}
