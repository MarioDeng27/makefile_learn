#add_float.c add_int.c add.h sub_float.c sub_int.c sub.h main.c
#得可执行文件 test 省去欲编译 汇编

#是注释
#第一层: 显示规则
#目标文件:依赖文件
#[TAB]指令

#第一个目标文件是位的最终目标!!! 递归

#rm -rf hello.o hello.S hello.i hello
#不需要生成目标文件, 我们称为伪目标: .PHONY:

#第二层: 变量 = (替换)	+= (追加)	:= (恒等于)
#		使用变量 $(变量名)	替换

#第三层: 隐含规则 	%c %.o 任意的.c或者.o   *.c *.o 所有的 .c .o

#第四层: 通配符 $@所有的目标 $^所有的依赖文件 $<所有的依赖文件的第一个文件

#第五层:
#
#
TAR = test
OBJ = add_float.o add_int.o sub_float.o sub_int.o main.o
CC := gcc
RMRF :=rm -rf

$(TAR):$(OBJ)
	$(CC) $^ -o $@

%o:%c
	$(CC) $^ -o $@

.PHONY:
clearall:
	$(RMRF) add_float.o add_int.o sub_float.o sub_int.o main.o test

clear:
	$(RMRF) add_float.o add_int.o sub_float.o sub_int.o main.o


# TAR = test
# OBJ = add_float.o add_int.o sub_float.o sub_int.o main.o
# CC := gcc
# RMRF := rm -rf
# $(TAR): $(OBJ)
# 	$(CC) $^ -o $@
# %.o:%.c
# 	$(CC) -c $^ -o $@

# .PHONY:
# clearall:
# 	$(RMRF) $(OBJ) $(TAR)
# clear:
# 	$(RMRF) $(OBJ)



# TAR = test
# CC := gcc
# OBJ = add_float.o add_int.o sub_float.o sub_int.o main.o


# $(TAR):$(OBJ)
# 	$(CC) $(OBJ) -o $(TAR)

# add_float.o:add_float.c
# 	$(CC) -c add_float.c -o add_float.o
	
# add_int.o:add_int.c
# 	$(CC) -c add_int.c -o add_int.o

# sub_float.o:sub_float.c
# 	$(CC) -c sub_float.c -o sub_float.o

# main.o:main.c
# 	gcc -c sub_int.c -o sub_int.o

# main.o:main.c
# 	gcc -c main.c -o main.o

# .PHONY:
# clearall:
# 	rm -rf $(OBJ) $(TAR)
# clear:
# 	rm -rf $(OBJ)


# test:add_float.o add_int.o sub_float.o sub_int.o main.o
# 	gcc add_float.o add_int.o sub_float.o sub_int.o main.o -o test

# add_float.o:add_float.c
# 	gcc -c add_float.c -o add_float.o
	
# add_int.o:add_int.c
# 	gcc -c add_int.c -o add_int.o

# sub_float.o:sub_float.c
# 	gcc -c sub_float.c -o sub_float.o

# main.o:main.c
# 	gcc -c sub_int.c -o sub_int.o

# main.o:main.c
# 	gcc -c main.c -o main.o

# .PHONY:
# clearall:
# 	rm -rf add_float.o add_int.o sub_float.o sub_int.o main.o test
# clear:
# 	rm -rf add_float.o add_int.o sub_float.o sub_int.o main.o


