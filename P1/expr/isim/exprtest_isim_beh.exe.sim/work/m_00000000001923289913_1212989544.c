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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/17201/Desktop/CO/P1/expr/expr.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {48, 0};
static int ng3[] = {57, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {42, 0};
static int ng6[] = {43, 0};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {3U, 0U};



static void Initial_32_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 2, 0LL);

LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t14[8];
    char t15[8];
    char t16[8];
    char t20[8];
    char t29[8];
    char t33[8];
    char t41[8];
    char t91[8];
    char t92[8];
    char t93[8];
    char t95[8];
    char t109[8];
    char t113[8];
    char t121[8];
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
    int t13;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    char *t94;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    char *t110;
    char *t111;
    char *t112;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    int t145;
    int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;

LAB0:    t1 = (t0 + 1772U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2112);
    *((int *)t2) = 1;
    t3 = (t0 + 1800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(38, ng0);

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(40, ng0);

LAB21:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 784U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    memset(t16, 0, 8);
    t17 = (t12 + 4);
    if (*((unsigned int *)t17) != 0)
        goto LAB23;

LAB22:    t18 = (t11 + 4);
    if (*((unsigned int *)t18) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t12) < *((unsigned int *)t11))
        goto LAB25;

LAB24:    *((unsigned int *)t16) = 1;

LAB25:    memset(t20, 0, 8);
    t21 = (t16 + 4);
    t6 = *((unsigned int *)t21);
    t7 = (~(t6));
    t8 = *((unsigned int *)t16);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t21) != 0)
        goto LAB29;

LAB30:    t23 = (t20 + 4);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t23);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB31;

LAB32:    memcpy(t41, t20, 8);

LAB33:    memset(t15, 0, 8);
    t73 = (t41 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t73) != 0)
        goto LAB48;

LAB49:    t80 = (t15 + 4);
    t81 = *((unsigned int *)t15);
    t82 = *((unsigned int *)t80);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB50;

LAB51:    t85 = *((unsigned int *)t15);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t80) > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t15) > 0)
        goto LAB56;

LAB57:    memcpy(t14, t89, 8);

LAB58:    t90 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t90, t14, 0, 0, 2, 0LL);
    goto LAB20;

LAB14:    xsi_set_current_line(43, ng0);

LAB59:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t16, 0, 8);
    t11 = (t5 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB61;

LAB60:    t12 = (t3 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB61;

LAB64:    if (*((unsigned int *)t5) < *((unsigned int *)t3))
        goto LAB63;

LAB62:    *((unsigned int *)t16) = 1;

LAB63:    memset(t20, 0, 8);
    t18 = (t16 + 4);
    t6 = *((unsigned int *)t18);
    t7 = (~(t6));
    t8 = *((unsigned int *)t16);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t18) != 0)
        goto LAB67;

LAB68:    t21 = (t20 + 4);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB69;

LAB70:    memcpy(t41, t20, 8);

LAB71:    memset(t15, 0, 8);
    t55 = (t41 + 4);
    t74 = *((unsigned int *)t55);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t55) != 0)
        goto LAB86;

LAB87:    t73 = (t15 + 4);
    t81 = *((unsigned int *)t15);
    t82 = *((unsigned int *)t73);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB88;

LAB89:    t85 = *((unsigned int *)t15);
    t86 = (~(t85));
    t87 = *((unsigned int *)t73);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t73) > 0)
        goto LAB92;

LAB93:    if (*((unsigned int *)t15) > 0)
        goto LAB94;

LAB95:    memcpy(t14, t91, 8);

LAB96:    t170 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t170, t14, 0, 0, 2, 0LL);
    goto LAB20;

LAB16:    xsi_set_current_line(47, ng0);

