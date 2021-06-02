const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#060017", /* black   */
  [1] = "#714576", /* red     */
  [2] = "#922D61", /* green   */
  [3] = "#91586A", /* yellow  */
  [4] = "#172C8B", /* blue    */
  [5] = "#1C2092", /* magenta */
  [6] = "#2644A2", /* cyan    */
  [7] = "#a19fba", /* white   */

  /* 8 bright colors */
  [8]  = "#706f82",  /* black   */
  [9]  = "#714576",  /* red     */
  [10] = "#922D61", /* green   */
  [11] = "#91586A", /* yellow  */
  [12] = "#172C8B", /* blue    */
  [13] = "#1C2092", /* magenta */
  [14] = "#2644A2", /* cyan    */
  [15] = "#a19fba", /* white   */

  /* special colors */
  [256] = "#060017", /* background */
  [257] = "#a19fba", /* foreground */
  [258] = "#a19fba",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
