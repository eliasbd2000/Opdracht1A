package ui.controller;

import domain.model.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class Verwijder extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        List<Person> people = service.getAll();
        request.setAttribute("id", people);
        return "verwijderBevestiging.jsp";
    }

}
