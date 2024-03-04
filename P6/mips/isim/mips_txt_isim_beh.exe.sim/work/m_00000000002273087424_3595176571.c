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
static const char *ng0 = "C:/Users/17201/Desktop/CO/P6/mips/BEXT.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {16, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {24, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};



static void Cont_29_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t15[8];
    char t42[8];
    char t43[8];
    char t53[8];
    char t57[8];
    char t69[8];
    char t70[8];
    char t73[8];
    char t82[8];
    char t109[8];
    char t110[8];
    char t120[8];
    char t124[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
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
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t121;
    char *t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t6 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t65 = *((unsigned int *)t4);
    t66 = (~(t65));
    t67 = *((unsigned int *)t38);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t69, 8);

LAB20:    t136 = (t0 + 2264);
    t138 = (t136 + 32U);
    t139 = *((char **)t138);
    t140 = (t139 + 40U);
    t141 = *((char **)t140);
    memcpy(t141, t3, 8);
    xsi_driver_vfirst_trans(t136, 0, 31);
    t142 = (t0 + 2204);
    *((int *)t142) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t44 = (t0 + 600U);
    t45 = *((char **)t44);
    memset(t43, 0, 8);
    t44 = (t43 + 4);
    t46 = (t45 + 4);
    t47 = *((unsigned int *)t45);
    t48 = (t47 >> 0);
    *((unsigned int *)t43) = t48;
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 0);
    *((unsigned int *)t44) = t50;
    t51 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t51 & 65535U);
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t52 & 65535U);
    t54 = ((char*)((ng2)));
    t55 = (t0 + 600U);
    t56 = *((char **)t55);
    memset(t57, 0, 8);
    t55 = (t57 + 4);
    t58 = (t56 + 4);
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 15);
    t61 = (t60 & 1);
    *((unsigned int *)t57) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 15);
    t64 = (t63 & 1);
    *((unsigned int *)t55) = t64;
    xsi_vlog_mul_concat(t53, 16, 1, t54, 1U, t57, 1);
    xsi_vlogtype_concat(t42, 32, 32, 2U, t53, 16, t43, 16);
    goto LAB13;

LAB14:    t71 = (t0 + 692U);
    t72 = *((char **)t71);
    memset(t73, 0, 8);
    t71 = (t73 + 4);
    t74 = (t72 + 4);
    t75 = *((unsigned int *)t72);
    t76 = (t75 >> 1);
    t77 = (t76 & 1);
    *((unsigned int *)t73) = t77;
    t78 = *((unsigned int *)t74);
    t79 = (t78 >> 1);
    t80 = (t79 & 1);
    *((unsigned int *)t71) = t80;
    t81 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t73 + 4);
    t84 = (t81 + 4);
    t85 = *((unsigned int *)t73);
    t86 = *((unsigned int *)t81);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB24;

LAB21:    if (t94 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t82) = 1;

LAB24:    memset(t70, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t98) != 0)
        goto LAB27;

LAB28:    t105 = (t70 + 4);
    t106 = *((unsigned int *)t70);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB29;

LAB30:    t132 = *((unsigned int *)t70);
    t133 = (~(t132));
    t134 = *((unsigned int *)t105);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t105) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t70) > 0)
        goto LAB35;

LAB36:    memcpy(t69, t137, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t42, 32, t69, 32);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

LAB23:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t70) = 1;
    goto LAB28;

LAB27:    t104 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB28;

