package test;

public class TestBean
{
	private String name;
	private int age;

	public TestBean()
	{
		this.name="name";
		this.age=0xFF;
	}

	public TestBean(String name, int age)
	{
		this.name = name;
		this.age = age;
	}

	public void setName(String name)
	{
		this.name=name;
	}
	public String getName()
	{
		return this.name;
	}

	public void setAge(int age)
	{
		this.age=age;
	}
	public int getAge()
	{
		return this.age;
	}
}


