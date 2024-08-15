package com.project.management.validator;

import com.project.management.model.User;

public class UserValidator {

    public static void verifyCreateUser(User newUser){
        UserValidator.verifyName(newUser.getName());
    }


    private static void verifyName(String name){

    }

}
