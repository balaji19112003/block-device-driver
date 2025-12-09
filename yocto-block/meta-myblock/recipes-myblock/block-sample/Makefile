KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
APP = block_test
obj-m += myblock.o

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules
	gcc block_test.c -o $(APP)

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
	rm -f $(APP)
