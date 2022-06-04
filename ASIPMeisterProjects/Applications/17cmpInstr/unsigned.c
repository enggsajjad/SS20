#include "stdio.h"
int main(void)
{
  unsigned int u11=5;
  unsigned int u12=16;
  unsigned int uimd=20; 
  int s11=5;
  int s12=16;
  int simd=20; 

  printf("u11=%8x\n",u11);
  printf("u12=%8x\n",u12);
  printf("ADDU=%8x, %d\n",u11+u12,u11+u12);
  printf("ADDUI=%8x, %d\n",u11+uimd,u11+uimd);
  printf("SUBU=%8x, %d\n",u11-u12,u11-u12);
  printf("SUBUI=%8x, %d\n",u11-uimd,u11-uimd);
  if(s11<s12)
   printf("ELT=1\n");
  else
   printf("ELT=0\n");
  if(u11<u12)
   printf("ELTU=1\n");
  else
   printf("ELTU=0\n");
  if(s11<simd)
   printf("ELTI=1\n");
  else
   printf("ELTI=0\n");

  if(s11<=s12)
   printf("ELE=1\n");
  else
   printf("ELE=0\n");
  if(u11<=u12)
   printf("ELEU=1\n");
  else
   printf("ELEU=0\n");
  if(s11<=simd)
   printf("ELEI=1\n");
  else
   printf("ELEI=0\n");

  if(s11>s12)
   printf("EGT=1\n");
  else
   printf("EGT=0\n");
  if(u11>u12)
   printf("ELGU=1\n");
  else
   printf("ELGU=0\n");
  if(s11>simd)
   printf("ELGI=1\n");
  else
   printf("ELGI=0\n");

  if(s11>=s12)
   printf("EGE=1\n");
  else
   printf("EGE=0\n");
  if(u11>=u12)
   printf("EGEU=1\n");
  else
   printf("EGEU=0\n");
  if(s11>=simd)
   printf("EGEI=1\n");
  else
   printf("EGEI=0\n");

  if(s11==s12)
   printf("EEQ=1\n");
  else
   printf("EEQ=0\n");
/*  if(u11==u12)
   printf("EEQU=1\n");
  else
   printf("EEQU=0\n");*/
  if(s11==simd)
   printf("EEQI=1\n");
  else
   printf("EEQI=0\n");

  if(s11!=s12)
   printf("ENEQ=1\n");
  else
   printf("ENEQ=0\n");
/*  if(u11!=u12)
   printf("ENEQU=1\n");
  else
   printf("ENEQU=0\n");*/
  if(s11!=simd)
   printf("ENEQI=1\n");
  else
   printf("ENEQI=0\n");

  return 0;

}

