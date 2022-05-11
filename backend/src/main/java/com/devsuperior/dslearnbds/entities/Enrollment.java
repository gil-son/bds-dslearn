package com.devsuperior.dslearnbds.entities;

import com.devsuperior.dslearnbds.entities.pk.EnrollmentPK;

import javax.persistence.*;
import java.io.Serializable;
import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment implements Serializable {
    private static final long serialVersionUID = 1L;

    // This ID is composte by two FK from EnrollmentPK
    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK(); // Require instance because is a owner struct and not monitored by jpa

    @Column( columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollMoment;

    @Column( columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refundMoment;
    private boolean available;  // In case of the true/false/null use Boolean (wrapper)
    private boolean onlyUpdate;

    // EnrollmentPK id is substituted by User and Offer. Because when is use INSERT in SQL, the value is separated
    public Enrollment( User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    @ManyToMany(mappedBy = "enrollmentsDone")
    private Set<Lesson> lessonsDone = new HashSet<>();

    // public EnrollmentPK getId() {return id;}

    public User getStudent(){ return id.getUser(); } // getUser = getStudent

    public Offer getOffer(){ return id.getOffer(); }

    // public void setId(EnrollmentPK id) {this.id = id;}

    public void setStudent(User student){ id.setUser(student); }

    public void setOffer( Offer offer){ id.setOffer(offer);}


    public Instant getEnrollMoment() {
        return enrollMoment;
    }

    public void setEnrollMoment(Instant enrollMoment) {
        this.enrollMoment = enrollMoment;
    }

    public Instant getRefundMoment() {
        return refundMoment;
    }

    public void setRefundMoment(Instant refundMoment) {
        this.refundMoment = refundMoment;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isOnlyUpdate() {
        return onlyUpdate;
    }

    public void setOnlyUpdate(boolean onlyUpdate) {
        this.onlyUpdate = onlyUpdate;
    }
}
