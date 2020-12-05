


public class TestAccess{
    private int age;
    private string name="Oliver";


    public TestAccess(int age, string name){
        this.age = age;
        this.name = name;
    }

    public int getAge(){
        return age;
    }
}

int main(){
    TestAccess ta =  new TestAccess(20, "No Name");
    stdout.printf("Hello: I'm %s and %d years old!", ta[name], ta[age]);
}