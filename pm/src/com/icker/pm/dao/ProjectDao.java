package com.icker.pm.dao;

import java.util.List;

import com.icker.pm.common.util.PageUtil;
import com.icker.pm.pojo.Project;
import com.icker.pm.pojo.ProjectMember;
import com.icker.pm.pojo.Task;
import com.icker.pm.pojo.TasksAssign;
import com.icker.pm.pojo.User;


public interface ProjectDao {
	
	public String saveProject(Project project) throws Exception;
	public String saveProjectMember(ProjectMember pm) throws Exception;
	/**
	 * 删除项目
	 * @param project	项目
	 * @param projectMember	项目成员
	 * @param task	任务
	 * @param tasksAssigns	任务分配
	 * @return
	 */
	public boolean deleteProject(Project project, ProjectMember projectMember, Task task, List<TasksAssign> tasksAssigns) throws Exception;
	public boolean deleteProject(Project project) throws Exception;
	public Project findProjectById(Project project) throws Exception;
	public List<Project> findByUser(User user) throws Exception;
	public List<Project> findAll() throws Exception;
	public ProjectMember findProjectMember(ProjectMember projectMember) throws Exception;
	public List<Project> pagingFindByUser(User user, PageUtil pageUtil) throws Exception;
	public void deleteProjectMember(ProjectMember pm) throws Exception;
	
}
