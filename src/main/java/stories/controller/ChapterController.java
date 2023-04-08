package stories.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Read.entity.Chapter;
import Read.entity.StoryEntity;

@Transactional
@Controller
@RequestMapping("/chapter/")
public class ChapterController {
	@Autowired
	SessionFactory factory;

	public StoryEntity StoryID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM StoryEntity st WHERE st.id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		StoryEntity list = (StoryEntity) query.list().get(0);
		return list;
	}

	public List<Chapter> getChapters() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Chapter";
		Query query = session.createQuery(hql);
		List<Chapter> chapters = query.list();
		return chapters;
	}
	
	public Chapter getChapter(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Chapter WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		Chapter chapters = (Chapter) query.list().get(0);
		return chapters;
	}

	@RequestMapping(value = "index/{id}", method = RequestMethod.GET)
	public String index(ModelMap modelMap, @PathVariable("id") int id) {
		List<Chapter> listChapter = (List<Chapter>) this.StoryID(id).getChapters();
		modelMap.addAttribute("chapterList", listChapter);

		modelMap.addAttribute("storyID", this.StoryID(id));
		return "chapter/index";
	}

	@ModelAttribute("stories")
	public List<StoryEntity> getStories() {
		Session session = factory.getCurrentSession();
		String hql = "FROM StoryEntity";
		Query query = session.createQuery(hql);
		List<StoryEntity> stories = query.list();
		return stories;
	}

	/*
	 * @RequestMapping(value = "insert/{id}", method = RequestMethod.GET) public
	 * String insert(ModelMap modelMap, @PathVariable("id") int id) {
	 * modelMap.addAttribute("storyID", this.StoryID(id));
	 * 
	 * modelMap.addAttribute("chapter", new Chapter()); return "chapter/insert"; }
	 */

	@RequestMapping(value = "insert/{id}", method = RequestMethod.GET)
	public String insert(ModelMap modelMap, @PathVariable("id") int id) {
		/*
		 * List<StoryEntity> idStory = (List<StoryEntity>)
		 * this.getChapter(id).getIdStory(); System.out.println(idStory);
		 * modelMap.addAttribute("idStory", idStory); modelMap.addAttribute("storyID",
		 * this.getChapter(id));
		 */
		modelMap.addAttribute("storyID", this.StoryID(id));
		modelMap.addAttribute("chapter", new Chapter());
		return "chapter/insert";
	}

	@RequestMapping(value = "insert/{id}", method = RequestMethod.POST)
	public String insert(ModelMap modelMap, @ModelAttribute("chapter") Chapter chap) {

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(chap);
			t.commit();
			modelMap.addAttribute("message", "Add story successful!");
		} catch (Exception e) {
			t.rollback();
			modelMap.addAttribute("message", "Add story failure!");
		} finally {
			session.close();
		}
		/* modelMap.addAttribute("chapter", getChapters()); */
		return "chapter/index";
	}

	@RequestMapping(value = "update/{idStory}/{id}", method = RequestMethod.GET)
	public String update(ModelMap modelMap,@PathVariable("idStory") int idStory, @PathVariable("id") int id) {
		Chapter chapterUpdate = getChapter(id);
		modelMap.addAttribute("storyID", this.StoryID(idStory));
		modelMap.addAttribute("updateChapter", chapterUpdate);
		return "chapter/update";
	}

	@RequestMapping("update/{id}")
	public String update(ModelMap modelMap, @PathVariable("id") int id, @ModelAttribute("chapter") Chapter chapter) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(chapter);
			t.commit();
			modelMap.addAttribute("message", "Update story successful!");
		} catch (Exception e) {
			t.rollback();
			modelMap.addAttribute("message", "Update story failure!");
		} finally {
			session.close();
		}
		List<Chapter> listChapter = (List<Chapter>) this.StoryID(id).getChapters();
		modelMap.addAttribute("chapterList", listChapter);
		return "chapter/index";
	}

	@RequestMapping("delete/{idStory}/{id}")
	public String delete(ModelMap modelMap, @PathVariable("idStory") int idStory, @ModelAttribute("chapter") Chapter chapter) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(chapter);
			t.commit();
			modelMap.addAttribute("message", "Delete chapter successful!");
		} catch (Exception e) {
			t.rollback();
			modelMap.addAttribute("message", "Delete chapter failure!");
		} finally {
			session.close();
		}
		List<Chapter> listChapter = (List<Chapter>) this.StoryID(idStory).getChapters();
		modelMap.addAttribute("chapterList", listChapter);
		return "chapter/index";
	}
}
