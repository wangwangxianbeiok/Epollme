#include "Server.h"
Server::~Server()
{
	close(m_listen_fd);
}

int Server::init()
{
	m_listen_fd = socket(AF_INET, SOCK_STREAM, 0);
	int on = 1;
	setsockopt(m_listen_fd,SOL_SOCKET,SO_REUSEADDR, (char*)&on, sizeof(on));
	int oldFlag = fcntl(m_listen_fd, F_GETFL, 0);
	int newFlag = oldFlag | O_NONBLOCK;
	if (fcntl(m_listen_fd, F_SETFL, newFlag) == -1) {
		close(m_listen_fd);
		std::cout << "flag error" << std::endl;
		return -1;
	}
	m_bindaddr.sin_family = AF_INET;
	m_bindaddr.sin_addr.s_addr = htonl(INADDR_ANY);
	m_bindaddr.sin_port = htons(m_port);
	if (bind(m_listen_fd, (struct sockaddr*)&m_bindaddr, sizeof(m_bindaddr)) == -1) {
		std::cout << "°ó¶¨Ê§°Ü" << std::endl;
		return -1;
	}
	if (listen(m_listen_fd, SOMAXCON) == -1)
	{
		std::cout << "¼àÌý´íÎó" << std::endl;
		return -1;

	}
	m_listen_event.events |= EPOLLIN;
}
