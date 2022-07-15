#include "Server.h"
#include "Epollme.h"
int main() {
	Server  serv(8981);
	serv.init();
	Epollme epollObj;
	serv.epollPointer = &epollObj;
	epollObj.addFD(serv.m_listen_fd, serv.m_listen_event);
	epoll_event lset[SOMAXCON];
	while (true) {
		int n = epollObj.wait(lset);
		if ( n< 0) {
			if (errno == EINTR) {
				continue;
			}
			break;
		}
		else if (n==0) {
			continue;
		}
		for (size_t i = 0;i < n;++i) {
			struct sockaddr_in clientaddr;
			socklen_t clientaddrlen = sizeof(clientaddr);
			if (lset[i].events & EPOLLIN) {
				int clientfd = accept(serv.m_listen_fd, (struct sockaddr*)&clientaddr, &clientaddrlen);
				if (clientfd != -1) {
					int old = fcntl(clientfd,F_GETFL,0);
					int newf = old| O_NONBLOCK;
					if (fcntl(clientfd, F_SETFL, newf) == -1) {
						std::cout << "set nonblock error"<<std::endl;
						close(clientfd);
					}
					else {
						epoll_event client_fd_event;
						client_fd_event.data.fd = clientfd;
						client_fd_event.events = EPOLLIN;
						if (epollObj.addFD(clientfd, client_fd_event) != -1) {
							std::cout << "new talker:" << clientfd << std::endl;
						}
						else {
							std::cout << "add new talker error" << std::endl;
							close(clientfd);
						}
					
					}
				}
				else {
					char ch[255];
					int m = recv(lset[i].data.fd, &ch, 255, 0);
					if (m == 0) {
						if (epollObj.deleteFD(lset[i]) != -1) {
							std::cout << "talker" << lset[i].data.fd << "leave" << std::endl;
						}
						close(lset[i].data.fd);
					}
					else if (m < 0) {
						if (errno != EWOULDBLOCK && errno != EINTR) {
							std::cout << "talker disconnect" << lset[i].data.fd << std::endl;
						}
					
					}
					else {
						std::cout << "talker" << lset[i].data.fd << ':';
						for (auto c : ch) {
							if (c == ' ') {
								break;
							}
							std::cout << c;
						}
					}
				
				}
			
			}


		}
	}
}