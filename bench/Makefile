.DEAFAULT_GOAL := build-normal


build-normal:
	gcc -O3 -std=c11 -o test_c bench-c.c
	g++ -O3 -std=c++17 -o test_cpp bench-c++.cpp
	valac -X "-O3" -X -lm --pkg=posix --pkg=glib-2.0 -o test_vala bench-vala.vala

build-debug:
	gcc -O3 -std=c11 -g -o test_c_debug bench-c.c
	g++ -O3 -std=c++17 -g -o test_cpp_debug bench-c++.cpp
	valac -X "-g -O3" -X -lm --pkg=posix --pkg=glib-2.0 -o test_vala_debug bench-vala.vala