LAB29:    t111 = (t0 + 600U);
    t112 = *((char **)t111);
    memset(t110, 0, 8);
    t111 = (t110 + 4);
    t113 = (t112 + 4);
    t114 = *((unsigned int *)t112);
    t115 = (t114 >> 16);
    *((unsigned int *)t110) = t115;
    t116 = *((unsigned int *)t113);
    t117 = (t116 >> 16);
    *((unsigned int *)t111) = t117;
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 65535U);
    t119 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t119 & 65535U);
    t121 = ((char*)((ng2)));
    t122 = (t0 + 600U);
    t123 = *((char **)t122);
    memset(t124, 0, 8);
    t122 = (t124 + 4);
    t125 = (t123 + 4);
    t126 = *((unsigned int *)t123);
    t127 = (t126 >> 31);
    t128 = (t127 & 1);
    *((unsigned int *)t124) = t128;
    t129 = *((unsigned int *)t125);
    t130 = (t129 >> 31);
    t131 = (t130 & 1);
    *((unsigned int *)t122) = t131;
    xsi_vlog_mul_concat(t120, 16, 1, t121, 1U, t124, 1);
    xsi_vlogtype_concat(t109, 32, 32, 2U, t120, 16, t110, 16);
    goto LAB30;

LAB31:    t136 = (t0 + 600U);
    t137 = *((char **)t136);
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t69, 32, t109, 32, t137, 32);
    goto LAB37;

LAB35:    memcpy(t69, t109, 8);
    goto LAB37;

}

static void Cont_32_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t42[8];
    char t43[8];
    char t53[8];
    char t57[8];
    char t69[8];
    char t70[8];
    char t71[8];
    char t82[8];
    char t109[8];
    char t110[8];
    char t120[8];
    char t124[8];
    char t136[8];
    char t137[8];
    char t138[8];
    char t149[8];
    char t176[8];
    char t177[8];
    char t187[8];
    char t191[8];
    char t203[8];
    char t204[8];
    char t205[8];
    char t216[8];
    char t243[8];
    char t244[8];
    char t254[8];
    char t258[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
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
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t121;
    char *t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t139;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    char *t150;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    char *t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    char *t178;
    char *t179;
    char *t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t188;
    char *t189;
    char *t190;
    char *t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    char *t206;
    char *t207;
    char *t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    char *t217;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    char *t231;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    char *t245;
    char *t246;
    char *t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    char *t255;
    char *t256;
    char *t257;
    char *t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    char *t270;
    char *t271;
    char *t272;
    char *t273;
    char *t274;
    char *t275;
    char *t276;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 692U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t65 = *((unsigned int *)t4);
    t66 = (~(t65));
    t67 = *((unsigned int *)t38);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t69, 8);

LAB20:    t270 = (t0 + 2300);
    t272 = (t270 + 32U);
    t273 = *((char **)t272);
    t274 = (t273 + 40U);
    t275 = *((char **)t274);
    memcpy(t275, t3, 8);
    xsi_driver_vfirst_trans(t270, 0, 31);
    t276 = (t0 + 2212);
    *((int *)t276) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t44 = (t0 + 600U);
    t45 = *((char **)t44);
    memset(t43, 0, 8);
    t44 = (t43 + 4);
    t46 = (t45 + 4);
    t47 = *((unsigned int *)t45);
    t48 = (t47 >> 0);
    *((unsigned int *)t43) = t48;
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 0);
    *((unsigned int *)t44) = t50;
    t51 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t51 & 255U);
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t52 & 255U);
    t54 = ((char*)((ng4)));
    t55 = (t0 + 600U);
    t56 = *((char **)t55);
    memset(t57, 0, 8);
    t55 = (t57 + 4);
    t58 = (t56 + 4);
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 7);
    t61 = (t60 & 1);
    *((unsigned int *)t57) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 7);
    t64 = (t63 & 1);
    *((unsigned int *)t55) = t64;
    xsi_vlog_mul_concat(t53, 24, 1, t54, 1U, t57, 1);
    xsi_vlogtype_concat(t42, 32, 32, 2U, t53, 24, t43, 8);
    goto LAB13;

LAB14:    t72 = (t0 + 692U);
    t73 = *((char **)t72);
    memset(t71, 0, 8);
    t72 = (t71 + 4);
    t74 = (t73 + 4);
    t75 = *((unsigned int *)t73);
    t76 = (t75 >> 0);
    *((unsigned int *)t71) = t76;
    t77 = *((unsigned int *)t74);
    t78 = (t77 >> 0);
    *((unsigned int *)t72) = t78;
    t79 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t79 & 3U);
    t80 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t80 & 3U);
    t81 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t71 + 4);
    t84 = (t81 + 4);
    t85 = *((unsigned int *)t71);
    t86 = *((unsigned int *)t81);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB24;

