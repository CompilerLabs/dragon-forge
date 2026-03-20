#ifndef DRAGON__standard__buffering
#define DRAGON__standard__buffering

/* Include */
// anvil
#include "../../anvil.h"

// standard files
#include "../../../build_temps/dragon-forge-print.c"
#include "../../../build_temps/dragon-forge-cast.c"
#include "../../../build_temps/dragon-forge-buffer.c"
#include "../../../build_temps/dragon-forge-current.c"
#include "../../../build_temps/dragon-forge-list.c"
#include "../../../build_temps/dragon-forge-context.c"
#include "../../../build_temps/dragon-forge-check.c"
#include "../../../build_temps/dragon-forge-error.c"
#include "../../../build_temps/dragon-forge-json.c"
#include "../../../build_temps/dragon-forge-time.c"
#include "../../../build_temps/dragon-forge-anvil.c"
#include "../../../build_temps/dragon-forge-compile.c"
#include "../../../build_temps/dragon-forge-just_run.c"

/* Turn C Files Into Buffers */
// bufferify any file
ANVIL__buffer STANDARD__bufferify__any_file(unsigned char* buffer, unsigned int length) {
    return ANVIL__create__buffer(buffer, ANVIL__calculate__address_from_buffer_index(buffer, length - 1));
}

#endif
