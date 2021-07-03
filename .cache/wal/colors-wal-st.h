const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#010217", /* black   */
  [1] = "#A02B67", /* red     */
  [2] = "#1E6695", /* green   */
  [3] = "#4B4EA1", /* yellow  */
  [4] = "#AE47A4", /* blue    */
  [5] = "#3C93C2", /* magenta */
  [6] = "#58A1D8", /* cyan    */
  [7] = "#cbd5e4", /* white   */

  /* 8 bright colors */
  [8]  = "#8e959f",  /* black   */
  [9]  = "#A02B67",  /* red     */
  [10] = "#1E6695", /* green   */
  [11] = "#4B4EA1", /* yellow  */
  [12] = "#AE47A4", /* blue    */
  [13] = "#3C93C2", /* magenta */
  [14] = "#58A1D8", /* cyan    */
  [15] = "#cbd5e4", /* white   */

  /* special colors */
  [256] = "#010217", /* background */
  [257] = "#cbd5e4", /* foreground */
  [258] = "#cbd5e4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
