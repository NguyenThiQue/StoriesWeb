package Read.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
public class CategoryEntity {
	@Id @GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
	private Collection<StoryEntity> story;
	public CategoryEntity() {
		super();
	}
	public CategoryEntity(int id, String name, Collection<StoryEntity> story) {
		super();
		this.id = id;
		this.name = name;
		this.story = story;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Collection<StoryEntity> getStory() {
		return story;
	}
	public void setStory(Collection<StoryEntity> story) {
		this.story = story;
	}
	
}
