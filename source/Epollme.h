#pragma once
#include<iostream>
class Epollme
{
public:
	Epollme();
	~Epollme();
	void init();
	int addFD(int& fd,epol_event &fe_event);
	int deletefd(int& fd);
	int wait(epoll_event & epoll_events);
private:
	int m_epoll_fd;

};
