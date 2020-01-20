import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@CucumberOptions(features = {

        "classpath:features/createController.feature",
        "classpath:features/controller.feature"

},
        format = {"pretty", "html:reports"},
        tags = {"@api"})
public class ControllerTest {

}
