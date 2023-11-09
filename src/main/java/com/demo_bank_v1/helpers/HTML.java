package com.demo_bank_v1.helpers;

public class HTML {

    public static String htmlEmailTemplate(String token, int code){

        // Verify Account URL:
        String url = "http://127.0.0.1:8070/verify?token=" + token +"&code=" + code;

        String emailTemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <!-- <link rel='stylesheet' href='css/email.css'> -->\n" +
                "    <title>Document</title>\n" +
                "\n" +
                "    <style>\n" +
                "        * {\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: Comfortaa;\n" +
                "\n" +
                "        }\n" +
                "\n" +
                "        /* main body here*/\n" +
                "        body {\n" +
                "            height: 100vh;\n" +
                "            background-color: rgb(150, 229, 229);\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "\n" +
                "        /*Wrapper Style*/\n" +
                "        .wrapper {\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            border-radius: 20px;\n" +
                "            background-color: white;\n" +
                "\n" +
                "        }\n" +
                "\n" +
                "        /*email-msg-header*/\n" +
                "        .email-msg-header {\n" +
                "            text-align: center;\n" +
                "\n" +
                "        }\n" +
                "\n" +
                "        /*Company Name*/\n" +
                "        .company-name {\n" +
                "            color: rgb(0, 24, 104);\n" +
                "\n" +
                "            margin: 10px 0px;\n" +
                "            font-size: 35px;\n" +
                "            width: 100%;\n" +
                "            text-align: center;\n" +
                "\n" +
                "        }\n" +
                "\n" +
                "        /*Welcome text*/\n" +
                "        .welcome-text {\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        /*verify-account-btn*/\n" +
                "        .verify-account-btn {\n" +
                "            padding: 15px;\n" +
                "            text-decoration: none;\n" +
                "            border-radius: 10px;\n" +
                "            background-color: rgb(18, 49, 250);\n" +
                "            color: white;\n" +
                "\n" +
                "        }\n" +
                "\n" +
                "        /*Copyright*/\n" +
                "        .copy-right {\n" +
                "\n" +
                "            color: rgb(74, 75, 75);\n" +
                "            margin: 15px 0px;\n" +
                "            padding: 15px;\n" +
                "            font-size: 16px;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "    <!--Wrapper code here-->\n" +
                "    <div class='wrapper'>\n" +
                "        <!--Email Msg header-->\n" +
                "        <h2 class='email-msg-header'>\n" +
                "            Welcome and Thank you for Choosing\n" +
                "        </h2>\n" +
                "        <!--End of Email Msg header-->\n" +
                "        <!--Company Name-->\n" +
                "        <div class=\"company-name\">\n" +
                "            CashWave\n" +
                "\n" +
                "        </div>\n" +
                "        <!--End of Company Name-->\n" +
                "        <hr>\n" +
                "\n" +
                "        <!--Welcome Text-->\n" +
                "        <p class='welcome-text'>\n" +
                "            Your Account has been succesfully registered. Please click below link to verify your account.\n" +
                "        </p>\n" +
                "\n" +
                "        <!--End of Welcome Text-->\n" +
                "        <br>\n" +
                "\n" +
                "        <!--Verify Account Button-->\n" +
                "        <center> <a href='"+url+"' class='verify-account-btn' role='button'>Verify Account</a></center>\n" +
                "        <!--End of Verify Account Button-->\n" +
                "        <!--Copy-right Wrapper-->\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; Copy-right 2023 | All rights reserved | CashWave\n" +
                "        </div>\n" +
                "        <!--End of Copy-right Wrapper-->\n" +
                "\n" +
                "    </div>\n" +
                "    <!--End of Wrapper code -->\n" +
                "\n" +
                "</body>\n" +
                "\n" +
                "</html>";

        return emailTemplate;
    }
}