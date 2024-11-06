#include <stdio.h>

int main(void)
{
   char buf[4096];
   int x;
   
   while (fgets(buf, sizeof(buf)-2, stdin) != NULL) {
        for (x = 0; x < 128; ) {
            printf("0x%c%c, ", buf[x], buf[x+1]);
            if (!((x += 2) & 31)) printf("\n");
        }
   }
}


/* ref:         HEAD -> master */
/* git commit:  98f09d8484871ed8483ce70569f79b68b7bff62b */
/* commit time: 2023-05-11 17:09:51 +0800 */
