#ifndef	PUBLICHEADERS_H
#define PUBLICHEADERS_H

#include	"StdAfx.h"

extern bool if_success;
extern int getRanDomNumber(void);
extern void generateSeed(char *filldata_out, int length);
extern bool get_random_num(int input);
extern bool successEnd(void);
extern bool failureEnd(void);
extern CString key;
extern CString keyVal;

#endif