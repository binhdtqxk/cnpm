package until;

import java.util.Random;

public class Verification {
    public static int createCode(){
        Random rd =new Random();
        int code=rd.nextInt(900000) +100000;
        return code;
    }
}
