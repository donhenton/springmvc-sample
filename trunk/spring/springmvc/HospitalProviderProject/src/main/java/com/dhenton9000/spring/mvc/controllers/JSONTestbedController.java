/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dhenton9000.spring.mvc.controllers;

import com.dhenton9000.neo4j.hospital.json.HospitalServiceException;
import com.dhenton9000.neo4j.hospital.service.HospitalService;
import com.dhenton9000.spring.mvc.model.FormBean;
import com.dhenton9000.spring.mvc.model.SelectTreeBean;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author dhenton
 */
@Controller
@RequestMapping("json/testbed/*")
@SessionAttributes({"createTreeFormBean", "maintainTreeFormBean", "treeData"})
public class JSONTestbedController {

    private static Logger log = LogManager.getLogger(JSONTestbedController.class);
    public static final String DESTINATION_TILE = "tiles.json.testbed";
    public static final String TREE_DATA_KEY = "treeData";
    public static final String MAINTAIN_BEAN_NAME = "maintainTreeFormBean";
    public static final String CREATE_TREE_BEAN_NAME = "createTreeFormBean";
    public static final String SELECT_TREE_BEAN_NAME = "selectTreeFormBean";
    public static final String SELECT_TREE_LIST_KEY = "treeSelectList";
    @Autowired
    private HospitalService jService;

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public ModelAndView showFormInInitialState() {
        HashMap map = createDefaultMap();
        return new ModelAndView(DESTINATION_TILE, map);

    }

    @RequestMapping(value = "maintainNode", method = RequestMethod.POST)
    public ModelAndView maintainAddNode(@RequestParam(required = true,
            value = "submit") String submitFlag,
            @ModelAttribute(MAINTAIN_BEAN_NAME) FormBean form) {
        log.info("maintainAddNode " + form.getName());
        log.info("submit is " + submitFlag);
        HashMap map = createDefaultMap();
        return new ModelAndView(DESTINATION_TILE, map);
    }

    @RequestMapping(value = "selectTree", method = RequestMethod.POST)
    public ModelAndView selectTree(@ModelAttribute(SELECT_TREE_BEAN_NAME) SelectTreeBean form) {
        HashMap<String, Object> map = createDefaultMap();
        String name = form.getSelectedTree();
        map.put(SELECT_TREE_BEAN_NAME, form);
        String treeData = "";


        try {
          treeData =  jService.structureToString(jService.buildDivisonFromDb(name));
        } catch (Exception ioerr) {
            log.error("io error " + ioerr.getMessage());
        }

        map.put(TREE_DATA_KEY, treeData);
        return new ModelAndView(DESTINATION_TILE, map);
    }

    @RequestMapping(value = "createTree", method = RequestMethod.POST)
    public ModelAndView createTree(
            @ModelAttribute(TREE_DATA_KEY) String treeDataOld,
            @ModelAttribute(CREATE_TREE_BEAN_NAME) FormBean form,
            BindingResult result,
            WebRequest webRequest, HttpSession session, Model model) {
        log.info("createTree " + form.getName());
        log.info("treeDataOld " + treeDataOld);
        Object[] vargs = new Object[1];
        vargs[0] = "";
        String treeData = "";
        try {
            String name = "";
            name = form.getName();
            if (name == null) {
                name = "";
            }
            name = name.trim();
            if (StringUtils.isEmpty(name)) {
                result.reject("empty.name");
                log.error("empty name in createTree!");
                treeData = treeDataOld;
            } else {
                treeData = jService.structureToString(
                        jService.createInitialDivision(name));
            }



        } catch (HospitalServiceException ex) {
            log.error("Hospital error " + ex.getMessage());
            vargs[0] = ex.getMessage();
            result.reject("duplicate.error", vargs, "Tree already exists");
            log.error("duplicate name in createTree!");
            treeData = treeDataOld;



        } catch (IOException ioerr) {
            log.error("io error " + ioerr.getMessage());
            vargs[0] = ioerr.getMessage();
            result.rejectValue("name", "io.error", vargs,
                    "default io error");
            treeData = treeDataOld;
        }
        HashMap<String, Object> map = createDefaultMap();
        map.put(TREE_DATA_KEY, treeData);
        map.put(CREATE_TREE_BEAN_NAME,form);
        return new ModelAndView(DESTINATION_TILE, map);
    }

    /**
     * @return the jService
     */
    public HospitalService getjService() {
        return jService;
    }

    /**
     * @param jService the jService to set
     */
    public void setjService(HospitalService jService) {
        this.jService = jService;
    }

    private HashMap<String, Object> createDefaultMap() {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put(MAINTAIN_BEAN_NAME, new FormBean());
        map.put(CREATE_TREE_BEAN_NAME, new FormBean());
        map.put(TREE_DATA_KEY, "");
        map.put(SELECT_TREE_BEAN_NAME, new SelectTreeBean());
        map.put(SELECT_TREE_LIST_KEY, jService.getInitialTreeMap());
        return map;
    }
}
