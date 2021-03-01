package pet.mvc.shopmapper;



import java.util.List;

import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Pay;
import pet.mvc.shopdomain.Product_pic;


public interface CartMapper {
	List<Cart> selectCountInCart(long product_code);
	void insertProductsInCart(Cart cart);
	Pay selectPay(int member_number);
	void insertFile(Product_pic product_pic);
	void updateOrder(Pay pay);
}
