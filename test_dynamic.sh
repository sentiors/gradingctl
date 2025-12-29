#!/bin/bash
source /usr/local/bin/grading/gradingctl  # kalau fungsi-nya ada di sini

# contoh tes
for ID in kelompok1-sija1 kelompok5-sija1 kelompok2-sija2 kelompok9-sija2 kelompokx-sijax; do
    echo "=============================="
    echo "TEST: $ID"
    determine_dynamic_variables "$ID" || continue
    echo "SUFFIX         = $EXPECTED_SUFFIX"
    echo "INT NET        = $TARGET_INTERNAL_NET/24"
    echo "LB NET         = $TARGET_LB_NET/24"
    echo "EXT RANGE      = 172.20.10.${RANGE_START_INT}-${RANGE_END_INT}"
    echo "FIP RANGE      = 172.20.10.${FIP_RANGE_START_INT}-${FIP_RANGE_END_INT}"
done
