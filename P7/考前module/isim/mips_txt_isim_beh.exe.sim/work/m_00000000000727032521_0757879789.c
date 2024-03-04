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
static const char *ng0 = "C:/Users/17201/Desktop/CO/P7/module/NPC.v";
static unsigned int ng1[] = {8U, 0U};
static unsigned int ng2[] = {4U, 0U};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {14, 0};
static unsigned int ng5[] = {16768U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {2U, 0U};



static void Cont_42_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2916U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4068);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3976);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_43_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3060U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4104);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3984);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_44_2(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3204U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4140);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3992);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_45_3(char *t0)
{
    char t4[8];
    char t5[8];
    char t10[8];
    char t13[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 3348U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2256U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t6 = ((char*)((ng3)));
    t7 = ((char*)((ng3)));
    t8 = (t0 + 876U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng4)));
    t11 = (t0 + 876U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t11 = (t13 + 4);
    t14 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t11) = t20;
    xsi_vlog_mul_concat(t10, 14, 1, t8, 1U, t13, 1);
    xsi_vlogtype_concat(t5, 32, 32, 4U, t10, 14, t9, 16, t7, 1, t6, 1);
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t4, 32, t5, 32);
    t22 = (t0 + 4176);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t21, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 4000);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_46_4(char *t0)
{
    char t3[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 3492U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng3)));
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1060U);
    t6 = *((char **)t5);
    t5 = (t0 + 2256U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 28);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 28);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 15U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 15U);
    xsi_vlogtype_concat(t3, 32, 32, 4U, t7, 4, t6, 26, t4, 1, t2, 1);
    t16 = (t0 + 4212);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 4008);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_47_5(char *t0)
{
    char t3[8];
    char t4[8];
    char t21[8];
    char t22[8];
    char t37[8];
    char t42[8];
    char t43[8];
    char t46[8];
    char t62[8];
    char t76[8];
    char t92[8];
    char t100[8];
    char t132[8];
    char t147[8];
    char t163[8];
    char t177[8];
    char t193[8];
    char t201[8];
    char t233[8];
    char t241[8];
    char t286[8];
    char t287[8];
    char t289[8];
    char t322[8];
    char t323[8];
    char t325[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
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
    char *t36;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    int t124;
    int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    char *t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    char *t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
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
    char *t162;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    char *t175;
    char *t176;
    char *t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    char *t192;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    char *t200;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    char *t205;
    char *t206;
    char *t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    char *t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    int t225;
    int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    char *t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    char *t240;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    char *t245;
    char *t246;
    char *t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t255;
    char *t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    int t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    char *t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    char *t275;
    char *t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    char *t280;
    char *t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    char *t288;
    char *t290;
    char *t291;
    unsigned int t292;
    unsigned int t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    char *t304;
    char *t305;
    unsigned int t306;
    unsigned int t307;
    unsigned int t308;
    unsigned int t309;
    unsigned int t310;
    char *t311;
    char *t312;
    unsigned int t313;
    unsigned int t314;
    unsigned int t315;
    char *t316;
    char *t317;
    unsigned int t318;
    unsigned int t319;
    unsigned int t320;
    unsigned int t321;
    char *t324;
    char *t326;
    char *t327;
    unsigned int t328;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    unsigned int t334;
    unsigned int t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    unsigned int t339;
    char *t340;
    char *t341;
    unsigned int t342;
    unsigned int t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    char *t347;
    char *t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    char *t352;
    char *t353;
    unsigned int t354;
    unsigned int t355;
    unsigned int t356;
    unsigned int t357;
    char *t358;
    char *t359;
    char *t360;
    char *t361;
    char *t362;
    char *t363;

LAB0:    t1 = (t0 + 3636U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1704U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t12);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t21, 8);

LAB16:    t352 = (t0 + 4248);
    t359 = (t352 + 32U);
    t360 = *((char **)t359);
    t361 = (t360 + 40U);
    t362 = *((char **)t361);
    memcpy(t362, t3, 8);
    xsi_driver_vfirst_trans(t352, 0, 31);
    t363 = (t0 + 4016);
    *((int *)t363) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng5)));
    goto LAB9;

