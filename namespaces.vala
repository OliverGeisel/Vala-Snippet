using GLib;


namespace MeinNameSpace {

void foo(){
	print( "Im aeusseren Namespace!\n" );
}

private void bar(){
    print("Dies ist nur innerhalb des Namespaces verfuegbar\n");
}

private int antwort_auf_alles = 42;


	namespace EinNameSpaceInEinemNamespace {
		void foo(){
			print( "Im inneren Namespace!\n" );
		}

    	void privater_namespace_aufruf(){
            MeinNameSpace.bar();
        }
    }
}

// Der folgende Abschnitt ist äqvivalent zum namespace EinNameSpaceInEinemNamespace
/*

    namespace MeinNameSpace.EinNameSpaceInEinemNamespace{
        void foo(){
            print("Im inneren Namespace!\n");
        }
    }

 */


void main(){

    MeinNameSpace.foo();
    MeinNameSpace.EinNameSpaceInEinemNamespace.foo();
    MeinNameSpace.bar();
    MeinNameSpace.EinNameSpaceInEinemNamespace.privater_namespace_aufruf();
    int antwort = MeinNameSpace.antwort_auf_alles;
	print("%d\n",antwort);
}