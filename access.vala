


public class TestAccess{

	private int _age;
	public int age {
		public get {print("Getter wurde AUFGERUFEN\n"); return _age;}
		public set {_age = value; } }
	public string name { get; private set; default = "Oliver";}


	public TestAccess.with_(  ){
		this.age = 0;
		this.name = "unbekannt";
	}
	public TestAccess( int age, string name ){
		this.age = age;
		this.name = name;
	}

	public int get(int value){
		return value*2;
	}
}

int main(){
	int age = 20;
	TestAccess ta =  new TestAccess( age, "No Name" );
	ta.age = 5;
	print("age = %f\n", ta.age);
	// print("age = %f\n", ta._age); _age ist private
	stdout.printf( "Hello: I'm %s and %d years old!\n", ta.name, ta[age] );
	return 0;
}