#!/bin/sh
echo "Votre site a benchmarker !"
read url
echo "benchmark de $url !"


if [ -z "$url" ]; then
  clear
  echo ""
  echo "Usage:"
  echo "command <http://url/>"
  echo ""
  echo "Example:"
  echo "command http://domain.ltd/index.php"
  echo ""
  exit $?
fi

/usr/sbin/ab -n 20000000 -c 90 $url