LAB134:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t16, 0, 8);
    t11 = (t5 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB136;

LAB135:    t12 = (t3 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB136;

LAB139:    if (*((unsigned int *)t5) < *((unsigned int *)t3))
        goto LAB138;

LAB137:    *((unsigned int *)t16) = 1;

LAB138:    memset(t20, 0, 8);
    t18 = (t16 + 4);
    t6 = *((unsigned int *)t18);
    t7 = (~(t6));
    t8 = *((unsigned int *)t16);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB140;

LAB141:    if (*((unsigned int *)t18) != 0)
        goto LAB142;

LAB143:    t21 = (t20 + 4);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB144;

LAB145:    memcpy(t41, t20, 8);

LAB146:    memset(t15, 0, 8);
    t55 = (t41 + 4);
    t74 = *((unsigned int *)t55);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB159;

LAB160:    if (*((unsigned int *)t55) != 0)
        goto LAB161;

LAB162:    t73 = (t15 + 4);
    t81 = *((unsigned int *)t15);
    t82 = *((unsigned int *)t73);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB163;

LAB164:    t85 = *((unsigned int *)t15);
    t86 = (~(t85));
    t87 = *((unsigned int *)t73);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB165;

LAB166:    if (*((unsigned int *)t73) > 0)
        goto LAB167;

LAB168:    if (*((unsigned int *)t15) > 0)
        goto LAB169;

LAB170:    memcpy(t14, t91, 8);

LAB171:    t170 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t170, t14, 0, 0, 2, 0LL);
    goto LAB20;

LAB18:    xsi_set_current_line(51, ng0);

LAB209:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 2, 0LL);
    goto LAB20;

LAB23:    t19 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB25;

LAB27:    *((unsigned int *)t20) = 1;
    goto LAB30;

LAB29:    t22 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB30;

LAB31:    t27 = (t0 + 784U);
    t28 = *((char **)t27);
    t27 = ((char*)((ng3)));
    memset(t29, 0, 8);
    t30 = (t28 + 4);
    if (*((unsigned int *)t30) != 0)
        goto LAB35;

LAB34:    t31 = (t27 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB35;

LAB38:    if (*((unsigned int *)t28) > *((unsigned int *)t27))
        goto LAB37;

LAB36:    *((unsigned int *)t29) = 1;

LAB37:    memset(t33, 0, 8);
    t34 = (t29 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t34) != 0)
        goto LAB41;

LAB42:    t42 = *((unsigned int *)t20);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t20 + 4);
    t46 = (t33 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB33;

LAB35:    t32 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB37;

LAB39:    *((unsigned int *)t33) = 1;
    goto LAB42;

LAB41:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB42;

LAB43:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t20 + 4);
    t56 = (t33 + 4);
    t57 = *((unsigned int *)t20);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB45;

LAB46:    *((unsigned int *)t15) = 1;
    goto LAB49;

LAB48:    t79 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB49;

LAB50:    t84 = ((char*)((ng4)));
    goto LAB51;

LAB52:    t89 = ((char*)((ng1)));
    goto LAB53;

LAB54:    xsi_vlog_unsigned_bit_combine(t14, 2, t84, 2, t89, 2);
    goto LAB58;

LAB56:    memcpy(t14, t84, 8);
    goto LAB58;

LAB61:    t17 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB63;

LAB65:    *((unsigned int *)t20) = 1;
    goto LAB68;

LAB67:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB68;

LAB69:    t22 = (t0 + 784U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng6)));
    memset(t29, 0, 8);
    t27 = (t23 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB73;

LAB72:    t28 = (t22 + 4);
    if (*((unsigned int *)t28) != 0)
        goto LAB73;

LAB76:    if (*((unsigned int *)t23) > *((unsigned int *)t22))
        goto LAB75;

LAB74:    *((unsigned int *)t29) = 1;

LAB75:    memset(t33, 0, 8);
    t31 = (t29 + 4);
    t35 = *((unsigned int *)t31);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t31) != 0)
        goto LAB79;

LAB80:    t42 = *((unsigned int *)t20);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t34 = (t20 + 4);
    t40 = (t33 + 4);
    t45 = (t41 + 4);
    t48 = *((unsigned int *)t34);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    *((unsigned int *)t45) = t50;
    t51 = *((unsigned int *)t45);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB81;

LAB82:
LAB83:    goto LAB71;

LAB73:    t30 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB75;

LAB77:    *((unsigned int *)t33) = 1;
    goto LAB80;

LAB79:    t32 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB80;

LAB81:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t45);
    *((unsigned int *)t41) = (t53 | t54);
    t46 = (t20 + 4);
    t47 = (t33 + 4);
    t57 = *((unsigned int *)t20);
    t58 = (~(t57));
    t59 = *((unsigned int *)t46);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t47);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t69 & t67);
    t70 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB83;

LAB84:    *((unsigned int *)t15) = 1;
    goto LAB87;

LAB86:    t56 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB87;

LAB88:    t79 = ((char*)((ng7)));
    goto LAB89;

LAB90:    t80 = (t0 + 784U);
    t84 = *((char **)t80);
    t80 = ((char*)((ng2)));
    memset(t93, 0, 8);
    t89 = (t84 + 4);
    if (*((unsigned int *)t89) != 0)
        goto LAB98;

