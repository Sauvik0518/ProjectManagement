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
import static com.sun.xml.ws.spi.db.BindingContextFactory.LOGGER;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author ANIK
 */
@Stateless
public class PM implements PMLocal {

    @PersistenceContext(unitName = "ProjectManagement-ejbPU")
    private EntityManager em;
    
    Demo demo;
    
    @Override
    public void addInDb(Demo demo){
        em.persist(demo);
    }

    @Override
    public void createStatus(ProjectstatusPmt status) {
        em.persist(status); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProjectstatusPmt> getAllData() {
       return em.createNativeQuery("select * from projectstatus_pmt order by project_startingdate", ProjectstatusPmt.class).getResultList(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void uploadFile(Files files) {
        em.persist(files); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Files getDirectoryPath(String name) {
        return (Files) em.createNativeQuery("select * from files where file_name=?1", Files.class).setParameter(1, name).getSingleResult(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProjectstatusPmt getDataByProjectId(String id) {
        return em.createNamedQuery("ProjectstatusPmt.findByProjectId", ProjectstatusPmt.class).setParameter("projectId", id).getSingleResult();
    }

    @Override
    public void meetingRequest(Meetings meetings) {
        em.persist(meetings); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Meetings> getAllMeetings() {
        return em.createNativeQuery("select * from meetings order by meeting_date", Meetings.class).getResultList();
    }

    @Override
    public Meetings getMeetingsByMeetingId(String mId) {
        return em.createNamedQuery("Meetings.findByMeetingId", Meetings.class).setParameter("meetingId", mId).getSingleResult();
    }

    @Override
    public void editMeeting(Meetings emeeting) {
        em.merge(emeeting); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteMeeting(String id) {
        String query = "delete from meetings where meeting_id=?1";
        em.createNativeQuery(query).setParameter(1, id).executeUpdate(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void editStatus(ProjectstatusPmt status) {
        em.merge(status); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Meetings> search(String date) {
        String baseQuery = "select * from meetings where meeting_id is not null";
        if (date != "") {
            baseQuery = baseQuery + " and lower(meeting_date) like '%" + date + "%'";
        }
        
        return em.createNativeQuery(baseQuery, Meetings.class).getResultList();
    }

    @Override
    public List<ProjectstatusPmt> searchProject(String name) {
        String baseQuery = "select * from projectstatus_pmt where project_id is not null";
         if (name != "") {
            baseQuery = baseQuery + " and lower(project_name) like '%" + name + "%'";
        }
        return em.createNativeQuery(baseQuery, ProjectstatusPmt.class).getResultList(); 
    }

    @Override
    public void addFilesInDb(FilesInformation fileinfo) {
        em.persist(fileinfo); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<FilesInformation> getAllFiles() {
        return em.createNativeQuery("select * from files_information order by uploaded_time", FilesInformation.class).getResultList(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Menu> getMenuByUsername(String email) {
       return em.createNativeQuery("select * from menu where menuid in (select menuid from role_mapping where role in (select role from groups where email=?1)) order by menuid", Menu.class).setParameter(1, email).getResultList();
    }

    

    @Override
    public String generateHashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(password.getBytes());

            byte byteData[] = md.digest();

            StringBuffer hexString = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                String hex = Integer.toHexString(0xff & byteData[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            //System.out.println("Hex format : " + hexString.toString());
            return hexString.toString();
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(PM.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void changePassword(Users userTable) {
        LOGGER.log(Level.INFO, "entered changePassword with email " + userTable.getEmail() + " and password " + userTable.getPassword());

        em.merge(userTable);
    }

    
}
