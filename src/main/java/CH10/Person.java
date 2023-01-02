package CH10;

public class Person {
	private String name;
	private String age;
	private String addr;
	
	//default 생성자
	public Person() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Person(String name, String age, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
	}


	//toString
	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", addr=" + addr + "]";
	}

	
	//Getter and Setter
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
	

	

}