LAB97:    t90 = (t80 + 4);
    if (*((unsigned int *)t90) != 0)
        goto LAB98;

LAB101:    if (*((unsigned int *)t84) < *((unsigned int *)t80))
        goto LAB100;

LAB99:    *((unsigned int *)t93) = 1;

LAB100:    memset(t95, 0, 8);
    t96 = (t93 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t93);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t96) != 0)
        goto LAB104;

LAB105:    t103 = (t95 + 4);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB106;

LAB107:    memcpy(t121, t95, 8);

LAB108:    memset(t92, 0, 8);
    t153 = (t121 + 4);
    t154 = *((unsigned int *)t153);
    t155 = (~(t154));
    t156 = *((unsigned int *)t121);
    t157 = (t156 & t155);
    t158 = (t157 & 1U);
    if (t158 != 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t153) != 0)
        goto LAB123;

LAB124:    t160 = (t92 + 4);
    t161 = *((unsigned int *)t92);
    t162 = *((unsigned int *)t160);
    t163 = (t161 || t162);
    if (t163 > 0)
        goto LAB125;

LAB126:    t165 = *((unsigned int *)t92);
    t166 = (~(t165));
    t167 = *((unsigned int *)t160);
    t168 = (t166 || t167);
    if (t168 > 0)
        goto LAB127;

LAB128:    if (*((unsigned int *)t160) > 0)
        goto LAB129;

LAB130:    if (*((unsigned int *)t92) > 0)
        goto LAB131;

LAB132:    memcpy(t91, t169, 8);

LAB133:    goto LAB91;

LAB92:    xsi_vlog_unsigned_bit_combine(t14, 2, t79, 2, t91, 2);
    goto LAB96;

LAB94:    memcpy(t14, t79, 8);
    goto LAB96;

LAB98:    t94 = (t93 + 4);
    *((unsigned int *)t93) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB100;

LAB102:    *((unsigned int *)t95) = 1;
    goto LAB105;

LAB104:    t102 = (t95 + 4);
    *((unsigned int *)t95) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB105;

LAB106:    t107 = (t0 + 784U);
    t108 = *((char **)t107);
    t107 = ((char*)((ng3)));
    memset(t109, 0, 8);
    t110 = (t108 + 4);
    if (*((unsigned int *)t110) != 0)
        goto LAB110;

LAB109:    t111 = (t107 + 4);
    if (*((unsigned int *)t111) != 0)
        goto LAB110;

LAB113:    if (*((unsigned int *)t108) > *((unsigned int *)t107))
        goto LAB112;

LAB111:    *((unsigned int *)t109) = 1;

LAB112:    memset(t113, 0, 8);
    t114 = (t109 + 4);
    t115 = *((unsigned int *)t114);
    t116 = (~(t115));
    t117 = *((unsigned int *)t109);
    t118 = (t117 & t116);
    t119 = (t118 & 1U);
    if (t119 != 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t114) != 0)
        goto LAB116;

LAB117:    t122 = *((unsigned int *)t95);
    t123 = *((unsigned int *)t113);
    t124 = (t122 & t123);
    *((unsigned int *)t121) = t124;
    t125 = (t95 + 4);
    t126 = (t113 + 4);
    t127 = (t121 + 4);
    t128 = *((unsigned int *)t125);
    t129 = *((unsigned int *)t126);
    t130 = (t128 | t129);
    *((unsigned int *)t127) = t130;
    t131 = *((unsigned int *)t127);
    t132 = (t131 != 0);
    if (t132 == 1)
        goto LAB118;

LAB119:
LAB120:    goto LAB108;

LAB110:    t112 = (t109 + 4);
    *((unsigned int *)t109) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB112;

LAB114:    *((unsigned int *)t113) = 1;
    goto LAB117;

LAB116:    t120 = (t113 + 4);
    *((unsigned int *)t113) = 1;
    *((unsigned int *)t120) = 1;
    goto LAB117;

