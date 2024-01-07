#include <stdio.h>
#define max 25

int main() {
    int frag[max], b[max], f[max], i, j, nb, nf, temp, highest = 0;
    static int bf[max], ff[max];

    printf("\n\tMemory Management Scheme - Worst Fit");
    printf("\nEnter the number of blocks:");
    scanf("%d", &nb);
    printf("Enter the number of files:");
    scanf("%d", &nf);
    printf("\nEnter the size of the blocks:-\n");

    for (i = 1; i <= nb; i++) {
        printf("Block %d:", i);
        scanf("%d", &b[i]);
    }

    printf("Enter the size of the files :-\n");
    for (i = 1; i <= nf; i++) {
        printf("File %d:", i);
        scanf("%d", &f[i]);
    }

    for (i = 1; i <= nf; i++) {
        temp = 0; // Initialize temp inside the loop

        for (j = 1; j <= nb; j++) {
            if (bf[j] != 1) { // If bf[j] is not allocated
                if (b[j] >= f[i]) { // Check if the block size is greater than or equal to file size
                    if (temp < (b[j] - f[i])) {
                        temp = b[j] - f[i];
                        ff[i] = j;
                    }
                }
            }
        }

        frag[i] = temp;
        bf[ff[i]] = 1;
        highest = temp;
    }

    printf("\nFile_no:\tFile_size:\tBlock_no:\tBlock_size:\tFragment");
    for (i = 1; i <= nf; i++)
        printf("\n%d\t\t%d\t\t%d\t\t%d\t\t%d", i, f[i], ff[i], b[ff[i]], frag[i]);

    return 0;
}
