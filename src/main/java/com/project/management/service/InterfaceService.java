package com.project.management.service;

import java.util.List;

public interface InterfaceService<T, ID>{
    List<T> findAll();
    T findById(ID id);
    T update(T entity);
    void delete(ID id);
    T insert(T entity);
}
