#include <stdio.h>
#include <string.h>
#include <unistd.h>

size_t ft_strlen(const char *str);
char *ft_strcpy(char *dest, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);

int main() {
    const char *msg = "Hello, World!";
    printf("Length: %zu\n", ft_strlen(msg));

    char dest[20];
    ft_strcpy(dest, msg);
    printf("Copied string: %s\n", dest);

    const char *wrongmsg = "Hello, World!a";
    int result = ft_strcmp(msg, wrongmsg);
    printf("Comparison result: %d\n", result);

    ssize_t return_code = ft_write(1, "This is a test of ft_write.\n", 29);
    printf("Return Code: %ld\n", return_code);

    return_code = ft_write(3, "This is a test of ft_write.\n", 29);
    printf("Return Code: %ld\n", return_code);

    char buf[100];
    return_code = read(0, buf, 100);
    printf("Read %ld bytes: %s", return_code, buf);

    char *duplicated = ft_strdup(msg);
    printf("Duplicated string: %s\n", duplicated);
    return 0;
}