LAB21:    if (t94 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t82) = 1;

LAB24:    memset(t70, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t98) != 0)
        goto LAB27;

LAB28:    t105 = (t70 + 4);
    t106 = *((unsigned int *)t70);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB29;

LAB30:    t132 = *((unsigned int *)t70);
    t133 = (~(t132));
    t134 = *((unsigned int *)t105);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t105) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t70) > 0)
        goto LAB35;

LAB36:    memcpy(t69, t136, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t42, 32, t69, 32);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

LAB23:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t70) = 1;
    goto LAB28;

LAB27:    t104 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB28;

LAB29:    t111 = (t0 + 600U);
    t112 = *((char **)t111);
    memset(t110, 0, 8);
    t111 = (t110 + 4);
    t113 = (t112 + 4);
    t114 = *((unsigned int *)t112);
    t115 = (t114 >> 8);
    *((unsigned int *)t110) = t115;
    t116 = *((unsigned int *)t113);
    t117 = (t116 >> 8);
    *((unsigned int *)t111) = t117;
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 255U);
    t119 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t119 & 255U);
    t121 = ((char*)((ng4)));
    t122 = (t0 + 600U);
    t123 = *((char **)t122);
    memset(t124, 0, 8);
    t122 = (t124 + 4);
    t125 = (t123 + 4);
    t126 = *((unsigned int *)t123);
    t127 = (t126 >> 15);
    t128 = (t127 & 1);
    *((unsigned int *)t124) = t128;
    t129 = *((unsigned int *)t125);
    t130 = (t129 >> 15);
    t131 = (t130 & 1);
    *((unsigned int *)t122) = t131;
    xsi_vlog_mul_concat(t120, 24, 1, t121, 1U, t124, 1);
    xsi_vlogtype_concat(t109, 32, 32, 2U, t120, 24, t110, 8);
    goto LAB30;

LAB31:    t139 = (t0 + 692U);
    t140 = *((char **)t139);
    memset(t138, 0, 8);
    t139 = (t138 + 4);
    t141 = (t140 + 4);
    t142 = *((unsigned int *)t140);
    t143 = (t142 >> 0);
    *((unsigned int *)t138) = t143;
    t144 = *((unsigned int *)t141);
    t145 = (t144 >> 0);
    *((unsigned int *)t139) = t145;
    t146 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t146 & 3U);
    t147 = *((unsigned int *)t139);
    *((unsigned int *)t139) = (t147 & 3U);
    t148 = ((char*)((ng5)));
    memset(t149, 0, 8);
    t150 = (t138 + 4);
    t151 = (t148 + 4);
    t152 = *((unsigned int *)t138);
    t153 = *((unsigned int *)t148);
    t154 = (t152 ^ t153);
    t155 = *((unsigned int *)t150);
    t156 = *((unsigned int *)t151);
    t157 = (t155 ^ t156);
    t158 = (t154 | t157);
    t159 = *((unsigned int *)t150);
    t160 = *((unsigned int *)t151);
    t161 = (t159 | t160);
    t162 = (~(t161));
    t163 = (t158 & t162);
    if (t163 != 0)
        goto LAB41;

LAB38:    if (t161 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t149) = 1;

LAB41:    memset(t137, 0, 8);
    t165 = (t149 + 4);
    t166 = *((unsigned int *)t165);
    t167 = (~(t166));
    t168 = *((unsigned int *)t149);
    t169 = (t168 & t167);
    t170 = (t169 & 1U);
    if (t170 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t165) != 0)
        goto LAB44;

LAB45:    t172 = (t137 + 4);
    t173 = *((unsigned int *)t137);
    t174 = *((unsigned int *)t172);
    t175 = (t173 || t174);
    if (t175 > 0)
        goto LAB46;

