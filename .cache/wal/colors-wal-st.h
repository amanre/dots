const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#271825", /* black   */
  [1] = "#8E6E73", /* red     */
  [2] = "#A76965", /* green   */
  [3] = "#D9735C", /* yellow  */
  [4] = "#D48E55", /* blue    */
  [5] = "#EE8C6F", /* magenta */
  [6] = "#64748C", /* cyan    */
  [7] = "#b8b4bc", /* white   */

  /* 8 bright colors */
  [8]  = "#807d83",  /* black   */
  [9]  = "#8E6E73",  /* red     */
  [10] = "#A76965", /* green   */
  [11] = "#D9735C", /* yellow  */
  [12] = "#D48E55", /* blue    */
  [13] = "#EE8C6F", /* magenta */
  [14] = "#64748C", /* cyan    */
  [15] = "#b8b4bc", /* white   */

  /* special colors */
  [256] = "#271825", /* background */
  [257] = "#b8b4bc", /* foreground */
  [258] = "#b8b4bc",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
