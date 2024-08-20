package com.project.management.service;

import com.project.management.model.User;
import com.project.management.repository.UserRepository;
import com.project.management.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository repository;

    public List<User> findAll(){
        return repository.findAll();
    }

    public Page<User> getUsers(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo, pageSize);
        return repository.findAll(pageable);
    }

    public User findById(Long id) {
        Optional<User> userOptional = repository.findById(id);
        return userOptional.orElseThrow(() -> new ResourceNotFoundException("User not Found"));
    }

    /**
     * block comment test
     *
     * @param newUser user will be inserted
     * @return the newly created user
     * @throws RuntimeException if something goes wrong
     */
    public User insert(User newUser){
        UserValidator.verifyCreateUser(newUser);
        return repository.save(newUser);
    }


}
