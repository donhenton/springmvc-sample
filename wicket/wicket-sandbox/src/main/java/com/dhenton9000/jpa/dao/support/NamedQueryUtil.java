/*
 * (c) Copyright 2005-2011 JAXIO, www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-backend:src/main/java/project/dao/support/NamedQueryUtil.p.vm.java
 */
package com.dhenton9000.jpa.dao.support;

import com.google.inject.ImplementedBy;
import java.util.List;

/**
 * Convenient named query manipulation class.
 */
@ImplementedBy(NamedQueryUtilHibernate.class)
public interface NamedQueryUtil {
    /**
     * Returns a list given a named query
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @return the resulting collection
     */
    List<? extends Object> findByNamedQuery(SearchTemplate searchTemplate);

    /**
     * return a collection given a named query and parameters
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @param model value bean object
     * @return the resulting collection
     */
    List<? extends Object> findByNamedQuery(SearchTemplate searchTemplate, Object model);

    /**
     * Returns a number given a named query.
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @return the resulting number
     */
    Number numberByNamedQuery(SearchTemplate searchTemplate);

    /**
     * Return a Number given a named query and a sample.
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @param sample
     * @return the resulting number
     */
    Number numberByNamedQuery(SearchTemplate searchTemplate, Object sample);

    /**
     * Returns an arbitrary object given a named query
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @return the resulting object, it can be a list or any type given your named query definition.
     */
    Object objectByNamedQuery(SearchTemplate searchTemplate);

    /**
     * Returns an arbitrary object given a named query and parameters
     *
     * @param searchTemplate the searchTemplate with the namedQuery property set.
     * @param model a value bean to be used
     * @return the resulting object, it can be a collection or any type given your named query definition
     */
    Object objectByNamedQuery(SearchTemplate searchTemplate, Object model);
}
