package CH05;

public class SimpleDto {
	private String name;
	private String age;
	private String addr;
	
	
	
	//getter and setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	//toString
	@Override
	public String toString() {
		return "SimpleDto [name=" + name + ", age=" + age + ", addr=" + addr + "]";
	}
	
	
	//생성자(모든인자)
	public SimpleDto(String name, String age, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
	}
	
	
	//디폴트생성자
	public SimpleDto() {
		// TODO Auto-generated constructor stub
	}
	
}
