package pm.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pm.dto.MyProduct;



@Repository
public class Productdao {
	@Autowired
	EntityManager manager;

	public void save(MyProduct product) {
		manager.getTransaction().begin();
		manager.persist(product);
		manager.getTransaction().commit();

}
	public List<MyProduct> findProducts(){
		return manager.createNativeQuery("select * from MyProduct",MyProduct.class).getResultList();

	
}
	public void delete(int id) {
		// TODO Auto-generated method stub
		MyProduct product=manager.find(MyProduct.class, id);
		manager.getTransaction().begin();
		manager.remove(product);
		manager.getTransaction().commit();
		
	}
	public void edit(MyProduct product) {
		manager.getTransaction().begin();
		manager.merge(product);
		manager.getTransaction().commit();
		
	}
	public MyProduct findProduct(int id) {
		// TODO Auto-generated method stub
		return manager.find(MyProduct.class,id);
	}
}
