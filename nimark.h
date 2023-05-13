#ifndef __NIMARK_H__
#define __NIMARK_H__

#ifdef __cplusplus
extern "C" {
#endif

extern void nimark_init(void);

extern char* nimark_markdown(const char* lines);

#ifdef __cplusplus
}
#endif

#endif // __NIMARK_H__
