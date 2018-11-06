package com.oregonstate.snooze.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class EditProfileControllerTest {

    @Autowired
    private EditProfileController editProfileController;

    @Test
    public void testChangePassword() {
        String inputEmail0 = "wangxint1@gmail.com";
        String inputPassword0 = "12345";
        String newUsername0 = "2newwangxint";
        String newPassword0 = "123456";
        // editProfileController.editProfile(inputEmail0, inputPassword0, newUsername0, newPassword0);
    }

    @Test
    public void testChangeUserName() {
        String inputEmail1 = "wangxint1@gmail.com";
        String inputPassword1 = "12345";
        String newUsername1 = "11newwangxint";
        String newPassword1 = "null";
        // System.out.println(editProfileController.editProfile(inputEmail1, inputPassword1, newUsername1, newPassword1));
    }

    @Test
    public void testWrongPassword() {
        String inputEmail2 = "wangxint3@gmail.com";
        String inputPassword2 = "123456";
        String newUsername2 = "null";
        String newPassword2 = "1234567";
       // System.out.println(editProfileController.editProfile(inputEmail2, inputPassword2, newUsername2, newPassword2));

    }
}
