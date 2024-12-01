package pm.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;

import pm.dao.Productdao;
import pm.dto.MyProduct;


@Service
public class ProductService {
	@Autowired
	Productdao dao;
	public String addproduct(HttpSession session, ModelMap map) {
		if(session.getAttribute("username")==null) {
			map.put("message", "Invalid Session,First Login");
			return "login.jsp";
		}
		else {
			return "addProduct.jsp";
		}

}

	public String addproduct(HttpSession session, ModelMap map, MyProduct product) {
		
		if (session.getAttribute("username") != null) {
			dao.save(product);
			map.put("message", "Product Added Success");
			return "Home.jsp";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}

	}

	public String fetchProducts(HttpSession session, ModelMap map) {
		if (session.getAttribute("username") != null) {
			List<MyProduct> products=dao.findProducts();
			if(products.isEmpty()) {
			map.put("message", "No products Found");
			return "Home.jsp";
		} else {
			map.put("products",products);
			return "products.jsp";
		}
		
	}
		else {
			map.put("message", "Invalid Session,Login First");
			return "login.jsp";
		}
	}

	public String deleteProduct(@RequestParam int id, ModelMap map,HttpSession session) {
		if (session.getAttribute("username") != null) {
			
			dao.delete(id);
			map.put("message", "Product Deleted Success");
			return "fetch-products";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
		
	}

	public String editProduct(MyProduct product, HttpSession session, ModelMap map) {
if (session.getAttribute("username") != null) {
			
			dao.edit(product);
			map.put("message", "Product Updated Success");
			return "fetch-products";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}

	public String editProduct(int id, HttpSession session, ModelMap map) {
if (session.getAttribute("username") != null) {
			
			MyProduct product=dao.findProduct(id);
			map.put("p", product);
			return "edit-product.jsp";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}
}

	
		
	
