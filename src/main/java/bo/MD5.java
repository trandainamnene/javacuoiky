package bo;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MD5 {
	public static String ecrypt(String text) throws Exception{ 
		String enrtext; 
		MessageDigest msd=MessageDigest.getInstance("MD5");
		byte[] srctextbyte=text.getBytes("UTF-8"); 
		byte[] enrtextbyte=msd.digest(srctextbyte); 
		BigInteger big = new BigInteger(1, enrtextbyte); 
		enrtext=big.toString(16); return enrtext; 
	}
}
