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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004108482359_1733832700_init();
    work_m_00000000002495922062_0467708899_init();
    work_m_00000000001774653980_0757879789_init();
    work_m_00000000000312919210_1064356346_init();
    work_m_00000000003336465133_2593248389_init();
    work_m_00000000002630915975_1621229167_init();
    work_m_00000000003960551179_1785967555_init();
    work_m_00000000003364201346_2278338207_init();
    work_m_00000000000165335060_0886308060_init();
    work_m_00000000000043971862_1115194992_init();
    work_m_00000000003481245087_2924402094_init();
    work_m_00000000002615197222_2111582603_init();
    work_m_00000000001500596343_1850368964_init();
    work_m_00000000002483650713_3877310806_init();
    work_m_00000000002047498008_3394146599_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_3394146599");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}