# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldevelle <ldevelle@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/04 04:30:35 by ldevelle          #+#    #+#              #
#    Updated: 2019/02/04 04:30:39 by ldevelle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

git :
		@git add -A
		@git status
		@git commit -am "Makefile automated push"
		@git push
