/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.bit.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ilham
 */
@Controller
@RequestMapping("/")
public class MainController {
    
    @RequestMapping("")
    public String home(ModelMap model) {
        model.addAttribute("title", "Tutorial Page - Welcome to angularJs");
        return "home";
    }

    @RequestMapping("/components")
    public String tryAngular(ModelMap model) {
        model.addAttribute("title", "Tutorial Page - Welcome to angularJs");
        return "components";
    }


}
