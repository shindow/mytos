#ifndef _TIME_H
#define _TIME_H
typedef struct time
{
	u8 minisecond;
	u8 second;
	u8 minute;
	u8 hour;
	u8 dayOfweek;
	u8 dateOfmonth;
	u8 month;
	u8 year;
	u8 wk;
}TIME; 

#endif
