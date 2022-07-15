#include "Epollme.h"

Epollme::Epollme()
{
	m_epoll_fd = epoll_create(1);
	if (m_epoll_fd == -1) {
		std::cout << "make epoll fail" << std::endl;
		close(m_epoll_fd);
	}
}

Epollme::~Epollme()
{
	close(m_epoll_fd);
}

int Epollme::deleteFD(epoll_event& Epevent)
{
	int p = epoll_ctl(m_epoll_fd, EPOLL_CTL_DEL, Epevent.data.fd, NULL);
	return p;
}

int Epollme::wait(epoll_event (&epoll_events)[MAX_CONNEXT_LENGTH])
{
	int n = epoll_wait(m_epoll_fd, epoll_events, MAX_CONNEXT_LENGTH, 1000);
	return n;
}

int Epollme::addFD(int& fd, epoll_event &fd_event)
{
	if (epoll_ctl(m_epoll_fd, EPOLL_CTL_ADD, fd, &fd_event) == -1) {
		std::cout << "bind epoll fail;" << std::endl;
		close(fd);
		return -1;
	}
	return 0;
}
