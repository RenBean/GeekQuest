package com.hogwarts.servlets;

import com.hogwarts.data.DataCacheJson;
import com.hogwarts.entities.Wizard;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class WizardController extends HttpServlet{

    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException, ServletException {

        String uri = request.getRequestURI();
        System.out.println("Requested URI: "+uri);

        String jspName = uri.substring(uri.lastIndexOf('/')+1);
        System.out.println("JSP Name: "+jspName);

        if(jspName.equalsIgnoreCase("viewAllWizards")) {
            ArrayList<Wizard> wizards = DataCacheJson.getWizards();
            request.setAttribute("wizards",wizards );

        } else if(jspName.equalsIgnoreCase("viewWizard")) {
            String wizardId = request.getParameter("wizardId");
            Wizard wizard = DataCacheJson.getWizard(wizardId);
            request.setAttribute("wizard",wizard);

        } else if(jspName.equalsIgnoreCase("addNewWizard")) {
            request.setAttribute("wizardCrestTypes", Wizard.WizardCrestType.values());
            request.setAttribute("deathlyHallow", Wizard.DeathlyHallow.values());
        } else if(jspName.equalsIgnoreCase("saveNewWizard")) {
            Wizard saveNewWizard = new Wizard();
            saveNewWizard.getWizardId();
            saveNewWizard.setFirstName(request.getParameter("firstName"));
            saveNewWizard.setLastName(request.getParameter("lastName"));
            saveNewWizard.setWizardCrestType(Wizard.WizardCrestType.valueOf(request.getParameter("wizardCrestType")));
            saveNewWizard.setDeathlyHallow(Wizard.DeathlyHallow.valueOf(request.getParameter("deathlyHallow")));
            saveNewWizard.setBean(request.getParameter("bean"));
            saveNewWizard.setWizardId(System.currentTimeMillis()+"-"+saveNewWizard.getFirstName().charAt(0)+saveNewWizard.getLastName().charAt(0));

            DataCacheJson.setWizard(saveNewWizard);
            jspName = "viewAllWizards";

        } else if(jspName.equalsIgnoreCase("editWizard")) {
            String wizardId = request.getParameter("wizardId");
            Wizard wizard = DataCacheJson.getWizard(wizardId);
            request.setAttribute("wizardCrestTypes", Wizard.WizardCrestType.values());
            request.setAttribute("deathlyHallow", Wizard.DeathlyHallow.values());
            request.setAttribute("wizard", wizard);

        }else if(jspName.equalsIgnoreCase("updateWizard")) {
            String wizardId = request.getParameter("wizardId");
            Wizard updateWizard = DataCacheJson.getWizard(wizardId);
            updateWizard.setWizardId(request.getParameter("wizardId"));
            updateWizard.setFirstName(request.getParameter("firstName"));
            updateWizard.setLastName(request.getParameter("lastName"));
            updateWizard.setWizardCrestType(Wizard.WizardCrestType.valueOf(request.getParameter("wizardCrestType")));
            updateWizard.setDeathlyHallow(Wizard.DeathlyHallow.valueOf(request.getParameter("deathlyHallow")));
            updateWizard.setBean(request.getParameter("bean"));


            DataCacheJson.setWizard(updateWizard);
            jspName = "viewAllWizards";
        }


        RequestDispatcher view = request.getRequestDispatcher("/wizBox/"+jspName+".jsp");
        view.forward(request, response);

    }

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {
        doPost(request,response);
    }
}
