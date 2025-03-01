#include <onix/types.h>
#include <stdio.h>

typedef struct descriptor {         // 8个字节
    unsigned short limit_low;       // 段界限 0 ~ 15 位
    unsigned int base_low : 24;     // 基地址 0 ~ 23 位
    unsigned char type : 4;         // 段类型
    unsigned char segment : 1;      // 1表示代码段或者数据段 0表示系统段
    unsigned char DPL : 2;          // Descriptor Privilege Level 描述符特权等级
    unsigned char present : 1;      // 存在位 1 在内存中 0 在磁盘上
    unsigned char limit_high : 4;   // 段界限 16 ~ 19 位
    unsigned char available : 1;    // 预留位 给操作系统
    unsigned char long_mode : 1;    // 64位扩展标志
    unsigned char big : 1;          // 32 位 还是 16位
    unsigned char granularity : 1;  // 粒度 4K 或者 1B
    unsigned char base_high;        // 基地址 24 ~ 31位
} _packed descriptor;

int main() {
    printf("size of u8 %d\n", sizeof(descriptor));
    printf("size of u16 %d\n", sizeof(u16));
    printf("size of u32 %d\n", sizeof(u32));
    printf("size of u64 %d\n", sizeof(u64));
    return 0;
}