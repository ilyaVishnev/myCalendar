package ru.models;

import org.springframework.stereotype.Component;

import javax.persistence.*;

@Component
@Entity
@Table(name = "jearcalendar_workers")
public class JearCalendar_Workers {

    private int id;
    private Marker marker;
    private JearCalendar jearCalendar;
    private Worker worker;

    public JearCalendar_Workers() {
    }

    @Id
    @Column(name = "id_cw")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_m", referencedColumnName = "id_m")
    public Marker getMarker() {
        return marker;
    }

    public void setMarker(Marker marker) {
        this.marker = marker;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_c", referencedColumnName = "id_c")
    public JearCalendar getJearCalendar() {
        return jearCalendar;
    }

    public void setJearCalendar(JearCalendar jearCalendar) {
        this.jearCalendar = jearCalendar;
    }


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_w", referencedColumnName = "id_w")
    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || this.getClass() != o.getClass()) return false;
        JearCalendar_Workers jearCalendar_workers = (JearCalendar_Workers) o;
        if (this.getId() == jearCalendar_workers.getId()) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.getId();
    }
}
