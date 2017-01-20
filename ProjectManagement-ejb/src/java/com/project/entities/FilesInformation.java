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
@Table(name = "FILES_INFORMATION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FilesInformation.findAll", query = "SELECT f FROM FilesInformation f"),
    @NamedQuery(name = "FilesInformation.findByFileName", query = "SELECT f FROM FilesInformation f WHERE f.fileName = :fileName"),
    @NamedQuery(name = "FilesInformation.findByFilePath", query = "SELECT f FROM FilesInformation f WHERE f.filePath = :filePath"),
    @NamedQuery(name = "FilesInformation.findByUserName", query = "SELECT f FROM FilesInformation f WHERE f.userName = :userName"),
    @NamedQuery(name = "FilesInformation.findByUploadedTime", query = "SELECT f FROM FilesInformation f WHERE f.uploadedTime = :uploadedTime")})
public class FilesInformation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "FILE_NAME")
    private String fileName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "FILE_PATH")
    private String filePath;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "USER_NAME")
    private String userName;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "UPLOADED_TIME")
    private String uploadedTime;

    public FilesInformation() {
    }

    public FilesInformation(String uploadedTime) {
        this.uploadedTime = uploadedTime;
    }

    public FilesInformation(String uploadedTime, String fileName, String filePath, String userName) {
        this.uploadedTime = uploadedTime;
        this.fileName = fileName;
        this.filePath = filePath;
        this.userName = userName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUploadedTime() {
        return uploadedTime;
    }

    public void setUploadedTime(String uploadedTime) {
        this.uploadedTime = uploadedTime;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (uploadedTime != null ? uploadedTime.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FilesInformation)) {
            return false;
        }
        FilesInformation other = (FilesInformation) object;
        if ((this.uploadedTime == null && other.uploadedTime != null) || (this.uploadedTime != null && !this.uploadedTime.equals(other.uploadedTime))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.project.entities.FilesInformation[ uploadedTime=" + uploadedTime + " ]";
    }
    
}
