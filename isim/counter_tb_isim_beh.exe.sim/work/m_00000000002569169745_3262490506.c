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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Jerry Xu/Desktop/OTMB/OTMB_2013_PRBS_Checker_USB/counter_noover.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {1U, 0U};



static void Always_27_0(char *t0)
{
    char t13[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(28, ng0);

LAB9:    xsi_set_current_line(29, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t14 = (t11 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB15;

LAB14:    t15 = (t12 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB15;

LAB18:    if (*((unsigned int *)t11) < *((unsigned int *)t12))
        goto LAB16;

LAB17:    t17 = (t13 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t13);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB19;

LAB20:
LAB21:    goto LAB12;

LAB15:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB17;

LAB16:    *((unsigned int *)t13) = 1;
    goto LAB17;

LAB19:    xsi_set_current_line(32, ng0);

LAB22:    xsi_set_current_line(33, ng0);
    t23 = (t0 + 1768);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_add(t27, 2, t25, 2, t26, 2);
    t28 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t28, t27, 0, 0, 2, 0LL);
    goto LAB21;

}


extern void work_m_00000000002569169745_3262490506_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000002569169745_3262490506", "isim/counter_tb_isim_beh.exe.sim/work/m_00000000002569169745_3262490506.didat");
	xsi_register_executes(pe);
}
