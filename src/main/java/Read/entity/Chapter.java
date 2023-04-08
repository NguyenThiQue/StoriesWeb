package Read.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Chapters")
public class Chapter {
	@Id
	@GeneratedValue
	private Integer id;
	private String title;
	private String contents;
	@ManyToOne
	@JoinColumn(name="idStory")
	private CategoryEntity idStory;

	
	public Chapter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Chapter(Integer id, String title, String contents, CategoryEntity idStory) {
		super();
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.idStory = idStory;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public CategoryEntity getIdStory() {
		return idStory;
	}
	public void setIdStory(CategoryEntity idStory) {
		this.idStory = idStory;
	}
}
