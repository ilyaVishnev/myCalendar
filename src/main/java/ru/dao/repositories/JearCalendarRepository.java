package ru.dao.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.models.JearCalendar;

@Repository
public interface JearCalendarRepository extends CrudRepository<JearCalendar, Integer> {

}
