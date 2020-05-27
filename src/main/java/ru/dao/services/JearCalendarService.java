package ru.dao.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dao.repositories.JearCalendarRepository;

@Service
public class JearCalendarService {

    @Autowired
    private JearCalendarRepository jearCalendarRepository;
}