LAB47:    t199 = *((unsigned int *)t137);
    t200 = (~(t199));
    t201 = *((unsigned int *)t172);
    t202 = (t200 || t201);
    if (t202 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t172) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t137) > 0)
        goto LAB52;

LAB53:    memcpy(t136, t203, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t69, 32, t109, 32, t136, 32);
    goto LAB37;

LAB35:    memcpy(t69, t109, 8);
    goto LAB37;

LAB40:    t164 = (t149 + 4);
    *((unsigned int *)t149) = 1;
    *((unsigned int *)t164) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t137) = 1;
    goto LAB45;

LAB44:    t171 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t171) = 1;
    goto LAB45;

LAB46:    t178 = (t0 + 600U);
    t179 = *((char **)t178);
    memset(t177, 0, 8);
    t178 = (t177 + 4);
    t180 = (t179 + 4);
    t181 = *((unsigned int *)t179);
    t182 = (t181 >> 16);
    *((unsigned int *)t177) = t182;
    t183 = *((unsigned int *)t180);
    t184 = (t183 >> 16);
    *((unsigned int *)t178) = t184;
    t185 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t185 & 255U);
    t186 = *((unsigned int *)t178);
    *((unsigned int *)t178) = (t186 & 255U);
    t188 = ((char*)((ng4)));
    t189 = (t0 + 600U);
    t190 = *((char **)t189);
    memset(t191, 0, 8);
    t189 = (t191 + 4);
    t192 = (t190 + 4);
    t193 = *((unsigned int *)t190);
    t194 = (t193 >> 23);
    t195 = (t194 & 1);
    *((unsigned int *)t191) = t195;
    t196 = *((unsigned int *)t192);
    t197 = (t196 >> 23);
    t198 = (t197 & 1);
    *((unsigned int *)t189) = t198;
    xsi_vlog_mul_concat(t187, 24, 1, t188, 1U, t191, 1);
    xsi_vlogtype_concat(t176, 32, 32, 2U, t187, 24, t177, 8);
    goto LAB47;

LAB48:    t206 = (t0 + 692U);
    t207 = *((char **)t206);
    memset(t205, 0, 8);
    t206 = (t205 + 4);
    t208 = (t207 + 4);
    t209 = *((unsigned int *)t207);
    t210 = (t209 >> 0);
    *((unsigned int *)t205) = t210;
    t211 = *((unsigned int *)t208);
    t212 = (t211 >> 0);
    *((unsigned int *)t206) = t212;
    t213 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t213 & 3U);
    t214 = *((unsigned int *)t206);
    *((unsigned int *)t206) = (t214 & 3U);
    t215 = ((char*)((ng6)));
    memset(t216, 0, 8);
    t217 = (t205 + 4);
    t218 = (t215 + 4);
    t219 = *((unsigned int *)t205);
    t220 = *((unsigned int *)t215);
    t221 = (t219 ^ t220);
    t222 = *((unsigned int *)t217);
    t223 = *((unsigned int *)t218);
    t224 = (t222 ^ t223);
    t225 = (t221 | t224);
    t226 = *((unsigned int *)t217);
    t227 = *((unsigned int *)t218);
    t228 = (t226 | t227);
    t229 = (~(t228));
    t230 = (t225 & t229);
    if (t230 != 0)
        goto LAB58;

LAB55:    if (t228 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t216) = 1;

LAB58:    memset(t204, 0, 8);
    t232 = (t216 + 4);
    t233 = *((unsigned int *)t232);
    t234 = (~(t233));
    t235 = *((unsigned int *)t216);
    t236 = (t235 & t234);
    t237 = (t236 & 1U);
    if (t237 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t232) != 0)
        goto LAB61;

LAB62:    t239 = (t204 + 4);
    t240 = *((unsigned int *)t204);
    t241 = *((unsigned int *)t239);
    t242 = (t240 || t241);
    if (t242 > 0)
        goto LAB63;

