/*
 * (c) Copyright 2005-2011 JAXIO, www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-mvc-3:src/main/java/web/validation/CheckCase.p.vm.java
 */
package com.dhenton9000.springfuse.validation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.dhenton9000.springfuse.validation.impl.CheckCaseValidator;

/**
 * Example of a hand made {@link javax.validation.Constraint} definition, see the implementation at {@link CheckCaseValidator}
 * <p>
 * Please note that the message key should be present in the <code>ValidationMessages.properties</code>
 * @See CheckCaseValidator
 * @See http://docs.jboss.org/hibernate/validator/4.0.1/reference/en/html_single/#validator-customconstraints
 */
@Target( { METHOD, FIELD, ANNOTATION_TYPE })
@Retention(RUNTIME)
@Constraint(validatedBy = CheckCaseValidator.class)
@Documented
public @interface CheckCase {

    public enum CaseMode {
        UPPER, LOWER;
    }

    CaseMode value();

    String message() default "{com.dhenton9000.springfuse.validation.CheckCase.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
