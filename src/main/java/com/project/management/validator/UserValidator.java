package com.project.management.validator;

import com.project.management.model.User;

public class UserValidator {

    public static void verifyCreateUser(User newUser){
        UserValidator.verifyName(newUser.getName());
        UserValidator.verifyEmail(newUser.getEmail());
        UserValidator.verifyPassword(newUser.getPassword());
    }


    private static void verifyName(String name){

    }

    private static void verifyEmail(String email){

    }

    private static void verifyPassword(String password){

    }


}
