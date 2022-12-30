package CH08;

import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionDto {
	private Map<String, HttpSession> sessionMap;
	
	

	
	//default 생성자
	public SessionDto() {
		// TODO Auto-generated constructor stub
	}
	
	//toString
	@Override
	public String toString() {
		return "SessionDto [sessionMap=" + sessionMap + "]";
	}

	

	
	//getter and setter
	public Map<String, HttpSession> getSessionMap() {
		return sessionMap;
	}
	
}
