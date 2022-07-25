/* charset.c */
int init_chartab(void);
int buf_init_chartab(buf_T *buf, int global);
void trans_characters(char_u *buf, int bufsize);
char_u *transstr(char_u *s);
char_u *str_foldcase(char_u *str, int orglen, char_u *buf, int buflen);
char_u *transchar(int c);
char_u *transchar_buf(buf_T *buf, int c);
char_u *transchar_byte(int c);
void transchar_nonprint(buf_T *buf, char_u *charbuf, int c);
void transchar_hex(char_u *buf, int c);
int byte2cells(int b);
int char2cells(int c);
int ptr2cells(char_u *p);
int vim_strsize(char_u *s);
int vim_strnsize(char_u *s, int len);
int chartabsize(char_u *p, colnr_T col);
int linetabsize(char_u *s);
int linetabsize_col(int startcol, char_u *s);
int win_linetabsize(win_T *wp, linenr_T lnum, char_u *line, colnr_T len);
int vim_isIDc(int c);
int vim_isNormalIDc(int c);
int vim_iswordc(int c);
int vim_iswordc_buf(int c, buf_T *buf);
int vim_iswordp(char_u *p);
int vim_iswordp_buf(char_u *p, buf_T *buf);
int vim_isfilec(int c);
int vim_isfilec_or_wc(int c);
int vim_isprintc(int c);
int vim_isprintc_strict(int c);
void init_chartabsize_arg(chartabsize_T *cts, win_T *wp, linenr_T lnum, colnr_T col, char_u *line, char_u *ptr);
void clear_chartabsize_arg(chartabsize_T *cts);
int lbr_chartabsize(chartabsize_T *cts);
int lbr_chartabsize_adv(chartabsize_T *cts);
int win_lbr_chartabsize(chartabsize_T *cts, int *headp);
void getvcol(win_T *wp, pos_T *pos, colnr_T *start, colnr_T *cursor, colnr_T *end);
colnr_T getvcol_nolist(pos_T *posp);
void getvvcol(win_T *wp, pos_T *pos, colnr_T *start, colnr_T *cursor, colnr_T *end);
void getvcols(win_T *wp, pos_T *pos1, pos_T *pos2, colnr_T *left, colnr_T *right);
char_u *skipwhite(char_u *q);
char_u *skipwhite_and_nl(char_u *q);
int getwhitecols_curline(void);
int getwhitecols(char_u *p);
char_u *skipdigits(char_u *q);
char_u *skipbin(char_u *q);
char_u *skiphex(char_u *q);
char_u *skiptobin(char_u *q);
char_u *skiptodigit(char_u *q);
char_u *skiptohex(char_u *q);
int vim_isdigit(int c);
int vim_isxdigit(int c);
int vim_isbdigit(int c);
int vim_islower(int c);
int vim_isupper(int c);
int vim_isalpha(int c);
int vim_toupper(int c);
int vim_tolower(int c);
char_u *skiptowhite(char_u *p);
char_u *skiptowhite_esc(char_u *p);
long getdigits(char_u **pp);
long getdigits_quoted(char_u **pp);
int vim_isblankline(char_u *lbuf);
void vim_str2nr(char_u *start, int *prep, int *len, int what, varnumber_T *nptr, uvarnumber_T *unptr, int maxlen, int strict);
int hex2nr(int c);
int hexhex2nr(char_u *p);
int rem_backslash(char_u *str);
void backslash_halve(char_u *p);
char_u *backslash_halve_save(char_u *p);
/* vim: set ft=c : */
