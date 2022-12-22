using GLib;


int methode_mit_2_rueckgaben(int a, out int quadrat ){
    var temp = quadrat;
    print("%quadrat zum Anfang = d\n",quadrat);
    quadrat = a*a;
    return a+quadrat;
}

int methode_mit_ueberschriebener_rueckgabe(int a, ref int quadrat){
    var temp = quadrat;
    quadrat++;
    return a + temp;
}


void main(){
    int a = 5;
    int b=1;
    int c = methode_mit_2_rueckgaben(a, out b);
   
    print("b = %d\nc = %d\n",b,c);
   
    b=5;
    c= methode_mit_ueberschriebener_rueckgabe(a, ref b);
    print("b = %d\nc = %d\n",b,c);

}