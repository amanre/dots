const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#04062F", /* black   */
  [1] = "#853D6F", /* red     */
  [2] = "#9A4878", /* green   */
  [3] = "#C6977D", /* yellow  */
  [4] = "#AF5887", /* blue    */
  [5] = "#D16591", /* magenta */
  [6] = "#F09DB0", /* cyan    */
  [7] = "#f1d1d7", /* white   */

  /* 8 bright colors */
  [8]  = "#a89296",  /* black   */
  [9]  = "#853D6F",  /* red     */
  [10] = "#9A4878", /* green   */
  [11] = "#C6977D", /* yellow  */
  [12] = "#AF5887", /* blue    */
  [13] = "#D16591", /* magenta */
  [14] = "#F09DB0", /* cyan    */
  [15] = "#f1d1d7", /* white   */

  /* special colors */
  [256] = "#04062F", /* background */
  [257] = "#f1d1d7", /* foreground */
  [258] = "#f1d1d7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
