ALL=hello_c hello_c_static hello_cpp hello_static_cpp hello_cpp_full_static

all: ${ALL}
	for prog in ${ALL}; do \
	  hyperfine -N --export-json="$$prog.json" --warmup=2000 --runs=1000 -L loops ",0,1,1000" "./$$prog {loops}" ;\
	done

clean:
	rm -f hello_c hello_c_static hello_cpp hello_static_cpp hello_cpp_full_static

hello_c: hello.c
	${CC} -O2 -o $@ $<

hello_c_static: hello.c
	${CC} -static -O2 -o $@ $<

hello_cpp: hello.cpp
	${CXX} -O2 -o $@ $<

hello_static_cpp: hello.cpp
	${CXX} -O2 -static-libstdc++ -o $@ $<

hello_cpp_full_static: hello.cpp
	${CXX} -O2 -static -o $@ $<