LAB10:    t23 = (t0 + 1796U);
    t24 = *((char **)t23);
    memset(t22, 0, 8);
    t23 = (t24 + 4);
    t25 = *((unsigned int *)t23);
    t26 = (~(t25));
    t27 = *((unsigned int *)t24);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t23) != 0)
        goto LAB19;

LAB20:    t31 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB21;

LAB22:    t38 = *((unsigned int *)t22);
    t39 = (~(t38));
    t40 = *((unsigned int *)t31);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t31) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t22) > 0)
        goto LAB27;

LAB28:    memcpy(t21, t42, 8);

LAB29:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t21, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t22) = 1;
    goto LAB20;

LAB19:    t30 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB20;

LAB21:    t35 = (t0 + 1888U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng2)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 32, t36, 32, t35, 32);
    goto LAB22;

LAB23:    t44 = (t0 + 784U);
    t45 = *((char **)t44);
    t44 = ((char*)((ng6)));
    memset(t46, 0, 8);
    t47 = (t45 + 4);
    t48 = (t44 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t44);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB33;

LAB30:    if (t58 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t46) = 1;

LAB33:    memset(t62, 0, 8);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t63) != 0)
        goto LAB36;

LAB37:    t70 = (t62 + 4);
    t71 = *((unsigned int *)t62);
    t72 = *((unsigned int *)t70);
    t73 = (t71 || t72);
    if (t73 > 0)
        goto LAB38;

LAB39:    memcpy(t100, t62, 8);

LAB40:    memset(t132, 0, 8);
    t133 = (t100 + 4);
    t134 = *((unsigned int *)t133);
    t135 = (~(t134));
    t136 = *((unsigned int *)t100);
    t137 = (t136 & t135);
    t138 = (t137 & 1U);
    if (t138 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t133) != 0)
        goto LAB54;

LAB55:    t140 = (t132 + 4);
    t141 = *((unsigned int *)t132);
    t142 = (!(t141));
    t143 = *((unsigned int *)t140);
    t144 = (t142 || t143);
    if (t144 > 0)
        goto LAB56;

LAB57:    memcpy(t241, t132, 8);

LAB58:    memset(t43, 0, 8);
    t269 = (t241 + 4);
    t270 = *((unsigned int *)t269);
    t271 = (~(t270));
    t272 = *((unsigned int *)t241);
    t273 = (t272 & t271);
    t274 = (t273 & 1U);
    if (t274 != 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t269) != 0)
        goto LAB90;

LAB91:    t276 = (t43 + 4);
    t277 = *((unsigned int *)t43);
    t278 = *((unsigned int *)t276);
    t279 = (t277 || t278);
    if (t279 > 0)
        goto LAB92;

LAB93:    t282 = *((unsigned int *)t43);
    t283 = (~(t282));
    t284 = *((unsigned int *)t276);
    t285 = (t283 || t284);
    if (t285 > 0)
        goto LAB94;

LAB95:    if (*((unsigned int *)t276) > 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t43) > 0)
        goto LAB98;

LAB99:    memcpy(t42, t286, 8);

LAB100:    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t21, 32, t37, 32, t42, 32);
    goto LAB29;

LAB27:    memcpy(t21, t37, 8);
    goto LAB29;

LAB32:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t62) = 1;
    goto LAB37;

LAB36:    t69 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB37;

LAB38:    t74 = (t0 + 692U);
    t75 = *((char **)t74);
    t74 = ((char*)((ng6)));
    memset(t76, 0, 8);
    t77 = (t75 + 4);
    t78 = (t74 + 4);
    t79 = *((unsigned int *)t75);
    t80 = *((unsigned int *)t74);
    t81 = (t79 ^ t80);
    t82 = *((unsigned int *)t77);
    t83 = *((unsigned int *)t78);
    t84 = (t82 ^ t83);
    t85 = (t81 | t84);
    t86 = *((unsigned int *)t77);
    t87 = *((unsigned int *)t78);
    t88 = (t86 | t87);
    t89 = (~(t88));
    t90 = (t85 & t89);
    if (t90 != 0)
        goto LAB44;

