using GLib;

class BasisKlasse{
    private int alter;

    public void foo(){
        print("Hallo\n");
    }
}

class ErbendeKlasse :  BasisKlasse {

    public void foo(){
        print("Welt!\n");
    }

}

int main(){
    BasisKlasse b = new BasisKlasse();
    ErbendeKlasse e = new ErbendeKlasse();

    b.foo();
    e.foo();
    BasisKlasse new_b = e;
    new_b.foo();
    return 0;
}