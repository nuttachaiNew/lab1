package com.spt.workshop1.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findEmpTypesByEmpTypeNameLike" })
public class EmpType {

    /**
     */
    private String empTypeName;

    /**
     */
    private String empTypeCode;
}
