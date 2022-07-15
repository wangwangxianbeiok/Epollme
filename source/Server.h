#pragma once
#include "Epollme.h"
#define SOMAXCONN 10240
class Server
{
public:
	Server() {};
	~Server() {};
	Server(size_t port) :m_port(port) {}
	int init();
private:
	
	size_t m_port;
	struct sockaddr_in m_bindaddr;

public:
	int m_listen_fd;
	Epollme* epollPointer;
	epoll_event m_listen_event;
	
};
