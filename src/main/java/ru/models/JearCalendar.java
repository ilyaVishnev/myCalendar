package ru.models;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Component
@Entity
@Table(name = "jearcalendar")
public class JearCalendar {

    private int id;
    private Timestamp date_w;
    private List<JearCalendar_Workers> jearCalendar_workersList=new ArrayList<>();

    public JearCalendar() {
    }

    @Id
    @Column(name = "id_c")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "date_w")
    public Timestamp getDate_w() {
        return date_w;
    }

    public void setDate_w(Timestamp date_w) {
        this.date_w = date_w;
    }

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "jearCalendar")
    public List<JearCalendar_Workers> getJearCalendar_workersList() {
        return jearCalendar_workersList;
    }

    public void setJearCalendar_workersList(List<JearCalendar_Workers> jearCalendar_workersList) {
        this.jearCalendar_workersList = jearCalendar_workersList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || this.getClass() != o.getClass()) return false;
        JearCalendar jearCalendar = (JearCalendar) o;
        if (this.getId() == jearCalendar.getId() ) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.id;
    }
}
