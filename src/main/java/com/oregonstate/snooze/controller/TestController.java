package com.oregonstate.snooze.controller;

import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.TestUser;
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
    TestService testService;
    @RequestMapping(value = "/testUser.json", method = RequestMethod.GET)
    @ResponseBody
    public String testUser() throws Exception {
        List<TestUser> testUser = testService.findUser();
        return JSON.toJSONString(testUser);
    }

    @RequestMapping(value = "/testUser.html")
    public String html() {
        return "testUser";
    }

}
