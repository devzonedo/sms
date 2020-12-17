/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sms.servlet.user;

import com.sms.bean.UserBean;
import com.sms.businesslogic.user.UserLogic;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author devzo
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            System.out.println("servlet>>RegisterServlet");
            RequestDispatcher rd = null;

            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String username = request.getParameter("username");
            String pword = request.getParameter("pword");
            String repword = request.getParameter("repword");
            String user_type = request.getParameter("user_type");

            System.out.println("user_type:" + user_type);

            String msg = "";

            //input validation
            boolean checkPassword = checkPassword(pword, repword);
            if (checkPassword) {
                //valid input ready to insert database
                UserBean userBean = new UserBean();

                userBean.setFirst_name(first_name);
                userBean.setLast_name(last_name);
                userBean.setUsername(username);
                userBean.setPword(pword);
                userBean.setUser_type(user_type);

                boolean flag = new UserLogic().createNewUser(userBean);
                if (flag) {
                    msg = "<div class=\"alert alert-success\" role=\"alert\">\n"
                            + "  New user created successfully\n"
                            + "</div>";
                } else {
                    msg = "<div class=\"alert alert-warning\" role=\"alert\">\n"
                            + "  Sorry something went wrong, Invalid input found!\n"
                            + "</div>";
                }

            } else {
                msg = "<div class=\"alert alert-danger\" role=\"alert\">\n"
                        + "  Invalid password or Invalid input found!\n"
                        + "</div>";

            }

            request.setAttribute("msg", msg);
            rd = request.getRequestDispatcher("registration.jsp");

            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private boolean checkPassword(String pword, String re) {
        boolean flag = false;
        int length = pword.length();
        if (length < 6) {
            System.err.println("Invalid password length");
        } else if (pword.equals(re)) {
            flag = true;
        } else {
            System.err.println("password miss-match");
        }
        return flag;
    }

}