LAB41:    if (t88 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t76) = 1;

LAB44:    memset(t92, 0, 8);
    t93 = (t76 + 4);
    t94 = *((unsigned int *)t93);
    t95 = (~(t94));
    t96 = *((unsigned int *)t76);
    t97 = (t96 & t95);
    t98 = (t97 & 1U);
    if (t98 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t93) != 0)
        goto LAB47;

LAB48:    t101 = *((unsigned int *)t62);
    t102 = *((unsigned int *)t92);
    t103 = (t101 & t102);
    *((unsigned int *)t100) = t103;
    t104 = (t62 + 4);
    t105 = (t92 + 4);
    t106 = (t100 + 4);
    t107 = *((unsigned int *)t104);
    t108 = *((unsigned int *)t105);
    t109 = (t107 | t108);
    *((unsigned int *)t106) = t109;
    t110 = *((unsigned int *)t106);
    t111 = (t110 != 0);
    if (t111 == 1)
        goto LAB49;

LAB50:
LAB51:    goto LAB40;

LAB43:    t91 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t91) = 1;
    goto LAB44;

LAB45:    *((unsigned int *)t92) = 1;
    goto LAB48;

LAB47:    t99 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB48;

LAB49:    t112 = *((unsigned int *)t100);
    t113 = *((unsigned int *)t106);
    *((unsigned int *)t100) = (t112 | t113);
    t114 = (t62 + 4);
    t115 = (t92 + 4);
    t116 = *((unsigned int *)t62);
    t117 = (~(t116));
    t118 = *((unsigned int *)t114);
    t119 = (~(t118));
    t120 = *((unsigned int *)t92);
    t121 = (~(t120));
    t122 = *((unsigned int *)t115);
    t123 = (~(t122));
    t124 = (t117 & t119);
    t125 = (t121 & t123);
    t126 = (~(t124));
    t127 = (~(t125));
    t128 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t128 & t126);
    t129 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t129 & t127);
    t130 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t130 & t126);
    t131 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t131 & t127);
    goto LAB51;

LAB52:    *((unsigned int *)t132) = 1;
    goto LAB55;

LAB54:    t139 = (t132 + 4);
    *((unsigned int *)t132) = 1;
    *((unsigned int *)t139) = 1;
    goto LAB55;

LAB56:    t145 = (t0 + 784U);
    t146 = *((char **)t145);
    t145 = ((char*)((ng7)));
    memset(t147, 0, 8);
    t148 = (t146 + 4);
    t149 = (t145 + 4);
    t150 = *((unsigned int *)t146);
    t151 = *((unsigned int *)t145);
    t152 = (t150 ^ t151);
    t153 = *((unsigned int *)t148);
    t154 = *((unsigned int *)t149);
    t155 = (t153 ^ t154);
    t156 = (t152 | t155);
    t157 = *((unsigned int *)t148);
    t158 = *((unsigned int *)t149);
    t159 = (t157 | t158);
    t160 = (~(t159));
    t161 = (t156 & t160);
    if (t161 != 0)
        goto LAB62;

LAB59:    if (t159 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t147) = 1;

LAB62:    memset(t163, 0, 8);
    t164 = (t147 + 4);
    t165 = *((unsigned int *)t164);
    t166 = (~(t165));
    t167 = *((unsigned int *)t147);
    t168 = (t167 & t166);
    t169 = (t168 & 1U);
    if (t169 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t164) != 0)
        goto LAB65;

LAB66:    t171 = (t163 + 4);
    t172 = *((unsigned int *)t163);
    t173 = *((unsigned int *)t171);
    t174 = (t172 || t173);
    if (t174 > 0)
        goto LAB67;

LAB68:    memcpy(t201, t163, 8);

LAB69:    memset(t233, 0, 8);
    t234 = (t201 + 4);
    t235 = *((unsigned int *)t234);
    t236 = (~(t235));
    t237 = *((unsigned int *)t201);
    t238 = (t237 & t236);
    t239 = (t238 & 1U);
    if (t239 != 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t234) != 0)
        goto LAB83;

