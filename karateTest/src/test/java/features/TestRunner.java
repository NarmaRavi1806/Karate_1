package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate SampleTest() {
		return Karate.run("calljava").relativeTo(getClass());
	}

}
