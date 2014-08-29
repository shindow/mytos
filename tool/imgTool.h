//simple file system for the .img
#define K 1024
#define B 1
#define FLOOPSIZE 1024*1440
#define BUFFERSIZE 1024*1440
#define ERROR -1
#define SUCCESS 1
#define FILELENGTH 100
#define SYMLENGTH 6

typedef struct sfs
{
	char name[20];
	int sectors;
	int start_sec;
	char path[20];
	struct sfs* next;
}SFS;
typedef struct sfs_head
{
	int sectors;
	int file_num;
	SFS* header;
	char info[100];
}SFS_HEAD;
SFS_HEAD* sfs_parse(char *filename);
FILE  *file_open(char *filename,char *method);
int file_size(FILE *filename);
void strcopy(char *des,char *ori,int len);
