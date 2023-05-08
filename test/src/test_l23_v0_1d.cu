/**
 * @file t-l23-v0-1d.cu
 * @author Jiannan Tian
 * @brief
 * @version 0.4
 * @date 2022-12-23
 *
 * (C) 2022 by Indiana University, Argonne National Laboratory
 *
 */

#include "test_l23_utils.hh"

int main()
{
    struct RefactorTestFramework<float, uint16_t> test {};
    test.set_eb(1e-4).init_data_1d().test1d_v0_against_origin<256, 4>().destroy();

    return 0;
}
