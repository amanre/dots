static const char norm_fg[] = "#f1d1d7";
static const char norm_bg[] = "#04062F";
static const char norm_border[] = "#a89296";

static const char sel_fg[] = "#f1d1d7";
static const char sel_bg[] = "#9A4878";
static const char sel_border[] = "#f1d1d7";

static const char urg_fg[] = "#f1d1d7";
static const char urg_bg[] = "#853D6F";
static const char urg_border[] = "#853D6F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
