/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.myproject;

import com.project.entities.Demo;
import com.project.entities.Files;
import com.project.entities.FilesInformation;
import com.project.entities.Meetings;
import com.project.entities.Menu;
import com.project.entities.ProjectstatusPmt;
import com.project.entities.Properties;
import com.project.entities.Users;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author ANIK
 */
@Local
public interface PMLocal {
    public void addInDb(Demo demo);
    
    public List<Menu> getMenuByUsername(String email);
    
    public void createStatus(ProjectstatusPmt status);
    
    public List<ProjectstatusPmt> getAllData();
    
    public ProjectstatusPmt getDataByProjectId(String id);
    
    public void addFilesInDb(FilesInformation fileinfo);
    
    public void uploadFile(Files files);
    
    public List<FilesInformation> getAllFiles();
    
    public Files getDirectoryPath(String name);
    
    public void meetingRequest(Meetings meetings);
    
    public List<Meetings> getAllMeetings();
    
    public Meetings getMeetingsByMeetingId(String mId);
    
    public void editMeeting(Meetings emeeting);
    
    public void deleteMeeting(String id);
    
    public void editStatus(ProjectstatusPmt status);
    
    public List<Meetings> search(String date);
    
    public List<ProjectstatusPmt> searchProject(String name);
    
    public void changePassword(Users userTable);
    
    public String generateHashPassword(String password);
}