LAB84:    t242 = *((unsigned int *)t132);
    t243 = *((unsigned int *)t233);
    t244 = (t242 | t243);
    *((unsigned int *)t241) = t244;
    t245 = (t132 + 4);
    t246 = (t233 + 4);
    t247 = (t241 + 4);
    t248 = *((unsigned int *)t245);
    t249 = *((unsigned int *)t246);
    t250 = (t248 | t249);
    *((unsigned int *)t247) = t250;
    t251 = *((unsigned int *)t247);
    t252 = (t251 != 0);
    if (t252 == 1)
        goto LAB85;

LAB86:
LAB87:    goto LAB58;

LAB61:    t162 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB62;

LAB63:    *((unsigned int *)t163) = 1;
    goto LAB66;

LAB65:    t170 = (t163 + 4);
    *((unsigned int *)t163) = 1;
    *((unsigned int *)t170) = 1;
    goto LAB66;

LAB67:    t175 = (t0 + 692U);
    t176 = *((char **)t175);
    t175 = ((char*)((ng3)));
    memset(t177, 0, 8);
    t178 = (t176 + 4);
    t179 = (t175 + 4);
    t180 = *((unsigned int *)t176);
    t181 = *((unsigned int *)t175);
    t182 = (t180 ^ t181);
    t183 = *((unsigned int *)t178);
    t184 = *((unsigned int *)t179);
    t185 = (t183 ^ t184);
    t186 = (t182 | t185);
    t187 = *((unsigned int *)t178);
    t188 = *((unsigned int *)t179);
    t189 = (t187 | t188);
    t190 = (~(t189));
    t191 = (t186 & t190);
    if (t191 != 0)
        goto LAB73;

LAB70:    if (t189 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t177) = 1;

LAB73:    memset(t193, 0, 8);
    t194 = (t177 + 4);
    t195 = *((unsigned int *)t194);
    t196 = (~(t195));
    t197 = *((unsigned int *)t177);
    t198 = (t197 & t196);
    t199 = (t198 & 1U);
    if (t199 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t194) != 0)
        goto LAB76;

LAB77:    t202 = *((unsigned int *)t163);
    t203 = *((unsigned int *)t193);
    t204 = (t202 & t203);
    *((unsigned int *)t201) = t204;
    t205 = (t163 + 4);
    t206 = (t193 + 4);
    t207 = (t201 + 4);
    t208 = *((unsigned int *)t205);
    t209 = *((unsigned int *)t206);
    t210 = (t208 | t209);
    *((unsigned int *)t207) = t210;
    t211 = *((unsigned int *)t207);
    t212 = (t211 != 0);
    if (t212 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB69;

LAB72:    t192 = (t177 + 4);
    *((unsigned int *)t177) = 1;
    *((unsigned int *)t192) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t193) = 1;
    goto LAB77;

LAB76:    t200 = (t193 + 4);
    *((unsigned int *)t193) = 1;
    *((unsigned int *)t200) = 1;
    goto LAB77;

LAB78:    t213 = *((unsigned int *)t201);
    t214 = *((unsigned int *)t207);
    *((unsigned int *)t201) = (t213 | t214);
    t215 = (t163 + 4);
    t216 = (t193 + 4);
    t217 = *((unsigned int *)t163);
    t218 = (~(t217));
    t219 = *((unsigned int *)t215);
    t220 = (~(t219));
    t221 = *((unsigned int *)t193);
    t222 = (~(t221));
    t223 = *((unsigned int *)t216);
    t224 = (~(t223));
    t225 = (t218 & t220);
    t226 = (t222 & t224);
    t227 = (~(t225));
    t228 = (~(t226));
    t229 = *((unsigned int *)t207);
    *((unsigned int *)t207) = (t229 & t227);
    t230 = *((unsigned int *)t207);
    *((unsigned int *)t207) = (t230 & t228);
    t231 = *((unsigned int *)t201);
    *((unsigned int *)t201) = (t231 & t227);
    t232 = *((unsigned int *)t201);
    *((unsigned int *)t201) = (t232 & t228);
    goto LAB80;

LAB81:    *((unsigned int *)t233) = 1;
    goto LAB84;

