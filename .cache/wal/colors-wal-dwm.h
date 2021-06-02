static const char norm_fg[] = "#a19fba";
static const char norm_bg[] = "#060017";
static const char norm_border[] = "#706f82";

static const char sel_fg[] = "#a19fba";
static const char sel_bg[] = "#922D61";
static const char sel_border[] = "#a19fba";

static const char urg_fg[] = "#a19fba";
static const char urg_bg[] = "#714576";
static const char urg_border[] = "#714576";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
