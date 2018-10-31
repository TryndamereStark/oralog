#!/bin/bash

HELP()
{
	echo usage: ./oralog.sh install
	echo "	logblack black"
	echo "	logred red"
	echo "	loggreen green"
	echo "	logyellow yellow"
	echo "	logblue blue"
	echo "	logmagenta magenta"
	echo "	logcyan cyan"
	echo "	logwhite white"
}

basename=`basename $0`
if [ "$basename"x = "logblack"x  ];then
	echo -e "\033[1;30m"$*"\033[0m"
elif [ "$basename"x = "logred"x  ];then
	echo -e "\033[1;31m"$*"\033[0m"
elif [ "$basename"x = "loggreen"x  ];then
	echo -e "\033[1;32m"$*"\033[0m"
elif [ "$basename"x = "logyellow"x  ];then
	echo -e "\033[1;33m"$*"\033[0m"
elif [ "$basename"x = "logblue"x  ];then
	echo -e "\033[1;34m"$*"\033[0m"
elif [ "$basename"x = "logmagenta"x  ];then
	echo -e "\033[1;35m"$*"\033[0m"
elif [ "$basename"x = "logcyan"x  ];then
	echo -e "\033[1;36m"$*"\033[0m"
elif [ "$basename"x = "logwhite"x  ];then
	echo -e "\033[1;37m"$*"\033[0m"
elif [ "$basename"x = "oralog.sh"x  ];then
	if [ "$1"x = "--help"x  ];then
		HELP
	elif [ "$1"x = "install"x  ];then
		bindir=/usr/local/bin
		install -D $0 $bindir/oralog.sh
		cd $bindir/
		ln -sf oralog.sh logblack
		ln -sf oralog.sh logred
		ln -sf oralog.sh loggreen
		ln -sf oralog.sh logyellow
		ln -sf oralog.sh logblue
		ln -sf oralog.sh logmagenta
		ln -sf oralog.sh logcyan
		ln -sf oralog.sh logwhite
		echo oralog.sh installed to $bindir
	else
		HELP
	fi
else
	echo please install oralog.sh first!!
fi
