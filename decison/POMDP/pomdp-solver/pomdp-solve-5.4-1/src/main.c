
/*
 *<SOURCE_HEADER>
 *
 *  <NAME>
 *    main.c
 *  </NAME>
 *  <AUTHOR>
 *    Anthony R. Cassandra
 *  </AUTHOR>
 *  <CREATE_DATE>
 *    August, 1998
 *  </CREATE_DATE>
 *
 *  <RCS_KEYWORD>
 *    $RCSfile: main.c,v $
 *    $Source: /u/cvs/proj/pomdp-solve/src/main.c,v $
 *    $Revision: 1.8 $
 *    $Date: 2004/11/01 01:04:30 $
 *  </RCS_KEYWORD>
 *
 *  <COPYRIGHT>
 *
 *    1994-1997, Brown University
 *    1998-2003, Anthony R. Cassandra
 *
 *    All Rights Reserved
 *
 *    Permission to use, copy, modify, and distribute this software and its
 *    documentation for any purpose other than its incorporation into a
 *    commercial product is hereby granted without fee, provided that the
 *    above copyright notice appear in all copies and that both that
 *    copyright notice and this permission notice appear in supporting
 *    documentation.
 *
 *    ANTHONY CASSANDRA DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
 *    INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR ANY
 *    PARTICULAR PURPOSE.  IN NO EVENT SHALL ANTHONY CASSANDRA BE LIABLE FOR
 *    ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *    WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *    OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *  </COPYRIGHT>
 *
 *</SOURCE_HEADER>
 */

/*
 *   This file contains the main routine for the pomdp-solve program.
 *
 *   The command line arguments are shown by running:
 *
 *         pomdp-solve -h
 */

#define MAIN_C

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "alpha.h"
#include "belief.h"
#include "cmd-line.h"
#include "enumeration.h"
#include "global.h"
#include "inc-prune.h"
#include "linear-support.h"
#include "mdp/mdp.h"
#include "pg.h"
#include "pomdp-solve.h"
#include "pomdp.h"
#include "projection.h"
#include "random.h"
#include "signal-handler.h"
#include "stats.h"
#include "two-pass.h"
#include "witness.h"

/**********************************************************************/
int main(int argc, char **argv) {
        PomdpSolveParams param;

        /* Handles configuration file and command line options. */
        param = parseCmdLineAndCfgFile(argc, argv);

        /* To document what is actually being executed we dump out
           all the parameters of the execution. */
        showPomdpSolveParams(param);

        /* Do any file reading and memory allocations that are required. */
        initPomdpSolve(param);

        /* And away we go... */
        solvePomdp(param);

        /* Let's make all nice afterwards for all other things. Note that
           this deallocates the space for 'param' and its 'opts'
           component. */
        cleanUpPomdpSolve(param);

        return (0);

} /* main */
/**********************************************************************/
