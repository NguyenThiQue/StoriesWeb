package Read.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Role")
public class RoleEntity {
	@Id @GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "rolename")
	private String rolename;
	public RoleEntity() {
		super();
	}
	public RoleEntity(int id, String rolename) {
		super();
		this.id = id;
		this.rolename = rolename;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
	
}
