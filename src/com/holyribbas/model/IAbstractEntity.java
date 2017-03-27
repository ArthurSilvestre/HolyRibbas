package com.holyribbas.model;

public interface IAbstractEntity {
	
	public abstract int getId();
	
	public abstract void setId(int id);
	
	@Override
	public boolean equals(Object obj);
	
	//{
	//AbstractEntity entity = (AbstractEntity) obj; 
	//return this.getId() == entity.getId();
	//}
	
	public boolean hasValidId();
	//{
	//return getId() != null && getId() > 0;
	//}

}
