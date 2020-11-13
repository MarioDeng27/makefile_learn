#是注释
#第一层: 显示规则
#目标文件:依赖文件
#[TAB]指令
#
#第一个目标文件是位的最终目标!!! 递归
#
#rm -rf hello.o hello.S hello.i hello
#不需要生成目标文件, 我们称为伪目标: .PHONY:
#
#第二层: 变量 = (替换)	+= (追加)	:= (恒等于)
#第三层
#第四层
#第五层
#
#

TAR = test

TAR += test1

CC := gcc



hello:hello.o
	gcc hello.o -o hello

hello.o:hello.S
	gcc -c hello.S -o hello.o

hello.S:hello.i
	gcc -S hello.i -o hello.S

hello.i:hello.c
	gcc -E hello.c -o hello.i

.PHONY:
clearall:
	rm -rf hello.o hello.S hello.i hello
clear:
	rm -rf hello.o hello.S hello.i



