/**
 * @file hf_bookg.cu
 * @author Jiannan Tian
 * @brief
 * @version 0.3
 * @date 2022-11-03
 *
 * (C) 2022 by Indiana University, Argonne National Laboratory
 *
 */

#include "detail/hf_bookg.inl"
#include "hf/hf_bookg.hh"

#define PAR_BOOK(T, H) \
    template void asz::hf_buildbook_g<T, H>(uint32_t*, int const, H*, uint8_t*, int const, float*, cudaStream_t);

PAR_BOOK(uint8_t, uint32_t);
PAR_BOOK(uint16_t, uint32_t);
PAR_BOOK(uint32_t, uint32_t);
PAR_BOOK(float, uint32_t);

PAR_BOOK(uint8_t, uint64_t);
PAR_BOOK(uint16_t, uint64_t);
PAR_BOOK(uint32_t, uint64_t);
PAR_BOOK(float, uint64_t);

PAR_BOOK(uint8_t, unsigned long long);
PAR_BOOK(uint16_t, unsigned long long);
PAR_BOOK(uint32_t, unsigned long long);
PAR_BOOK(float, unsigned long long);

#undef PAR_BOOK
