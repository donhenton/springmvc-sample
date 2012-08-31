/*
 * (c) Copyright 2005-2011 JAXIO, www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-mvc-3:src/main/java/web/controller/controller.e.vm.java
 */
package com.dhenton9000.springfuse.web.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import static org.springframework.web.bind.annotation.RequestMethod.PUT;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dhenton9000.springfuse.domain.Role;
import com.dhenton9000.springfuse.service.RoleService;

@Controller
@RequestMapping("/domain/role/")
public class RoleController {

    @Autowired
    private RoleService roleService;

    /**
     * Performs the list action.
     */
    @RequestMapping(value = { "list", "" })
    public String list(@ModelAttribute RoleSearchForm roleSearchForm, Model model) {
        model.addAttribute("rolesCount", roleService.findCount(roleSearchForm.getRole(), roleSearchForm
                .toSearchTemplate()));
        model.addAttribute("roles", roleService.find(roleSearchForm.getRole(), roleSearchForm.toSearchTemplate()));
        return "domain/role/list";
    }

    /**
     * Serves the create form.
     */
    @RequestMapping(value = "create", method = GET)
    public String create(@ModelAttribute Role role) {
        return "domain/role/create";
    }

    /**
     * Performs the create action and redirect to the show view.
     */
    @RequestMapping(value = "create", method = { POST, PUT })
    public String create(@Valid @ModelAttribute Role role, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return create(role);
        }

        roleService.save(role);
        return "redirect:/domain/role/show/" + role.getPrimaryKey();
    }

    /**
     * Serves search by example form, search by pattern form and search by named query form.
     */
    @RequestMapping(value = "*", method = GET)
    public void catchAll(@ModelAttribute RoleSearchForm roleSearchForm) {
    }

}