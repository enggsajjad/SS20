/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x84a0141b */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Framework/Debouncer.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);


static void work_a_1473390551_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    int t14;
    int t15;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 1832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 1876);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 1108U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 4U);
    goto LAB3;

LAB5:    xsi_set_current_line(33, ng0);
    t5 = (t0 + 776U);
    t6 = *((char **)t5);
    t5 = (t0 + 3476U);
    t7 = (t0 + 1108U);
    t8 = *((char **)t7);
    t7 = (t0 + 3508U);
    t13 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t6, t5, t8, t7);
    if (t13 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t3 = (t14 == 100000000);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB11:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t15 = (t14 + 1);
    t1 = (t0 + 1040U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t15;
    goto LAB3;

LAB7:    t1 = (t0 + 568U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t9 = (t0 + 1040U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    *((int *)t9) = 0;
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 1108U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 4U);
    goto LAB11;

LAB13:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1108U);
    t5 = *((char **)t1);
    t1 = (t0 + 1876);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB11;

}


extern void work_a_1473390551_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1473390551_3212880686_p_0};
	xsi_register_didat("work_a_1473390551_3212880686", "isim/tf_deboun_isim_beh.exe.sim/work/a_1473390551_3212880686.didat");
	xsi_register_executes(pe);
}
