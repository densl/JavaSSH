package zeng;

public class Mytest
{
	private String name;
	private int age;
	public String ak;
	public Mytest()
	{
		this.name="name";
		this.age=0xFF;
	}

	public Mytest(String name, int age)
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


