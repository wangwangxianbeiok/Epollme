#pragma once
#ifndef EPOLL
#define EPOLL
#define MAX_CONNEXT_LENGTH 10240
#include<sys/epoll.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<arpa/inet.h>
#include<fcntl.h>
#include<unistd.h>
#include<iostream>
#include<poll.h>
#include<errno.h>
#include<iostream>
class Epollme
{
public:
	Epollme();
	~Epollme();
	void init();
	int addFD(int& fd,epoll_event &fe_event);
	int deleteFD(epoll_event& Epevent);
	int wait(epoll_event (&Epevent)[MAX_CONNEXT_LENGTH]);
private:
	int m_epoll_fd;

};
#endif
