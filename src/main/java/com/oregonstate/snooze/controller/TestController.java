package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 9/27/18
 * @description:
 */

@Controller
@RequestMapping("/snooze/test")
public class TestController {

    @Autowired
    private TestService testService;

    @RequestMapping(value = "/csdn.json", method = RequestMethod.GET)
    @ResponseBody
    public String csdn() {
        List lsit = testService.selectall();
        return lsit.toString();
    }

    @RequestMapping(value = "/csdn.html")
    public String html() {
        return "csdn";
    }

}