LAB64:    t266 = *((unsigned int *)t204);
    t267 = (~(t266));
    t268 = *((unsigned int *)t239);
    t269 = (t267 || t268);
    if (t269 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t239) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t204) > 0)
        goto LAB69;

LAB70:    memcpy(t203, t271, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t136, 32, t176, 32, t203, 32);
    goto LAB54;

LAB52:    memcpy(t136, t176, 8);
    goto LAB54;

LAB57:    t231 = (t216 + 4);
    *((unsigned int *)t216) = 1;
    *((unsigned int *)t231) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t204) = 1;
    goto LAB62;

LAB61:    t238 = (t204 + 4);
    *((unsigned int *)t204) = 1;
    *((unsigned int *)t238) = 1;
    goto LAB62;

LAB63:    t245 = (t0 + 600U);
    t246 = *((char **)t245);
    memset(t244, 0, 8);
    t245 = (t244 + 4);
    t247 = (t246 + 4);
    t248 = *((unsigned int *)t246);
    t249 = (t248 >> 24);
    *((unsigned int *)t244) = t249;
    t250 = *((unsigned int *)t247);
    t251 = (t250 >> 24);
    *((unsigned int *)t245) = t251;
    t252 = *((unsigned int *)t244);
    *((unsigned int *)t244) = (t252 & 255U);
    t253 = *((unsigned int *)t245);
    *((unsigned int *)t245) = (t253 & 255U);
    t255 = ((char*)((ng4)));
    t256 = (t0 + 600U);
    t257 = *((char **)t256);
    memset(t258, 0, 8);
    t256 = (t258 + 4);
    t259 = (t257 + 4);
    t260 = *((unsigned int *)t257);
    t261 = (t260 >> 31);
    t262 = (t261 & 1);
    *((unsigned int *)t258) = t262;
    t263 = *((unsigned int *)t259);
    t264 = (t263 >> 31);
    t265 = (t264 & 1);
    *((unsigned int *)t256) = t265;
    xsi_vlog_mul_concat(t254, 24, 1, t255, 1U, t258, 1);
    xsi_vlogtype_concat(t243, 32, 32, 2U, t254, 24, t244, 8);
    goto LAB64;

LAB65:    t270 = (t0 + 600U);
    t271 = *((char **)t270);
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t203, 32, t243, 32, t271, 32);
    goto LAB71;

LAB69:    memcpy(t203, t243, 8);
    goto LAB71;

}

static void Cont_37_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t39[8];
    char t40[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 784U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t69 = (t0 + 2336);
    t76 = (t69 + 32U);
    t77 = *((char **)t76);
    t78 = (t77 + 40U);
    t79 = *((char **)t78);
    memcpy(t79, t3, 8);
    xsi_driver_vfirst_trans(t69, 0, 31);
    t80 = (t0 + 2220);
    *((int *)t80) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 968U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 784U);
    t41 = *((char **)t33);
    t33 = ((char*)((ng5)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t40, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t40 + 4);
    t66 = *((unsigned int *)t40);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t71 = *((unsigned int *)t40);
    t72 = (~(t71));
    t73 = *((unsigned int *)t65);
    t74 = (t72 || t73);
    if (t74 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t40) > 0)
        goto LAB35;

LAB36:    memcpy(t39, t75, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB27:    t64 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t69 = (t0 + 1060U);
    t70 = *((char **)t69);
    goto LAB30;

LAB31:    t69 = (t0 + 600U);
    t75 = *((char **)t69);
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t39, 32, t70, 32, t75, 32);
    goto LAB37;

LAB35:    memcpy(t39, t70, 8);
    goto LAB37;

}


extern void work_m_00000000002273087424_3595176571_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Cont_32_1,(void *)Cont_37_2};
	xsi_register_didat("work_m_00000000002273087424_3595176571", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000002273087424_3595176571.didat");
	xsi_register_executes(pe);
}
