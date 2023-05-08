/**
 * @file cmpg4_4.cu
 * @author Jiannan Tian
 * @brief
 * @version 0.3
 * @date 2022-11-03
 *
 * (C) 2022 by Indiana University, Argonne National Laboratory
 *
 */

#include "../detail/compare_gpu.inl"
#include "stat/compare.h"
#include "stat/compare_gpu.hh"

#define THRUSTGPU_ASSESS(Tliteral, T)                                                             \
    template <>                                                                                   \
    void psz::thrustgpu_assess_quality<T>(cusz_stats * s, T * xdata, T * odata, size_t const len) \
    {                                                                                             \
        thrustgpu_assess_quality_T##Tliteral(s, xdata, odata, len);                               \
    }

THRUSTGPU_ASSESS(fp64, double);

#undef THRUSTGPU_ASSESS