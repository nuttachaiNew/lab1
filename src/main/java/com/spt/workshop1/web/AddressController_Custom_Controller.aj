// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spt.workshop1.web;

import com.spt.workshop1.domain.Address;
import com.spt.workshop1.web.AddressController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;
import java.util.List;
privileged aspect AddressController_Custom_Controller {
       @RequestMapping(value = "/addressInsert", produces = "text/html")
    public String AddressController.addressInsert(Model uiModel) {

            return "addresses/addressInsert";
        }
          @RequestMapping(value = "/listAddress", produces = "text/html")
    public String AddressController.listAddress(Model uiModel) {
    		List<Address> listAddress= Address.findAllAddresses();
            uiModel.addAttribute("listAddress",listAddress);
            return "addresses/listAddress";
        }
    
}