LAB83:    t240 = (t233 + 4);
    *((unsigned int *)t233) = 1;
    *((unsigned int *)t240) = 1;
    goto LAB84;

LAB85:    t253 = *((unsigned int *)t241);
    t254 = *((unsigned int *)t247);
    *((unsigned int *)t241) = (t253 | t254);
    t255 = (t132 + 4);
    t256 = (t233 + 4);
    t257 = *((unsigned int *)t255);
    t258 = (~(t257));
    t259 = *((unsigned int *)t132);
    t260 = (t259 & t258);
    t261 = *((unsigned int *)t256);
    t262 = (~(t261));
    t263 = *((unsigned int *)t233);
    t264 = (t263 & t262);
    t265 = (~(t260));
    t266 = (~(t264));
    t267 = *((unsigned int *)t247);
    *((unsigned int *)t247) = (t267 & t265);
    t268 = *((unsigned int *)t247);
    *((unsigned int *)t247) = (t268 & t266);
    goto LAB87;

LAB88:    *((unsigned int *)t43) = 1;
    goto LAB91;

LAB90:    t275 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t275) = 1;
    goto LAB91;

LAB92:    t280 = (t0 + 1980U);
    t281 = *((char **)t280);
    goto LAB93;

LAB94:    t280 = (t0 + 968U);
    t288 = *((char **)t280);
    t280 = ((char*)((ng6)));
    memset(t289, 0, 8);
    t290 = (t288 + 4);
    t291 = (t280 + 4);
    t292 = *((unsigned int *)t288);
    t293 = *((unsigned int *)t280);
    t294 = (t292 ^ t293);
    t295 = *((unsigned int *)t290);
    t296 = *((unsigned int *)t291);
    t297 = (t295 ^ t296);
    t298 = (t294 | t297);
    t299 = *((unsigned int *)t290);
    t300 = *((unsigned int *)t291);
    t301 = (t299 | t300);
    t302 = (~(t301));
    t303 = (t298 & t302);
    if (t303 != 0)
        goto LAB104;

LAB101:    if (t301 != 0)
        goto LAB103;

LAB102:    *((unsigned int *)t289) = 1;

LAB104:    memset(t287, 0, 8);
    t305 = (t289 + 4);
    t306 = *((unsigned int *)t305);
    t307 = (~(t306));
    t308 = *((unsigned int *)t289);
    t309 = (t308 & t307);
    t310 = (t309 & 1U);
    if (t310 != 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t305) != 0)
        goto LAB107;

LAB108:    t312 = (t287 + 4);
    t313 = *((unsigned int *)t287);
    t314 = *((unsigned int *)t312);
    t315 = (t313 || t314);
    if (t315 > 0)
        goto LAB109;

LAB110:    t318 = *((unsigned int *)t287);
    t319 = (~(t318));
    t320 = *((unsigned int *)t312);
    t321 = (t319 || t320);
    if (t321 > 0)
        goto LAB111;

LAB112:    if (*((unsigned int *)t312) > 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t287) > 0)
        goto LAB115;

LAB116:    memcpy(t286, t322, 8);

LAB117:    goto LAB95;

LAB96:    xsi_vlog_unsigned_bit_combine(t42, 32, t281, 32, t286, 32);
    goto LAB100;

LAB98:    memcpy(t42, t281, 8);
    goto LAB100;

LAB103:    t304 = (t289 + 4);
    *((unsigned int *)t289) = 1;
    *((unsigned int *)t304) = 1;
    goto LAB104;

LAB105:    *((unsigned int *)t287) = 1;
    goto LAB108;

LAB107:    t311 = (t287 + 4);
    *((unsigned int *)t287) = 1;
    *((unsigned int *)t311) = 1;
    goto LAB108;

LAB109:    t316 = (t0 + 2072U);
    t317 = *((char **)t316);
    goto LAB110;

