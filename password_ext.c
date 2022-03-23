#include <string.h>
#define BUFFER_SIZE 500
int checkPassword(const char* source)
{
  char buff[BUFFER_SIZE]; // this is long enough for any reasonable password!
  int valid = 0;

  int max = strlen(source);
  for(int i = 0; i < max; i++) {
    buff[i] = source[i];
  }
  if(strncmp(buff, "supersecretyou'llneverguessitpassword", BUFFER_SIZE) == 0) {
    valid = 1;
  }
  return valid;
}