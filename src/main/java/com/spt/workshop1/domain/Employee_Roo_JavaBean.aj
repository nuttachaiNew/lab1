// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spt.workshop1.domain;

import com.spt.workshop1.domain.Address;
import com.spt.workshop1.domain.EmpType;
import com.spt.workshop1.domain.Employee;
import java.util.Date;
import java.util.Set;

privileged aspect Employee_Roo_JavaBean {
    
    public String Employee.getFirstName() {
        return this.firstName;
    }
    
    public void Employee.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Employee.getLastName() {
        return this.lastName;
    }
    
    public void Employee.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public Integer Employee.getAge() {
        return this.age;
    }
    
    public void Employee.setAge(Integer age) {
        this.age = age;
    }
    
    public Date Employee.getBirthDay() {
        return this.birthDay;
    }
    
    public void Employee.setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }
    
    public EmpType Employee.getEmpType() {
        return this.empType;
    }
    
    public void Employee.setEmpType(EmpType empType) {
        this.empType = empType;
    }
    
    public Set<Address> Employee.getAddresses() {
        return this.addresses;
    }
    
    public void Employee.setAddresses(Set<Address> addresses) {
        this.addresses = addresses;
    }
    
}