LAB111:    t316 = (t0 + 1152U);
    t324 = *((char **)t316);
    t316 = ((char*)((ng6)));
    memset(t325, 0, 8);
    t326 = (t324 + 4);
    t327 = (t316 + 4);
    t328 = *((unsigned int *)t324);
    t329 = *((unsigned int *)t316);
    t330 = (t328 ^ t329);
    t331 = *((unsigned int *)t326);
    t332 = *((unsigned int *)t327);
    t333 = (t331 ^ t332);
    t334 = (t330 | t333);
    t335 = *((unsigned int *)t326);
    t336 = *((unsigned int *)t327);
    t337 = (t335 | t336);
    t338 = (~(t337));
    t339 = (t334 & t338);
    if (t339 != 0)
        goto LAB121;

LAB118:    if (t337 != 0)
        goto LAB120;

LAB119:    *((unsigned int *)t325) = 1;

LAB121:    memset(t323, 0, 8);
    t341 = (t325 + 4);
    t342 = *((unsigned int *)t341);
    t343 = (~(t342));
    t344 = *((unsigned int *)t325);
    t345 = (t344 & t343);
    t346 = (t345 & 1U);
    if (t346 != 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t341) != 0)
        goto LAB124;

LAB125:    t348 = (t323 + 4);
    t349 = *((unsigned int *)t323);
    t350 = *((unsigned int *)t348);
    t351 = (t349 || t350);
    if (t351 > 0)
        goto LAB126;

LAB127:    t354 = *((unsigned int *)t323);
    t355 = (~(t354));
    t356 = *((unsigned int *)t348);
    t357 = (t355 || t356);
    if (t357 > 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t348) > 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t323) > 0)
        goto LAB132;

LAB133:    memcpy(t322, t358, 8);

LAB134:    goto LAB112;

LAB113:    xsi_vlog_unsigned_bit_combine(t286, 32, t317, 32, t322, 32);
    goto LAB117;

LAB115:    memcpy(t286, t317, 8);
    goto LAB117;

LAB120:    t340 = (t325 + 4);
    *((unsigned int *)t325) = 1;
    *((unsigned int *)t340) = 1;
    goto LAB121;

LAB122:    *((unsigned int *)t323) = 1;
    goto LAB125;

LAB124:    t347 = (t323 + 4);
    *((unsigned int *)t323) = 1;
    *((unsigned int *)t347) = 1;
    goto LAB125;

LAB126:    t352 = (t0 + 1244U);
    t353 = *((char **)t352);
    goto LAB127;

LAB128:    t352 = (t0 + 2164U);
    t358 = *((char **)t352);
    goto LAB129;

LAB130:    xsi_vlog_unsigned_bit_combine(t322, 32, t353, 32, t358, 32);
    goto LAB134;

LAB132:    memcpy(t322, t353, 8);
    goto LAB134;

}

static void Cont_53_6(char *t0)
{
    char t4[8];
    char t20[8];
    char t35[8];
    char t51[8];
    char t59[8];
    char t87[8];
    char t102[8];
    char t109[8];
    char t137[8];
    char t152[8];
    char t159[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
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
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    char *t164;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t187;
    char *t188;
    char *t189;
    char *t190;
    char *t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    char *t200;

LAB0:    t1 = (t0 + 3780U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t4) = 1;

LAB7:    memset(t20, 0, 8);
    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t21) != 0)
        goto LAB10;

LAB11:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = (!(t29));
    t31 = *((unsigned int *)t28);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    memcpy(t59, t20, 8);

LAB14:    memset(t87, 0, 8);
    t88 = (t59 + 4);
    t89 = *((unsigned int *)t88);
    t90 = (~(t89));
    t91 = *((unsigned int *)t59);
    t92 = (t91 & t90);
    t93 = (t92 & 1U);
    if (t93 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t88) != 0)
        goto LAB28;

LAB29:    t95 = (t87 + 4);
    t96 = *((unsigned int *)t87);
    t97 = (!(t96));
    t98 = *((unsigned int *)t95);
    t99 = (t97 || t98);
    if (t99 > 0)
        goto LAB30;

LAB31:    memcpy(t109, t87, 8);

LAB32:    memset(t137, 0, 8);
    t138 = (t109 + 4);
    t139 = *((unsigned int *)t138);
    t140 = (~(t139));
    t141 = *((unsigned int *)t109);
    t142 = (t141 & t140);
    t143 = (t142 & 1U);
    if (t143 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t138) != 0)
        goto LAB42;

