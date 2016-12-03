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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ameya/Desktop/Indi_Research/Firmware/psi_trigg.vhd";



static void work_a_2346773207_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    int t19;
    unsigned char t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;

LAB0:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 4680);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t9 = t2;
    memset(t9, (unsigned char)2, 32U);
    t10 = (t0 + 4792);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4856);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4920);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t8 = *((unsigned char *)t6);
    t15 = (t8 == (unsigned char)3);
    if (t15 == 1)
        goto LAB16;

LAB17:    t7 = (unsigned char)0;

LAB18:    if (t7 == 1)
        goto LAB13;

LAB14:    t5 = (unsigned char)0;

LAB15:    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB10:    xsi_set_current_line(72, ng0);
    t9 = (t0 + 2888U);
    t11 = *((char **)t9);
    t19 = *((int *)t11);
    t20 = (t19 == 0);
    if (t20 != 0)
        goto LAB19;

LAB21:    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t19 = *((int *)t3);
    t4 = (t19 != 0);
    if (t4 == 1)
        goto LAB24;

LAB25:    t1 = (unsigned char)0;

LAB26:    if (t1 != 0)
        goto LAB22;

LAB23:    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t19 = *((int *)t3);
    t21 = (32 - 1);
    t1 = (t19 == t21);
    if (t1 != 0)
        goto LAB27;

LAB28:
LAB20:    goto LAB11;

LAB13:    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t17 = *((unsigned char *)t10);
    t18 = (t17 == (unsigned char)3);
    t5 = t18;
    goto LAB15;

LAB16:    t2 = (t0 + 1312U);
    t16 = xsi_signal_has_event(t2);
    t7 = t16;
    goto LAB18;

LAB19:    xsi_set_current_line(74, ng0);
    t9 = (t0 + 1032U);
    t12 = *((char **)t9);
    t21 = (32 - 1);
    t22 = (31 - t21);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t9 = (t12 + t24);
    t13 = (t0 + 4792);
    t14 = (t13 + 56U);
    t25 = *((char **)t14);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t9, 32U);
    xsi_driver_first_trans_delta(t13, 0U, 32U, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t19 = *((int *)t3);
    t21 = (t19 + 1);
    t2 = (t0 + 2888U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t21;
    goto LAB20;

LAB22:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2152U);
    t9 = *((char **)t2);
    t29 = (32 - 1);
    t30 = (t29 - 31);
    t22 = (t30 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t2 = (t9 + t24);
    t7 = *((unsigned char *)t2);
    t10 = (t0 + 4984);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t7;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t19 = (32 - 1);
    t21 = (t19 - 31);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t1 = *((unsigned char *)t2);
    t6 = (t0 + 4856);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t19 = (32 - 2);
    t22 = (31 - t19);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t6 = (t0 + 4792);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 31U);
    xsi_driver_first_trans_delta(t6, 0U, 31U, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4792);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 31U, 1, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t19 = *((int *)t3);
    t21 = (t19 + 1);
    t2 = (t0 + 2888U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t21;
    goto LAB20;

LAB24:    t2 = (t0 + 2888U);
    t6 = *((char **)t2);
    t21 = *((int *)t6);
    t28 = (32 - 1);
    t5 = (t21 < t28);
    t1 = t5;
    goto LAB26;

LAB27:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4920);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB20;

}

static void work_a_2346773207_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4696);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2346773207_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5112);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4712);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2346773207_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2346773207_3212880686_p_0,(void *)work_a_2346773207_3212880686_p_1,(void *)work_a_2346773207_3212880686_p_2};
	xsi_register_didat("work_a_2346773207_3212880686", "isim/psi_tb_isim_beh.exe.sim/work/a_2346773207_3212880686.didat");
	xsi_register_executes(pe);
}
