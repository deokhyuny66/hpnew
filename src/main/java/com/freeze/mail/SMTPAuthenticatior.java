package com.freeze.mail;

import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

public class SMTPAuthenticatior extends Authenticator
{
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("deokhyuny66@gmail.com", "gmraozfcdslihgdt");
    }
}