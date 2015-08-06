// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spt.workshop1.domain;

import com.spt.workshop1.domain.EmpType;
import com.spt.workshop1.domain.EmpTypeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect EmpTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: EmpTypeDataOnDemand: @Component;
    
    private Random EmpTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<EmpType> EmpTypeDataOnDemand.data;
    
    public EmpType EmpTypeDataOnDemand.getNewTransientEmpType(int index) {
        EmpType obj = new EmpType();
        setEmpTypeCode(obj, index);
        setEmpTypeName(obj, index);
        return obj;
    }
    
    public void EmpTypeDataOnDemand.setEmpTypeCode(EmpType obj, int index) {
        String empTypeCode = "empTypeCode_" + index;
        obj.setEmpTypeCode(empTypeCode);
    }
    
    public void EmpTypeDataOnDemand.setEmpTypeName(EmpType obj, int index) {
        String empTypeName = "empTypeName_" + index;
        obj.setEmpTypeName(empTypeName);
    }
    
    public EmpType EmpTypeDataOnDemand.getSpecificEmpType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        EmpType obj = data.get(index);
        Long id = obj.getId();
        return EmpType.findEmpType(id);
    }
    
    public EmpType EmpTypeDataOnDemand.getRandomEmpType() {
        init();
        EmpType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return EmpType.findEmpType(id);
    }
    
    public boolean EmpTypeDataOnDemand.modifyEmpType(EmpType obj) {
        return false;
    }
    
    public void EmpTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = EmpType.findEmpTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'EmpType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<EmpType>();
        for (int i = 0; i < 10; i++) {
            EmpType obj = getNewTransientEmpType(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
