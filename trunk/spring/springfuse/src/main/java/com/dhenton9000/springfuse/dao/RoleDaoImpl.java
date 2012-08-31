/*
 * (c) Copyright 2005-2011 JAXIO, www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-backend:src/main/java/project/hibernate/DAOHibernate.e.vm.java
 */
package com.dhenton9000.springfuse.dao;

import org.springframework.stereotype.Repository;
import com.dhenton9000.springfuse.dao.RoleDao;

import com.dhenton9000.springfuse.domain.Role;
import com.dhenton9000.springfuse.dao.hibernate.HibernateGenericDao;

/**
 * Hibernate implementation of the Role DAO interface.
 */
@Repository
public class RoleDaoImpl extends HibernateGenericDao<Role, Integer> implements RoleDao {
    public RoleDaoImpl() {
        super(Role.class);
    }
}