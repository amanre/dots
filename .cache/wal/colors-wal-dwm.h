static const char norm_fg[] = "#cbd5e4";
static const char norm_bg[] = "#010217";
static const char norm_border[] = "#8e959f";

static const char sel_fg[] = "#cbd5e4";
static const char sel_bg[] = "#1E6695";
static const char sel_border[] = "#cbd5e4";

static const char urg_fg[] = "#cbd5e4";
static const char urg_bg[] = "#A02B67";
static const char urg_border[] = "#A02B67";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
