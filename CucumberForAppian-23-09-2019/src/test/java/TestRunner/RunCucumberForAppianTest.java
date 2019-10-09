package TestRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src\\test\\java\\Test_Cases", glue = {
    "com.appiancorp.ps.cucumber"}, plugin = {"pretty"}, tags = "@9.9a_RelatedActionsFF")
public class RunCucumberForAppianTest {
}
