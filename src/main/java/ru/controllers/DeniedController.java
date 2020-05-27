package ru.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/deniedPage")
public class DeniedController {
    @RequestMapping(method = RequestMethod.GET)
    public String beingDenied() {
        return "deniedPage";
    }
}