LAB43:    t145 = (t137 + 4);
    t146 = *((unsigned int *)t137);
    t147 = (!(t146));
    t148 = *((unsigned int *)t145);
    t149 = (t147 || t148);
    if (t149 > 0)
        goto LAB44;

LAB45:    memcpy(t159, t137, 8);

LAB46:    t187 = (t0 + 4284);
    t188 = (t187 + 32U);
    t189 = *((char **)t188);
    t190 = (t189 + 40U);
    t191 = *((char **)t190);
    memset(t191, 0, 8);
    t192 = 1U;
    t193 = t192;
    t194 = (t159 + 4);
    t195 = *((unsigned int *)t159);
    t192 = (t192 & t195);
    t196 = *((unsigned int *)t194);
    t193 = (t193 & t196);
    t197 = (t191 + 4);
    t198 = *((unsigned int *)t191);
    *((unsigned int *)t191) = (t198 | t192);
    t199 = *((unsigned int *)t197);
    *((unsigned int *)t197) = (t199 | t193);
    xsi_driver_vfirst_trans(t187, 0, 0);
    t200 = (t0 + 4024);
    *((int *)t200) = 1;

LAB1:    return;
LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t20) = 1;
    goto LAB11;

LAB10:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 784U);
    t34 = *((char **)t33);
    t33 = ((char*)((ng7)));
    memset(t35, 0, 8);
    t36 = (t34 + 4);
    t37 = (t33 + 4);
    t38 = *((unsigned int *)t34);
    t39 = *((unsigned int *)t33);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = (t40 | t43);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t37);
    t47 = (t45 | t46);
    t48 = (~(t47));
    t49 = (t44 & t48);
    if (t49 != 0)
        goto LAB18;

LAB15:    if (t47 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t35) = 1;

LAB18:    memset(t51, 0, 8);
    t52 = (t35 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (~(t53));
    t55 = *((unsigned int *)t35);
    t56 = (t55 & t54);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t52) != 0)
        goto LAB21;

LAB22:    t60 = *((unsigned int *)t20);
    t61 = *((unsigned int *)t51);
    t62 = (t60 | t61);
    *((unsigned int *)t59) = t62;
    t63 = (t20 + 4);
    t64 = (t51 + 4);
    t65 = (t59 + 4);
    t66 = *((unsigned int *)t63);
    t67 = *((unsigned int *)t64);
    t68 = (t66 | t67);
    *((unsigned int *)t65) = t68;
    t69 = *((unsigned int *)t65);
    t70 = (t69 != 0);
    if (t70 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t50 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t51) = 1;
    goto LAB22;

LAB21:    t58 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB22;

LAB23:    t71 = *((unsigned int *)t59);
    t72 = *((unsigned int *)t65);
    *((unsigned int *)t59) = (t71 | t72);
    t73 = (t20 + 4);
    t74 = (t51 + 4);
    t75 = *((unsigned int *)t73);
    t76 = (~(t75));
    t77 = *((unsigned int *)t20);
    t78 = (t77 & t76);
    t79 = *((unsigned int *)t74);
    t80 = (~(t79));
    t81 = *((unsigned int *)t51);
    t82 = (t81 & t80);
    t83 = (~(t78));
    t84 = (~(t82));
    t85 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t85 & t83);
    t86 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t86 & t84);
    goto LAB25;

LAB26:    *((unsigned int *)t87) = 1;
    goto LAB29;

LAB28:    t94 = (t87 + 4);
    *((unsigned int *)t87) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB29;

LAB30:    t100 = (t0 + 968U);
    t101 = *((char **)t100);
    memset(t102, 0, 8);
    t100 = (t101 + 4);
    t103 = *((unsigned int *)t100);
    t104 = (~(t103));
    t105 = *((unsigned int *)t101);
    t106 = (t105 & t104);
    t107 = (t106 & 1U);
    if (t107 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t100) != 0)
        goto LAB35;

