package com.demo_bank_v1.controllers;

import com.demo_bank_v1.helpers.Token;
import com.demo_bank_v1.models.User;
import com.demo_bank_v1.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.apache.taglibs.standard.lang.jstl.NullLiteral;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelExtensionsKt;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AuthController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public ModelAndView getLogin(){
        System.out.println("In Login Page Controller");
        ModelAndView getLoginPage = new ModelAndView("login");
        // set token string
        String token = Token.generateToken();
        // Send token to view
        getLoginPage.addObject("token",token);
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email")String email,
                        @RequestParam("password")String password,
                        @RequestParam("_token")String token,
                        Model model,
                        HttpSession session){


        // TODO: Validate input fields
        if(email.isEmpty() || email == null || password.isEmpty() || password == null){
            model.addAttribute("error","Username or Password cannot be Empty");
            return "login";
        }
        // Check for email if exists

        String getEmailInDatabase = userRepository.getUserEmail(email);

        // Check if email exists:
        if(getEmailInDatabase != null)
        {
            // get password in database
            String getPasswordInDatabase = userRepository.getUserPassword(getEmailInDatabase);

            // validate password
            if(!BCrypt.checkpw(password, getPasswordInDatabase)){
                model.addAttribute("error","Incorrect Username or Password ");
                return "login";
            }
            // end of validate password
        } else {
            model.addAttribute("error","Something went wrong please contact support");
            return "error";
        }

        // Check if user account is verified
        int verified = userRepository.isVerified(getEmailInDatabase);
        if(verified != 1)
        {
            model.addAttribute("error","This account is not yet verified, Please check your email ");
            return "login";
        }
        // end of if user is verified

        //  TODO: proceed to log the user in
        User user = userRepository.getUserDetails(getEmailInDatabase);
        // Set Session attribute
        session.setAttribute("user",user);
        session.setAttribute("token",token);
        session.setAttribute("authenticated",true);

        return "redirect:/app/dashboard";
    }
    // End of Authenticated Method


    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes){
        session.invalidate();
        redirectAttributes.addFlashAttribute("logged_out","Logged out successfully");
        return "redirect:/login";
    }
}
