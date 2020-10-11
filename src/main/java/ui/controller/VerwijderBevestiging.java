package ui.controller;

import domain.db.PersonDbInMemory;
import domain.model.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class VerwijderBevestiging extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        if (request.getParameter("submit").equals("Ja")) {
            String id = request.getParameter("id");
            service.delete(id);

            return "Controller?command=Overview";
        } else {
            return "Controller?command=Home";
        }
    }
}
