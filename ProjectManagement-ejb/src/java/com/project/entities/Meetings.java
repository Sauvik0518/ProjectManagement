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
@Table(name = "MEETINGS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Meetings.findAll", query = "SELECT m FROM Meetings m"),
    @NamedQuery(name = "Meetings.findByTopic", query = "SELECT m FROM Meetings m WHERE m.topic = :topic"),
    @NamedQuery(name = "Meetings.findByMeetingAttendees", query = "SELECT m FROM Meetings m WHERE m.meetingAttendees = :meetingAttendees"),
    @NamedQuery(name = "Meetings.findByMeetingId", query = "SELECT m FROM Meetings m WHERE m.meetingId = :meetingId"),
    @NamedQuery(name = "Meetings.findByMeetingDate", query = "SELECT m FROM Meetings m WHERE m.meetingDate = :meetingDate"),
    @NamedQuery(name = "Meetings.findByMeetingTime", query = "SELECT m FROM Meetings m WHERE m.meetingTime = :meetingTime"),
    @NamedQuery(name = "Meetings.findByMeetingPlace", query = "SELECT m FROM Meetings m WHERE m.meetingPlace = :meetingPlace"),
    @NamedQuery(name = "Meetings.findByMeetingType", query = "SELECT m FROM Meetings m WHERE m.meetingType = :meetingType"),
    @NamedQuery(name = "Meetings.findByMeetingMedium", query = "SELECT m FROM Meetings m WHERE m.meetingMedium = :meetingMedium"),
    @NamedQuery(name = "Meetings.findByNotes", query = "SELECT m FROM Meetings m WHERE m.notes = :notes")})
public class Meetings implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "TOPIC")
    private String topic;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "MEETING_ATTENDEES")
    private String meetingAttendees;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "MEETING_ID")
    private String meetingId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "MEETING_DATE")
    private String meetingDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "MEETING_TIME")
    private String meetingTime;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "MEETING_PLACE")
    private String meetingPlace;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "MEETING_TYPE")
    private String meetingType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "MEETING_MEDIUM")
    private String meetingMedium;
    @Size(max = 500)
    @Column(name = "NOTES")
    private String notes;

    public Meetings() {
    }

    public Meetings(String meetingId) {
        this.meetingId = meetingId;
    }

    public Meetings(String meetingId, String topic, String meetingAttendees, String meetingDate, String meetingTime, String meetingPlace, String meetingType, String meetingMedium) {
        this.meetingId = meetingId;
        this.topic = topic;
        this.meetingAttendees = meetingAttendees;
        this.meetingDate = meetingDate;
        this.meetingTime = meetingTime;
        this.meetingPlace = meetingPlace;
        this.meetingType = meetingType;
        this.meetingMedium = meetingMedium;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getMeetingAttendees() {
        return meetingAttendees;
    }

    public void setMeetingAttendees(String meetingAttendees) {
        this.meetingAttendees = meetingAttendees;
    }

    public String getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(String meetingId) {
        this.meetingId = meetingId;
    }

    public String getMeetingDate() {
        return meetingDate;
    }

    public void setMeetingDate(String meetingDate) {
        this.meetingDate = meetingDate;
    }

    public String getMeetingTime() {
        return meetingTime;
    }

    public void setMeetingTime(String meetingTime) {
        this.meetingTime = meetingTime;
    }

    public String getMeetingPlace() {
        return meetingPlace;
    }

    public void setMeetingPlace(String meetingPlace) {
        this.meetingPlace = meetingPlace;
    }

    public String getMeetingType() {
        return meetingType;
    }

    public void setMeetingType(String meetingType) {
        this.meetingType = meetingType;
    }

    public String getMeetingMedium() {
        return meetingMedium;
    }

    public void setMeetingMedium(String meetingMedium) {
        this.meetingMedium = meetingMedium;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (meetingId != null ? meetingId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Meetings)) {
            return false;
        }
        Meetings other = (Meetings) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.project.entities.Meetings[ meetingId=" + meetingId + " ]";
    }
    
}
