/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANIK
 */
@Entity
@Table(name = "PROJECTSTATUS_PMT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProjectstatusPmt.findAll", query = "SELECT p FROM ProjectstatusPmt p"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectId", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectId = :projectId"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectName", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectName = :projectName"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectManager", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectManager = :projectManager"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectClient", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectClient = :projectClient"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectStartingdate = :projectStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findByProjectDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.projectDeadline = :projectDeadline"),
    @NamedQuery(name = "ProjectstatusPmt.findBySrsMembers", query = "SELECT p FROM ProjectstatusPmt p WHERE p.srsMembers = :srsMembers"),
    @NamedQuery(name = "ProjectstatusPmt.findBySrsStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.srsStartingdate = :srsStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findBySrsDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.srsDeadline = :srsDeadline"),
    @NamedQuery(name = "ProjectstatusPmt.findByDesignMembers", query = "SELECT p FROM ProjectstatusPmt p WHERE p.designMembers = :designMembers"),
    @NamedQuery(name = "ProjectstatusPmt.findByDesignStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.designStartingdate = :designStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findByDesignDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.designDeadline = :designDeadline"),
    @NamedQuery(name = "ProjectstatusPmt.findByDevelopmentMembers", query = "SELECT p FROM ProjectstatusPmt p WHERE p.developmentMembers = :developmentMembers"),
    @NamedQuery(name = "ProjectstatusPmt.findByDevelopmentStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.developmentStartingdate = :developmentStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findByDevelopmentDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.developmentDeadline = :developmentDeadline"),
    @NamedQuery(name = "ProjectstatusPmt.findByTestingMembers", query = "SELECT p FROM ProjectstatusPmt p WHERE p.testingMembers = :testingMembers"),
    @NamedQuery(name = "ProjectstatusPmt.findByTestingStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.testingStartingdate = :testingStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findByTestingDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.testingDeadline = :testingDeadline"),
    @NamedQuery(name = "ProjectstatusPmt.findByDocumentationMembers", query = "SELECT p FROM ProjectstatusPmt p WHERE p.documentationMembers = :documentationMembers"),
    @NamedQuery(name = "ProjectstatusPmt.findByDocumentationStartingdate", query = "SELECT p FROM ProjectstatusPmt p WHERE p.documentationStartingdate = :documentationStartingdate"),
    @NamedQuery(name = "ProjectstatusPmt.findByDocumentationDeadline", query = "SELECT p FROM ProjectstatusPmt p WHERE p.documentationDeadline = :documentationDeadline")})
