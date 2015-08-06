package com.spt.workshop1.web;
import com.spt.workshop1.domain.EmpType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/emptypes")
@Controller
@RooWebScaffold(path = "emptypes", formBackingObject = EmpType.class)
public class EmpTypeController {
}
