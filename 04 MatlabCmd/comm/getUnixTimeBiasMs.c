/**************************************************************************
 * file name : getUnixTimeBias.c                
 * author    : Dingjiang Zhou
 * date      : May 18th, 2013
 * purpose   : used in the matlab function, to get the system time by mex 
 *             function, in order to replace the matlab function "clock".
 * ***********************************************************************/

#include "mex.h"
#include <sys/time.h>

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  double  secBias = mxGetScalar(prhs[0]);
  double uSecBias = mxGetScalar(prhs[1]);
  /* Macros input output mapping            */
  /* #define UnixTimeSec  plhs[0]           */
  #define UnixTimemSec plhs[0]
  /* create space for the output variables  */
  UnixTimemSec = mxCreateDoubleScalar(1);      
  
  struct timeval getTime;  
  double *mseconds;
  
  /* mapping to the output space            */
  /* seconds  = mxGetPr(UnixTimeSec);       */
  mseconds = mxGetPr(UnixTimemSec);
  
  /* the real C language section            */
  gettimeofday(&getTime,NULL);
  mseconds[0] = (getTime.tv_sec-1350000000-secBias)*1000 + \
          (getTime.tv_usec-uSecBias)/1000;
 
  return;
}

/* usage 
 * in matlab *.m file, use it as, first: 
 * [secBias, uSecBias] = getUnixTime
 * then
 * a = getUnixTimeBias(secBias, uSecBias)
 * then a is the mill-second, started from the biased time
 */


/* end of file ----------------------------------------------------------*/