public class ProjectstatusPmt implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "PROJECT_ID")
    private String projectId;
    @Size(max = 30)
    @Column(name = "PROJECT_NAME")
    private String projectName;
    @Size(max = 30)
    @Column(name = "PROJECT_MANAGER")
    private String projectManager;
    @Size(max = 30)
    @Column(name = "PROJECT_CLIENT")
    private String projectClient;
    @Size(max = 30)
    @Column(name = "PROJECT_STARTINGDATE")
    private String projectStartingdate;
    @Size(max = 30)
    @Column(name = "PROJECT_DEADLINE")
    private String projectDeadline;
    @Size(max = 30)
    @Column(name = "SRS_MEMBERS")
    private String srsMembers;
    @Size(max = 30)
    @Column(name = "SRS_STARTINGDATE")
    private String srsStartingdate;
    @Size(max = 30)
    @Column(name = "SRS_DEADLINE")
    private String srsDeadline;
    @Size(max = 30)
    @Column(name = "DESIGN_MEMBERS")
    private String designMembers;
    @Size(max = 30)
    @Column(name = "DESIGN_STARTINGDATE")
    private String designStartingdate;
    @Size(max = 30)
    @Column(name = "DESIGN_DEADLINE")
    private String designDeadline;
    @Size(max = 30)
    @Column(name = "DEVELOPMENT_MEMBERS")
    private String developmentMembers;
    @Size(max = 30)
    @Column(name = "DEVELOPMENT_STARTINGDATE")
    private String developmentStartingdate;
    @Size(max = 30)
    @Column(name = "DEVELOPMENT_DEADLINE")
    private String developmentDeadline;
    @Size(max = 30)
    @Column(name = "TESTING_MEMBERS")
    private String testingMembers;
    @Size(max = 30)
    @Column(name = "TESTING_STARTINGDATE")
    private String testingStartingdate;
    @Size(max = 30)
    @Column(name = "TESTING_DEADLINE")
    private String testingDeadline;
    @Size(max = 30)
    @Column(name = "DOCUMENTATION_MEMBERS")
    private String documentationMembers;
    @Size(max = 30)
    @Column(name = "DOCUMENTATION_STARTINGDATE")
    private String documentationStartingdate;
    @Size(max = 30)
    @Column(name = "DOCUMENTATION_DEADLINE")
    private String documentationDeadline;

    public ProjectstatusPmt() {
    }

    public ProjectstatusPmt(String projectId) {
        this.projectId = projectId;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectManager() {
        return projectManager;
    }

    public void setProjectManager(String projectManager) {
        this.projectManager = projectManager;
    }

    public String getProjectClient() {
        return projectClient;
    }

    public void setProjectClient(String projectClient) {
        this.projectClient = projectClient;
    }

    public String getProjectStartingdate() {
        return projectStartingdate;
    }

    public void setProjectStartingdate(String projectStartingdate) {
        this.projectStartingdate = projectStartingdate;
    }

    public String getProjectDeadline() {
        return projectDeadline;
    }

    public void setProjectDeadline(String projectDeadline) {
        this.projectDeadline = projectDeadline;
    }

    public String getSrsMembers() {
        return srsMembers;
    }

    public void setSrsMembers(String srsMembers) {
        this.srsMembers = srsMembers;
    }

    public String getSrsStartingdate() {
        return srsStartingdate;
    }

    public void setSrsStartingdate(String srsStartingdate) {
        this.srsStartingdate = srsStartingdate;
    }

    public String getSrsDeadline() {
        return srsDeadline;
    }

    public void setSrsDeadline(String srsDeadline) {
        this.srsDeadline = srsDeadline;
    }

    public String getDesignMembers() {
        return designMembers;
    }

    public void setDesignMembers(String designMembers) {
        this.designMembers = designMembers;
    }

    public String getDesignStartingdate() {
        return designStartingdate;
    }

    public void setDesignStartingdate(String designStartingdate) {
        this.designStartingdate = designStartingdate;
    }

    public String getDesignDeadline() {
        return designDeadline;
    }

    public void setDesignDeadline(String designDeadline) {
        this.designDeadline = designDeadline;
    }

    public String getDevelopmentMembers() {
        return developmentMembers;
    }

    public void setDevelopmentMembers(String developmentMembers) {
        this.developmentMembers = developmentMembers;
    }

    public String getDevelopmentStartingdate() {
        return developmentStartingdate;
    }

    public void setDevelopmentStartingdate(String developmentStartingdate) {
        this.developmentStartingdate = developmentStartingdate;
    }

    public String getDevelopmentDeadline() {
        return developmentDeadline;
    }

    public void setDevelopmentDeadline(String developmentDeadline) {
        this.developmentDeadline = developmentDeadline;
    }

    public String getTestingMembers() {
        return testingMembers;
    }

    public void setTestingMembers(String testingMembers) {
        this.testingMembers = testingMembers;
    }

    public String getTestingStartingdate() {
        return testingStartingdate;
    }

    public void setTestingStartingdate(String testingStartingdate) {
        this.testingStartingdate = testingStartingdate;
    }

    public String getTestingDeadline() {
        return testingDeadline;
    }

    public void setTestingDeadline(String testingDeadline) {
        this.testingDeadline = testingDeadline;
    }

    public String getDocumentationMembers() {
        return documentationMembers;
    }

    public void setDocumentationMembers(String documentationMembers) {
        this.documentationMembers = documentationMembers;
    }

    public String getDocumentationStartingdate() {
        return documentationStartingdate;
    }

    public void setDocumentationStartingdate(String documentationStartingdate) {
        this.documentationStartingdate = documentationStartingdate;
    }

    public String getDocumentationDeadline() {
        return documentationDeadline;
    }

    public void setDocumentationDeadline(String documentationDeadline) {
        this.documentationDeadline = documentationDeadline;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (projectId != null ? projectId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProjectstatusPmt)) {
            return false;
        }
        ProjectstatusPmt other = (ProjectstatusPmt) object;
        if ((this.projectId == null && other.projectId != null) || (this.projectId != null && !this.projectId.equals(other.projectId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.project.entities.ProjectstatusPmt[ projectId=" + projectId + " ]";
    }
    
}
