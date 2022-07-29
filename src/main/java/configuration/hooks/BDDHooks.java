package configuration.hooks;

import configuration.common.WebTestBase;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.net.MalformedURLException;


//@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class BDDHooks extends WebTestBase {

//Cucumber Hook:


    @Before
    public void setUpBrowser() throws MalformedURLException {
        setUp(false,"browserStack","windows","10","chrome","103","https://www.amazon.com/");
    }


    @After
    public void tearDown(Scenario scenario) {
        if(scenario.isFailed()){
            // Take a Screenshot
            final byte[] screenShot= ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenShot,"image/png","demo1");
        }
        tearDownAutomation();
    }

    @BeforeAll
    public static void beforeAll() {
        System.out.println("***************** Automation Started *******************");
    }

    @AfterAll
    public static void afterAll() {
        System.out.println("***************** Automation End *******************");
    }


}
