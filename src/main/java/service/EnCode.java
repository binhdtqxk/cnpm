package service;

import org.apache.tomcat.util.codec.binary.Base64;

import java.security.MessageDigest;

public class EnCode {
    public static String toSHA1(String str){
        String salt = "asdjfjfjd@#4rw3423234rwe";
        String re = null;

        str += salt;
        try {
            byte[] dataByte = str.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            re = Base64.encodeBase64String(md.digest(dataByte));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return re;

    }

    public static void main(String[] args) {
        System.out.println(toSHA1("123123"));
    }
}
