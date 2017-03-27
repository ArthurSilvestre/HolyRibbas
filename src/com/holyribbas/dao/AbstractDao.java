package com.holyribbas.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.holyribbas.model.IAbstractEntity;

public abstract class AbstractDao {

	public EntityManager manager;

	public AbstractDao(EntityManager manager) {
		this.manager = manager;
	}

	public void inserir(IAbstractEntity aluno) {
		manager.getTransaction().begin();
		manager.merge(aluno);
		manager.getTransaction().commit();
	}

	public void atualizar(IAbstractEntity entity) {
		manager.merge(entity);
	}

	public void excluir(IAbstractEntity entity) {
		//entity = manager.find(entityClass(), entity.getId());
		manager.remove(entity);
	}

	public abstract Class<?> entityClass();
	
	public abstract String getClassName();

	public IAbstractEntity buscarPorId(int id) {
		return (IAbstractEntity) manager.find(entityClass(), id);
	}

    @SuppressWarnings("unchecked")
	public List<IAbstractEntity> findAll() {
	    EntityManagerFactory factory = Persistence.createEntityManagerFactory("test");
	    EntityManager entityManager = factory.createEntityManager();
	    entityManager.getTransaction().begin();
	    List<IAbstractEntity> listPersons = entityManager.createQuery("SELECT p FROM "+getClassName()+" p").getResultList();
	    entityManager.getTransaction().commit();
	    entityManager.close();
	    factory.close();
	    if (listPersons == null) {
	        System.out.println("No persons found . ");
	    } else {
	        for (IAbstractEntity person : listPersons) {
	        	listPersons.add(person);
	        }
	    }
	
	    return listPersons;
    }	
	
}
