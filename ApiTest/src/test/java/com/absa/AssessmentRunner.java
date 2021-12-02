package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testPayload() {
        return Karate.run("ABSATechnicalAssessment").relativeTo(getClass());
    }    

}
