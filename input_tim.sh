# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    input_tim.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldevelle <ldevelle@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/18 04:56:49 by ldevelle          #+#    #+#              #
#    Updated: 2019/02/06 14:38:02 by ldevelle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

find $1/*.c >> list_files.txt

declare -i i=0
while IFS=: read -r line
do
{
	perl -0777 -pe 's {\)\n\{} {$&\n\ttime_exe(__func__, clock());}g' $line >> temp.c
	rm $line
	cat temp.c >> $line
	rm temp.c
}
done < list_files.txt

rm list_files.txt
