package pm.dao;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import pm.dto.MyUser;
@Repository   //same as component but it tells that that here is where the database logic is written
public class Userdao{
	@Autowired
	EntityManager manager;
	public void save(MyUser user) //here it uses Model Attribute where alll the requestparam is performed internally
	{
		manager.getTransaction().begin();
		manager.persist(user);
		manager.getTransaction().commit();

	}
	public boolean checkUsername(String username) {
		if(findUser(username)==null) {
			return false;
		}
		else {
			return true;
		}
	}
	public MyUser findUser(String username) {
		return manager.find(MyUser.class,username);
	}
}

