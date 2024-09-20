package com.project.management.dto;

import com.project.management.model.User;

import java.time.LocalDate;

public record UserDTO(
        Long id,
        String name,
        String email,
        LocalDate birthday,
        String position
) {
    public UserDTO toDTO(User user) {
        return new UserDTO(user.getId(), user.getName(), user.getEmail(), user.getBirthday(), user.getPosition());
    }
}
