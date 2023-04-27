
string null_object = null;
string object_with_content;

void function_with_coalescing( string object ){
	if (null ?? true) {
		print( "Wunder" );
	}
	if (null ?? false) {
		print( "gibt es!" );
	}
	if (object.length() ?? true) {
		print( " muss man erkämpfen!\n" );
	}
}


int main(){
	object_with_content = "This is a string!";
	print( "Hello\n" );
	function_with_coalescing( "Hy" );
	return 0;
}