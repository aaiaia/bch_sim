#ifndef _DECODER_SOFT_DECISION_ALGO_FIND_MIN_MAG_GROUP_H_
#define _DECODER_SOFT_DECISION_ALGO_FIND_MIN_MAG_GROUP_H_

char findMinimumMagnitudeGroupingPushAway
(
    struct_logLikeHoodRatio *p,
    struct_powerFormPolynomials* hd_codeword,
    unsigned int zero_magnitude_sel_policy,
    unsigned int same_magnitude_sel_policy,
    unsigned int init_magnitude_policy,

    unsigned int group_nums,
    unsigned int group_bit_nums,
    unsigned int last_group_bit_nums
);

#endif
