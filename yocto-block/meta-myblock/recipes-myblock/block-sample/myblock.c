// minimal placeholder block driver
#include <linux/module.h>
#include <linux/blkdev.h>
static int __init my_init(void){pr_info("myblock loaded\n");return 0;}
static void __exit my_exit(void){pr_info("myblock unloaded\n");}
module_init(my_init); module_exit(my_exit);
MODULE_LICENSE("GPL");
