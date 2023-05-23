.DEAFAULT_GOAL := build-normal


build-native:
	gcc -O3 -march=native -std=c11 -o test_c bench-c.c -lm
	g++ -O3 -std=c++17 -march=native -o test_cpp bench-c++.cpp
	valac -X -O3 --pkg=posix --pkg=glib-2.0 -X -march=native -o test_vala bench-vala.vala -X -lm


build-normal:
	gcc -O3 -std=c11 -o test_c bench-c.c -lm
	g++ -O3 -std=c++17 -o test_cpp bench-c++.cpp
	valac -X -O3 --pkg=posix --pkg=glib-2.0 -o test_vala bench-vala.vala -X -lm

build-debug:
	gcc -O3 -std=c11 -g -o test_c_debug bench-c.c -lm
	g++ -O3 -std=c++17 -g -o test_cpp_debug bench-c++.cpp
	valac -g --pkg=posix --pkg=glib-2.0 -C bench-vala.vala
	valac -X -O3 -X -g --pkg=posix --pkg=glib-2.0 -o test_vala_debug bench-vala.vala -X -lm

build-no-op:
	gcc -O0 -std=c11 -o test_c bench-c.c -lm
	g++ -O0 -std=c++17 -o test_cpp bench-c++.cpp
	valac -X -O0 --pkg=posix --pkg=glib-2.0 -o test_vala bench-vala.vala -X -lm

build-no-op-debug:
	gcc -O0 -std=c11 -g -o test_c_debug bench-c.c -lm
	g++ -O0 -std=c++17 -g -o test_cpp_debug bench-c++.cpp
	valac -X -O0 -X -g --pkg=posix --pkg=glib-2.0 -o test_vala_debug bench-vala.vala -X -lm

clean:
	rm -f test_c test_cpp test_vala test_c_debug test_cpp_debug test_vala_debug