CFLAGS:= -m32 # 32位程序
CFLAGS+= -Qn # 去掉gcc版本信息
CFLAGS+= -fno-pic # 不要位置无关的代码
CFLAGS+= -fomit-frame-pointer # 不需要栈帧
CFLAGS+= -mpreferred-stack-boundary=2 # 不需要栈对齐
CFLAGS+= -fno-asynchronous-unwind-tables # 不需要CFI信息
CFLAGS+= $(strip $(CFLAGS))



.PHONY: hello.s
hello.s: hello.c
	gcc $(CFLAGS) -S $< -o $@