package Read.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "[User]")
public class UserEntity {
	
	@Id
	@Column(name = "username")
	private String username;
	@Column(name = "password")
	private String password;
	@ManyToOne
	@JoinColumn(name = "idRole")
	private RoleEntity role;
	@Column(name = "vaitro")
	private Boolean vaitro;
	
	
	
	public UserEntity() {
		super();
	}
	public UserEntity(String username, String password, RoleEntity role, Boolean vaitro) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
		this.vaitro = vaitro;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public RoleEntity getRole() {
		return role;
	}
	public void setRole(RoleEntity role) {
		this.role = role;
	}
	public Boolean getVaitro() {
		return vaitro;
	}
	public void setVaitro(Boolean vaitro) {
		this.vaitro = vaitro;
	}
	
	
	
}
