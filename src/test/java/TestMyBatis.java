import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.model.UserScheduleKey;
import com.oregonstate.snooze.service.UserScheduleService;
import com.oregonstate.snooze.service.UserService;
import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author: chendi Zhang
 * @date: 9/28/18
 * @description:
 **/
@RunWith(SpringJUnit4ClassRunner.class)        // implement the SpringJUnit4ClassRunner class
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {

    private static Logger logger = Logger.getLogger(TestMyBatis.class);

    // @Resource
    // private TestService userService = null;
    @Resource
    private UserScheduleService groupScheduleService = null;
    @Resource
    private UserService groupService = null;


    @org.junit.Test
    public void testUserTable() throws Exception {
        User group = new User();
        UserSchedule groupSchedule = new UserSchedule();
        group.setUserId(1);
        group.setUserName("t425");
        group.setPassword("34342");
        group.seteMail("arr234tr@fsljf.com");
       // groupService.insert(group);
        UserScheduleKey userScheduleKey = new UserScheduleKey();
        userScheduleKey.setUserId(1);
        userScheduleKey.setScheduleId(2);
        groupSchedule=groupScheduleService.selectByPrimaryKey(userScheduleKey);

        System.out.println(JSON.toJSONString(groupSchedule));

//
//        groupSchedule.setUserId(1);
//        groupSchedule.setScheduleId(2);
//        groupSchedule.setHours("24");
//
//        Map<Integer, Boolean> sdMap = new HashMap<>();
//        sdMap.put(709, true);
//        sdMap.put(112, false);
//
//
//        groupSchedule.setScheduleDes(sdMap);
       // groupScheduleService.insert(groupSchedule);


        // List<TestUser> test = userService.findUser();
//        TestUser record = new TestUser();
//        record.setAge(1);
//        record.setId(100);
//        record.setPassword("wer");
//        record.setUserName("erqwtf");
        //   userService.insert(record);


        // int test=userService.testSQL();
        // System.out.println(test.getUserName());
        // logger.info("值："+test.getUserName());
        // logger.info(JSON.toJSONString(test));
    }
}


