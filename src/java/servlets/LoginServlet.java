package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AccountService;
import model.User;

/**
 *
 * @author Krushang Prajapati
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("User");

        String link = request.getParameter("logout");

        if (link != null && user != null) {

            session.invalidate();

            request.setAttribute("loggedout", true);

            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp")
                    .forward(request, response);

            return;
        }

        if (user != null) {
            response.sendRedirect("home");

            return;
        }

        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AccountService as = new AccountService();

        User user = as.login(username, password);

        if (user != null) {

            HttpSession session = request.getSession();

            session.setAttribute("User", user);

            response.sendRedirect("home");

            return;
        }

        request.setAttribute("username", username);
        request.setAttribute("invalid", true);

        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp")
                .forward(request, response);

    }
}
