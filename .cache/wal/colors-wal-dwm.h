static const char norm_fg[] = "#b8b4bc";
static const char norm_bg[] = "#271825";
static const char norm_border[] = "#807d83";

static const char sel_fg[] = "#b8b4bc";
static const char sel_bg[] = "#A76965";
static const char sel_border[] = "#b8b4bc";

static const char urg_fg[] = "#b8b4bc";
static const char urg_bg[] = "#8E6E73";
static const char urg_border[] = "#8E6E73";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