LAB36:    t110 = *((unsigned int *)t87);
    t111 = *((unsigned int *)t102);
    t112 = (t110 | t111);
    *((unsigned int *)t109) = t112;
    t113 = (t87 + 4);
    t114 = (t102 + 4);
    t115 = (t109 + 4);
    t116 = *((unsigned int *)t113);
    t117 = *((unsigned int *)t114);
    t118 = (t116 | t117);
    *((unsigned int *)t115) = t118;
    t119 = *((unsigned int *)t115);
    t120 = (t119 != 0);
    if (t120 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB32;

LAB33:    *((unsigned int *)t102) = 1;
    goto LAB36;

LAB35:    t108 = (t102 + 4);
    *((unsigned int *)t102) = 1;
    *((unsigned int *)t108) = 1;
    goto LAB36;

LAB37:    t121 = *((unsigned int *)t109);
    t122 = *((unsigned int *)t115);
    *((unsigned int *)t109) = (t121 | t122);
    t123 = (t87 + 4);
    t124 = (t102 + 4);
    t125 = *((unsigned int *)t123);
    t126 = (~(t125));
    t127 = *((unsigned int *)t87);
    t128 = (t127 & t126);
    t129 = *((unsigned int *)t124);
    t130 = (~(t129));
    t131 = *((unsigned int *)t102);
    t132 = (t131 & t130);
    t133 = (~(t128));
    t134 = (~(t132));
    t135 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t135 & t133);
    t136 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t136 & t134);
    goto LAB39;

LAB40:    *((unsigned int *)t137) = 1;
    goto LAB43;

LAB42:    t144 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t144) = 1;
    goto LAB43;

LAB44:    t150 = (t0 + 1152U);
    t151 = *((char **)t150);
    memset(t152, 0, 8);
    t150 = (t151 + 4);
    t153 = *((unsigned int *)t150);
    t154 = (~(t153));
    t155 = *((unsigned int *)t151);
    t156 = (t155 & t154);
    t157 = (t156 & 1U);
    if (t157 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t150) != 0)
        goto LAB49;

LAB50:    t160 = *((unsigned int *)t137);
    t161 = *((unsigned int *)t152);
    t162 = (t160 | t161);
    *((unsigned int *)t159) = t162;
    t163 = (t137 + 4);
    t164 = (t152 + 4);
    t165 = (t159 + 4);
    t166 = *((unsigned int *)t163);
    t167 = *((unsigned int *)t164);
    t168 = (t166 | t167);
    *((unsigned int *)t165) = t168;
    t169 = *((unsigned int *)t165);
    t170 = (t169 != 0);
    if (t170 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB46;

LAB47:    *((unsigned int *)t152) = 1;
    goto LAB50;

LAB49:    t158 = (t152 + 4);
    *((unsigned int *)t152) = 1;
    *((unsigned int *)t158) = 1;
    goto LAB50;

LAB51:    t171 = *((unsigned int *)t159);
    t172 = *((unsigned int *)t165);
    *((unsigned int *)t159) = (t171 | t172);
    t173 = (t137 + 4);
    t174 = (t152 + 4);
    t175 = *((unsigned int *)t173);
    t176 = (~(t175));
    t177 = *((unsigned int *)t137);
    t178 = (t177 & t176);
    t179 = *((unsigned int *)t174);
    t180 = (~(t179));
    t181 = *((unsigned int *)t152);
    t182 = (t181 & t180);
    t183 = (~(t178));
    t184 = (~(t182));
    t185 = *((unsigned int *)t165);
    *((unsigned int *)t165) = (t185 & t183);
    t186 = *((unsigned int *)t165);
    *((unsigned int *)t165) = (t186 & t184);
    goto LAB53;

}


extern void work_m_00000000000727032521_0757879789_init()
{
	static char *pe[] = {(void *)Cont_42_0,(void *)Cont_43_1,(void *)Cont_44_2,(void *)Cont_45_3,(void *)Cont_46_4,(void *)Cont_47_5,(void *)Cont_53_6};
	xsi_register_didat("work_m_00000000000727032521_0757879789", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000727032521_0757879789.didat");
	xsi_register_executes(pe);
}
