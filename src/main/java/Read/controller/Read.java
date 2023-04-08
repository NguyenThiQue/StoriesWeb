package Read.controller;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Read.entity.CategoryEntity;
import Read.entity.StoryEntity;
@Transactional
@Controller
public class Read {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "read/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session, ModelMap modelMap) {
		List<StoryEntity> list = this.getStory();
		modelMap.addAttribute("storys", list);
		
		List<StoryEntity> list3 = this.getStoryNew();
		modelMap.addAttribute("storynew", list3);
		
		List<StoryEntity> listdx = this.getStoryDX();
		modelMap.addAttribute("storydx", listdx);
		
		List<StoryEntity> listSearch = this.searchStory(request.getParameter("searchInput"));
		modelMap.addAttribute("search", listSearch);
		
		List<CategoryEntity> listCategory = this.getCategory();
		modelMap.addAttribute("category", listCategory);
		
		
		
		return "read/indexRead";
	}

	
	public List<StoryEntity> getStory() {
		Session session2 = factory.getCurrentSession();
		String hql = "FROM StoryEntity";
		Query query = session2.createQuery(hql);
		List<StoryEntity> list = query.list();
		return list;
	}
	
	public List<StoryEntity> getStoryNew() {
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM StoryEntity ORDER BY id DESC";
		Query query3 = (Query) session3.createQuery(hql3).setMaxResults(1);
		List<StoryEntity> list3 = query3.list();
		return list3;
	}
	
	
	public List<StoryEntity> getStoryDX() {
		Session sessiondx = factory.getCurrentSession();
		String hqldx = "FROM StoryEntity ORDER BY id DESC";
		Query query3 = (Query) sessiondx.createQuery(hqldx).setMaxResults(4);
		List<StoryEntity> listdx = query3.list();
		return listdx;
	}
	
	public StoryEntity StoryId(int id) 
	{
		Session session = factory.getCurrentSession();
		String hql ="FROM StoryEntity s WHERE s.id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		StoryEntity list = (StoryEntity) query.list().get(0); 
		return list;
	}
	
	@RequestMapping(value="readDetail/{id}.htm", params = "linkDetail", method = RequestMethod.GET)
	public String StoryDetail(HttpServletRequest request, ModelMap modelMap,
			@PathVariable("id") Integer id) {
		List<StoryEntity> list = this.getStory();
		modelMap.addAttribute("storys", list);
		modelMap.addAttribute("detail", this.StoryId(id));
			
		List<CategoryEntity> listCategory = this.getCategory();
		modelMap.addAttribute("category", listCategory);
		
		List<StoryEntity> listSearch = this.searchStory(request.getParameter("searchInput"));
		modelMap.addAttribute("search", listSearch);
		
		return "read/readDetail";
	}
	
	
	public List<StoryEntity> searchStory(String title) {
		Session session2 = factory.getCurrentSession();
		String hql = "FROM StoryEntity WHERE title LIKE :title";
		Query query = session2.createQuery(hql);
		query.setParameter("title", "%" + title + "%");
		List<StoryEntity> list = query.list();
		return list;
	}	

//	public List<StoryEntity> se(String title) {
//		Session session2 = factory.getCurrentSession();
//		String hql = "SELECT s.title LIKE :title FROM StoryEntity s WHERE s.category.id";
//		Query query = session2.createQuery(hql);
//		query.setParameter("title", "%" + title + "%");
//		List<StoryEntity> list = query.list();
//		return list;
//	}
	
	@RequestMapping(value="category/{id}.htm", params = "linkCategory", method = RequestMethod.GET)
	public String Category(HttpServletRequest request, ModelMap modelMap,
			@PathVariable("id") Integer id) {
		
		List<StoryEntity> listCategory =  (List<StoryEntity>) this.CategoryID(id).getStory();
		modelMap.addAttribute("categoryDetail", listCategory);
		
		modelMap.addAttribute("categoryName", this.CategoryID(id));
		List<CategoryEntity> listCategory1 = this.getCategory();
		modelMap.addAttribute("category1", listCategory1);
		
//		List<StoryEntity> listSearch = this.searchStory(request.getParameter("searchInputt"));
//		modelMap.addAttribute("searchh", listSearch);
		
		return "read/category";
	}
	
	
	
	public CategoryEntity CategoryID(int id) 
	{
		Session session = factory.getCurrentSession();
		String hql ="FROM CategoryEntity s WHERE s.id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		CategoryEntity list = (CategoryEntity) query.list().get(0); 
		return list;
	}
	public List<CategoryEntity> getCategory() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CategoryEntity";
		Query query = session.createQuery(hql);
		List<CategoryEntity> list = query.list();
		return list;
	}
}
