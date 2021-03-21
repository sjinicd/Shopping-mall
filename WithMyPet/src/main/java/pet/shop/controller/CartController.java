package pet.shop.controller;


import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import pet.shop.domain.Cart;
import pet.shop.domain.OrderSu;
import pet.shop.domain.Pay;
import pet.shop.domain.Product;
import pet.shop.service.CartService;
import pet.shop.service.ProductService;


@Log4j
@Controller
public class CartController {
	
	
	@Autowired
	private Cart cart;
	@Resource(name="CartServiceImpl")
	private CartService service;
	@Resource(name="ProductServiceImpl")
	private ProductService service2;

	
	//����Ʈ �ҷ�����
	@GetMapping("/del")
	public String cart(Cart cart,HttpSession session,int idx) throws Exception {
		log.info("##����"+idx);
		ArrayList<Cart> cartSession = (ArrayList<Cart>)session.getAttribute("cartLists");
		cartSession.remove(idx);
		session.setAttribute("cartLists", cartSession);
		//service.deleteCartS(product_code);
		return "/shop/cart";
	}
	
	@PostMapping("/cart")//���۵� ��ǰ ��ȣ�� �޴´�.
	public ModelAndView addProductsInCart(HttpServletRequest request, Cart cart,
	HttpServletResponse response) throws Exception{
		log.info("##������ īƮ��"+cart);
		HttpSession session =request.getSession();
		ArrayList<Cart> cartLists = new ArrayList<Cart>();
		//����Ʈ ����
		if(cart == null) return new ModelAndView("../","viewlists",null);
		//���࿡ cart�� ���� ���̸� �׳� �ε����� ���ư���!
		else {
			ArrayList<Cart> cartSession = (ArrayList)session.getAttribute("cartLists");
			//ArrayListŸ���� cartSession�� cartLists�� �ҷ�����.
			if(cartSession != null) {
				//���� cartSession�� ���� ������
				cartSession.add(cart);
				//���ǿ� cart��� ArrayList<Cart>������ ���밪�� add�����.
				log.info("����īƮ�ȿ�����"+cartSession);
				session.setAttribute("cartLists", cartSession);
				//�׸��� ���ǿ� ����� �� �ֵ��� cartSession�� setAttribute�����.
			}else {
				cartLists.add(cart);
				log.info("���� ���� ����"+cartSession);
				session.setAttribute("cartLists", cartLists);
			}
			//list��  product������ ��Ƴ��� ��
			ArrayList<Product> viewlists = new ArrayList<Product>();
			//���Ŀ� productŸ���� Arraylist�� �������ش���
			for(Cart list : cartLists) {
				//������ ���� cartLists�� ���빰�� ��  cartLists�� for���� �����ش�.
				long cart_product_code = list.getProduct_code();
				//�� ���� list�� product_code�� long Ÿ���� cart_product_code�� ���ٸ�
				Product product = service2.listS(cart_product_code);
				//������ ������ service2�� listS�޼ҵ忡 product_code�� �־� product�� ��ü ���빰�� �ҷ��� �� �ֵ��� �Ѵ�.
				viewlists.add(product);
				//���Ŀ� �� ������ �ִ� product�� viewlists�� �߰����ش�.(�־��ش�)
			}
			session.setAttribute("viewlists", viewlists);
			//�߰��� viewlists�� ���� session�� �־��ش�.
			log.info("$$viewlists:"+viewlists);
			ModelAndView mvvv = new ModelAndView("/shop/cart","viewlists",viewlists);
			return mvvv;
		}
	}
	
	@GetMapping("/order")
	public String order(@RequestParam int member_number) throws Exception {
		log.info("##���� get()���� ȣ��");
		ArrayList<Pay> pay = service.selectPay(member_number);
		return "/shop/order";
	}
	
	@ResponseBody
	@PostMapping("/order")
	public ModelAndView order(HttpSession session, String buyer_name, long buyer_code, String name, 
			String buyer_addr, String buyer_email, long amout
			) throws Exception{
			log.info("buyer_name: "+buyer_name+"name: "+name);
			//������ ���� orderSu�� �־��ֱ�.
			OrderSu ordersu = new OrderSu();
			ordersu.setProduct_code(buyer_code);
			ordersu.setOrdersu_name(buyer_name);
			ordersu.setOrdersu_addr(buyer_addr);
			ordersu.setOrdersu_email(buyer_email);
			//�־��� ���� ordersu�� DB�� insert���ֱ�.
			service.insertOrderSu(ordersu);
			session.setAttribute("ordersu", ordersu);
			log.info("ordersu:"+ordersu);
			ModelAndView mv = new ModelAndView("/shop/order","ordersu",ordersu);
			return mv;
			}
	
	@GetMapping("/orderSu")
	public ModelAndView orderSu(HttpSession session, int member_number) throws Exception{
		ArrayList<Pay> payUpdate = service.selectPay(member_number);
		session.setAttribute("pay", payUpdate);
		log.info("����(����)post() pay: "+payUpdate);
		ModelAndView mv = new ModelAndView("/shop/orderSu","pay",payUpdate);
		return mv;		
		}
	}