LAB118:    t133 = *((unsigned int *)t121);
    t134 = *((unsigned int *)t127);
    *((unsigned int *)t121) = (t133 | t134);
    t135 = (t95 + 4);
    t136 = (t113 + 4);
    t137 = *((unsigned int *)t95);
    t138 = (~(t137));
    t139 = *((unsigned int *)t135);
    t140 = (~(t139));
    t141 = *((unsigned int *)t113);
    t142 = (~(t141));
    t143 = *((unsigned int *)t136);
    t144 = (~(t143));
    t145 = (t138 & t140);
    t146 = (t142 & t144);
    t147 = (~(t145));
    t148 = (~(t146));
    t149 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t149 & t147);
    t150 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t150 & t148);
    t151 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t151 & t147);
    t152 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t152 & t148);
    goto LAB120;

LAB121:    *((unsigned int *)t92) = 1;
    goto LAB124;

LAB123:    t159 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t159) = 1;
    goto LAB124;

LAB125:    t164 = ((char*)((ng8)));
    goto LAB126;

LAB127:    t169 = ((char*)((ng1)));
    goto LAB128;

LAB129:    xsi_vlog_unsigned_bit_combine(t91, 2, t164, 2, t169, 2);
    goto LAB133;

LAB131:    memcpy(t91, t164, 8);
    goto LAB133;

LAB136:    t17 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB138;

LAB140:    *((unsigned int *)t20) = 1;
    goto LAB143;

LAB142:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB143;

LAB144:    t22 = (t0 + 784U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng3)));
    memset(t29, 0, 8);
    t27 = (t23 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB148;

LAB147:    t28 = (t22 + 4);
    if (*((unsigned int *)t28) != 0)
        goto LAB148;

LAB151:    if (*((unsigned int *)t23) > *((unsigned int *)t22))
        goto LAB150;

LAB149:    *((unsigned int *)t29) = 1;

LAB150:    memset(t33, 0, 8);
    t31 = (t29 + 4);
    t35 = *((unsigned int *)t31);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB152;

LAB153:    if (*((unsigned int *)t31) != 0)
        goto LAB154;

LAB155:    t42 = *((unsigned int *)t20);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t34 = (t20 + 4);
    t40 = (t33 + 4);
    t45 = (t41 + 4);
    t48 = *((unsigned int *)t34);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    *((unsigned int *)t45) = t50;
    t51 = *((unsigned int *)t45);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB156;

LAB157:
LAB158:    goto LAB146;

LAB148:    t30 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB150;

LAB152:    *((unsigned int *)t33) = 1;
    goto LAB155;

LAB154:    t32 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB155;

LAB156:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t45);
    *((unsigned int *)t41) = (t53 | t54);
    t46 = (t20 + 4);
    t47 = (t33 + 4);
    t57 = *((unsigned int *)t20);
    t58 = (~(t57));
    t59 = *((unsigned int *)t46);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t47);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t69 & t67);
    t70 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB158;

LAB159:    *((unsigned int *)t15) = 1;
    goto LAB162;

LAB161:    t56 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB162;

LAB163:    t79 = ((char*)((ng4)));
    goto LAB164;

LAB165:    t80 = (t0 + 784U);
    t84 = *((char **)t80);
    t80 = ((char*)((ng5)));
    memset(t93, 0, 8);
    t89 = (t84 + 4);
    if (*((unsigned int *)t89) != 0)
        goto LAB173;

LAB172:    t90 = (t80 + 4);
    if (*((unsigned int *)t90) != 0)
        goto LAB173;

LAB176:    if (*((unsigned int *)t84) < *((unsigned int *)t80))
        goto LAB175;

LAB174:    *((unsigned int *)t93) = 1;

LAB175:    memset(t95, 0, 8);
    t96 = (t93 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t93);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB177;

LAB178:    if (*((unsigned int *)t96) != 0)
        goto LAB179;

LAB180:    t103 = (t95 + 4);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB181;

LAB182:    memcpy(t121, t95, 8);

LAB183:    memset(t92, 0, 8);
    t153 = (t121 + 4);
    t154 = *((unsigned int *)t153);
    t155 = (~(t154));
    t156 = *((unsigned int *)t121);
    t157 = (t156 & t155);
    t158 = (t157 & 1U);
    if (t158 != 0)
        goto LAB196;

LAB197:    if (*((unsigned int *)t153) != 0)
        goto LAB198;

LAB199:    t160 = (t92 + 4);
    t161 = *((unsigned int *)t92);
    t162 = *((unsigned int *)t160);
    t163 = (t161 || t162);
    if (t163 > 0)
        goto LAB200;

LAB201:    t165 = *((unsigned int *)t92);
    t166 = (~(t165));
    t167 = *((unsigned int *)t160);
    t168 = (t166 || t167);
    if (t168 > 0)
        goto LAB202;

