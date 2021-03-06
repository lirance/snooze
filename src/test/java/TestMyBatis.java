import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.*;
import com.oregonstate.snooze.service.*;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: chendi Zhang
 * @date: 9/28/18
 * @description:
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {

    private static Logger logger = Logger.getLogger(TestMyBatis.class);


    @Resource
    private UserService userService = null;

    @org.junit.Test
    public void testUserTable() {
        User user = new User();
        user.setUserName("lirance");
        user.setPassword(String.valueOf(("lirance").hashCode()));
        user.seteMail("lirance.zhang@gmail.com");
        user.setUserId(12);
        userService.updateByPrimaryKey(user);
        // userService.insert(user);
       // User userresutl = userService.selectByEmail("arr234tr@fsljf.com");
    }


    @Resource
    private UserScheduleService userScheduleService = null;

    @org.junit.Test
    public void testScheduleUTable() {
        UserScheduleKey userScheduleKey = new UserScheduleKey();
        userScheduleKey.setUserId(1);
        userScheduleKey.setScheduleId(2);
        UserSchedule userSchedule = userScheduleService.selectByPrimaryKey(userScheduleKey);
        logger.info(JSON.toJSONString(userSchedule));
        Map<Integer, Boolean> userDes = new HashMap<>();
        userSchedule = new UserSchedule();
        userSchedule.setUserId(12);
        userSchedule.setScheduleId(2);
        userDes.put(108, true);
        userDes.put(110, true);
        userSchedule.setScheduleDes(userDes);
        userSchedule.setHours("3");
        //  userScheduleService.insert(userSchedule);
    }


    @Resource
    private GroupService groupService = null;

    @org.junit.Test
    public void testGroupTable() {
        Group group = new Group();
        group.setGroupName("test_group_name");
        //groupService.insert(group);
        logger.info(JSON.toJSONString(groupService.selectByPrimaryKey(1)));

    }


    @Resource
    private GroupScheduleService groupScheduleService = null;

    @org.junit.Test
    public void testScheduleGTable() {
        GroupSchedule groupSchedule = new GroupSchedule();
        groupSchedule.setGroupId(1);
        groupSchedule.setScheduleId(1);
        groupSchedule.setScheduleName("test_schedule_name");
        Map<Integer, Boolean> groupDes = new HashMap<>();
        groupDes.put(123, true);
        groupDes.put(104, false);
        groupSchedule.setScheduleDes(groupDes);
        // groupScheduleService.insert(groupSchedule);
    }


    @Resource
    private GroupUserService groupUserService = null;

    @org.junit.Test
    public void testGroupUserTable() {
        GroupUser groupUser = new GroupUser();
        groupUser.setGroupId(5);
        groupUser.setUserId(12);
        groupUser.setManager(true);
        GroupUserKey groupUserKey = new GroupUserKey();
        groupUserKey.setGroupId(1);
        groupUserKey.setUserId(12);
        groupUserService.selectByPrimaryKey(groupUserKey);
        // groupUserService.insert(groupUser);
    }

//    @org.junit.Test
//    public void insertScheduleForAllGroups() {
//        GroupSchedule groupSchedule = new GroupSchedule();
//       // groupSchedule.setGroupId(1);
//        groupSchedule.setScheduleId(1);
//        groupSchedule.setScheduleName("test_schedule_name");
//        Map<Integer, Boolean> groupDes = new HashMap<>();
//        groupDes.put(123, true);
//        groupDes.put(104, false);
//        groupSchedule.setScheduleDes(groupDes);
//
//        List<Group> groupList = groupService.selectAll();
//        for (Group group:groupList){
//            groupSchedule.setGroupId(group.getGroupId());
//            groupScheduleService.insert(groupSchedule);
//        }
//    }


    @Resource
    private JoinService joinService = null;

    @Test
    public void testJoinMapper() {
        System.out.println(JSON.toJSONString(joinService.selectGroupsByUserId(12, true)));

    }

}


