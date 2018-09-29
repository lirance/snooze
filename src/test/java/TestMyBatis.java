import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.TestUser;
import com.oregonstate.snooze.service.TestService;
import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author: chendi Zhang
 * @date: 9/28/18
 * @description:
 **/
@RunWith(SpringJUnit4ClassRunner.class)        //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {

    private static Logger logger = Logger.getLogger(TestMyBatis.class);

    @Resource
    private TestService userService = null;

//	@Before
//	public void before() {
//		ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		userService = (IUserService) ac.getBean("userService");
//	}

    @org.junit.Test
    public void test1() throws Exception {
        List<TestUser> test = userService.findUser();
       // int test=userService.testSQL();
        // System.out.println(test.getUserName());
        // logger.info("值："+test.getUserName());
        logger.info(JSON.toJSONString(test));
    }
}


