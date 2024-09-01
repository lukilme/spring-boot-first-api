package com.project.management.service;

import com.project.management.model.User;
import com.project.management.repository.UserRepository;
import com.project.management.validator.UserValidator;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

    private final UserRepository repository;

    @Autowired
    public UserService(UserRepository repository) {
        this.repository = repository;
    }

    @Transactional(readOnly = true)
    public List<User> findAll() {
        return repository.findAll();
    }

    @Transactional(readOnly = true)
    public List<User> getUsers(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo, pageSize);
        return repository.findAll(pageable).toList();
    }

    @Transactional(readOnly = true)
    public User findById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("User not found with id: " + id));
    }

    @Transactional
    public User update(User updateUser) {
        User existingUser = findById(updateUser.getId());
        existingUser.setName(updateUser.getName());
        return repository.save(existingUser);
    }

    @Transactional
    public void delete(Long id) {
        User deletedUser = findById(id);
        repository.deleteById(id);
    }

    @Transactional
    public User insert(User newUser) {
        UserValidator.verifyCreateUser(newUser);
        return repository.save(newUser);
    }
}