LAB203:    if (*((unsigned int *)t160) > 0)
        goto LAB204;

LAB205:    if (*((unsigned int *)t92) > 0)
        goto LAB206;

LAB207:    memcpy(t91, t169, 8);

LAB208:    goto LAB166;

LAB167:    xsi_vlog_unsigned_bit_combine(t14, 2, t79, 2, t91, 2);
    goto LAB171;

LAB169:    memcpy(t14, t79, 8);
    goto LAB171;

LAB173:    t94 = (t93 + 4);
    *((unsigned int *)t93) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB175;

LAB177:    *((unsigned int *)t95) = 1;
    goto LAB180;

LAB179:    t102 = (t95 + 4);
    *((unsigned int *)t95) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB180;

LAB181:    t107 = (t0 + 784U);
    t108 = *((char **)t107);
    t107 = ((char*)((ng6)));
    memset(t109, 0, 8);
    t110 = (t108 + 4);
    if (*((unsigned int *)t110) != 0)
        goto LAB185;

LAB184:    t111 = (t107 + 4);
    if (*((unsigned int *)t111) != 0)
        goto LAB185;

LAB188:    if (*((unsigned int *)t108) > *((unsigned int *)t107))
        goto LAB187;

LAB186:    *((unsigned int *)t109) = 1;

LAB187:    memset(t113, 0, 8);
    t114 = (t109 + 4);
    t115 = *((unsigned int *)t114);
    t116 = (~(t115));
    t117 = *((unsigned int *)t109);
    t118 = (t117 & t116);
    t119 = (t118 & 1U);
    if (t119 != 0)
        goto LAB189;

LAB190:    if (*((unsigned int *)t114) != 0)
        goto LAB191;

LAB192:    t122 = *((unsigned int *)t95);
    t123 = *((unsigned int *)t113);
    t124 = (t122 & t123);
    *((unsigned int *)t121) = t124;
    t125 = (t95 + 4);
    t126 = (t113 + 4);
    t127 = (t121 + 4);
    t128 = *((unsigned int *)t125);
    t129 = *((unsigned int *)t126);
    t130 = (t128 | t129);
    *((unsigned int *)t127) = t130;
    t131 = *((unsigned int *)t127);
    t132 = (t131 != 0);
    if (t132 == 1)
        goto LAB193;

LAB194:
LAB195:    goto LAB183;

LAB185:    t112 = (t109 + 4);
    *((unsigned int *)t109) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB187;

LAB189:    *((unsigned int *)t113) = 1;
    goto LAB192;

LAB191:    t120 = (t113 + 4);
    *((unsigned int *)t113) = 1;
    *((unsigned int *)t120) = 1;
    goto LAB192;

LAB193:    t133 = *((unsigned int *)t121);
    t134 = *((unsigned int *)t127);
    *((unsigned int *)t121) = (t133 | t134);
    t135 = (t95 + 4);
    t136 = (t113 + 4);
    t137 = *((unsigned int *)t95);
    t138 = (~(t137));
    t139 = *((unsigned int *)t135);
    t140 = (~(t139));
    t141 = *((unsigned int *)t113);
    t142 = (~(t141));
    t143 = *((unsigned int *)t136);
    t144 = (~(t143));
    t145 = (t138 & t140);
    t146 = (t142 & t144);
    t147 = (~(t145));
    t148 = (~(t146));
    t149 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t149 & t147);
    t150 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t150 & t148);
    t151 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t151 & t147);
    t152 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t152 & t148);
    goto LAB195;

LAB196:    *((unsigned int *)t92) = 1;
    goto LAB199;

LAB198:    t159 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t159) = 1;
    goto LAB199;

LAB200:    t164 = ((char*)((ng8)));
    goto LAB201;

LAB202:    t169 = ((char*)((ng1)));
    goto LAB203;

LAB204:    xsi_vlog_unsigned_bit_combine(t91, 2, t164, 2, t169, 2);
    goto LAB208;

LAB206:    memcpy(t91, t164, 8);
    goto LAB208;

}

static void Cont_57_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 1916U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1104);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 2164);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 2120);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng4)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng1)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t35, 1, t40, 1);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000001923289913_1212989544_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_35_1,(void *)Cont_57_2};
	xsi_register_didat("work_m_00000000001923289913_1212989544", "isim/exprtest_isim_beh.exe.sim/work/m_00000000001923289913_1212989544.didat");
	xsi_register_executes(pe);
}
