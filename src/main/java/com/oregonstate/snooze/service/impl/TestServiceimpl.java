package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 9/27/18
 * @description:
 */

@Service
public class TestServiceimpl implements TestService {

    @Autowired
    private TestService testService;

    @Override
    public List selectall() {
        List lsit = testService.selectall();
        return lsit;
    }
}
