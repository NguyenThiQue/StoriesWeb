package Read.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Story")
public class StoryEntity {
	@Id @GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "title")
	private String title;
	@Column(name = "descpt")
	private String descpt;
	@Column(name = "character")
	private String character;
	@ManyToOne
	@JoinColumn(name = "categoryID")
	private CategoryEntity category;
	@ManyToOne
	@JoinColumn(name = "targetauID")
	private AudienceEntity audience;
	@Column(name = "images")
	private String images;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private UserEntity user;
	@OneToMany(mappedBy = "idStory", fetch = FetchType.EAGER)
	private Collection<Chapter> chapters;
	public StoryEntity() {
		super();
	}

	public StoryEntity(int id, String title, String descpt, String character, CategoryEntity category,
			AudienceEntity audience, String images, UserEntity user, Collection<Chapter> chapters) {
		super();
		this.id = id;
		this.title = title;
		this.descpt = descpt;
		this.character = character;
		this.category = category;
		this.audience = audience;
		this.images = images;
		this.user = user;
		this.chapters = chapters;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescpt() {
		return descpt;
	}
	public void setDescpt(String descpt) {
		this.descpt = descpt;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public CategoryEntity getCategory() {
		return category;
	}
	public void setCategory(CategoryEntity category) {
		this.category = category;
	}
	public AudienceEntity getAudience() {
		return audience;
	}
	public void setAudience(AudienceEntity audience) {
		this.audience = audience;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}

	public Collection<Chapter> getChapters() {
		return chapters;
	}

	public void setChapters(Collection<Chapter> chapters) {
		this.chapters = chapters;
	}
	
	
	
}
