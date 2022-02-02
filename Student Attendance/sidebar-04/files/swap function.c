#include<stdio.h>
main()
{
    int a[10],b[20],i,j,k,c[10];
    printf("enter first array elements");
    for(i=0;i<5;i++)

    scanf("%d",&a[i]);
    printf("enter second array elements");
    for(i=0;i<5;i++)
    scanf("%d",&b[i]);
    printf("\nresultant array");
    for(i=0;i<5;i++)
    {


        c[k]=a[i]+b[i];
        printf("\t%d",c[k]);
    }
}

