package com.koala.platform.DAO.Interfaces;

import java.util.List;

public interface dao<T> {

    List<T> getAll();

    void save(T t);

    void update(T t, String[] params);

    void delete(T t);
}