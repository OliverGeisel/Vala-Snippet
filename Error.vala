

errordomain JavaErrors{
    NullPointerException,
    IllegalArgumentException,
    RuntimeError

}

errordomain MathErrors{
    PI_IS_3,
    NOT_A_NUMBER
}
void openFile() throws JavaErrors.NullPointerException{
    // Force Null
    Object? f1 = null;
    if (f1 == null){
        throw new JavaErrors.NullPointerException("File was Null");
    }
}

void testMethod() throws MathErrors.PI_IS_3{
    throw new MathErrors.PI_IS_3("Pi is now 3.0\n");
    stdout.printf("This section will not be printed");
}

void main(){

    try{
        openFile();
    }
    catch(JavaErrors.NullPointerException ne){
        stdout.printf("The Error was catched!\n");
    }

    try{
        testMethod();
    }
    catch{ // Fängt jeden anderen Fehler
        print("Hier wurde jeder Fehler behandelt!\n");
        throw new JavaErrors.RuntimeError("Eine weitere Exception trat auf\n");
    }
    finally{
        print("Das ist der finally-Block\n");
    }
    // würde kein Fehler im catch block geworfen werden, würde die folgende Methode
    // einen Fehler werfen und hier das Programm beenden.
    testMethod();
}