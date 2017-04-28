echo '## machine info'

echo OS:
if [ -e /etc/redhat-release ] ; then
  cat /etc/redhat-release
elif [ -e /etc/fedora-release ] ; then
  cat /etc/fedora-release
elif [ -e /etc/debian_version  ] ; then
  cat /etc/debian_version
elif [ -e /etc/lsb-release ] ; then
  cat /etc/lsb-release
else
  cat /proc/version
fi

echo

if type uname 2>&1 >/dev/null ; then
  echo uname:
  uname -a
fi

echo

echo '### CPU info'

if type lscpu 2>&1 >/dev/null ; then
  echo lscpu:
  lscpu
fi

if [ -e /proc/cpuinfo ]; then
  echo cat /proc/cpuinfo:
  cat /proc/cpuinfo
fi

echo

echo '### Memory info'
if type free 2>&1 >/dev/null ; then
  echo free -m:
  free -m
fi

echo

if [ -e /proc/meminfo ]; then
  echo cat /proc/meminfo:
  cat /proc/meminfo
fi

echo

echo '## dev env'

if type vim 2>&1 >/dev/null ; then
  echo vim: available
fi

if type git 2>&1 >/dev/null ; then
  git --version
fi

if type mysql 2>&1 >/dev/null ; then
  echo mysql: available
fi

if type nginx 2>&1 >/dev/null ; then
  nginx -v
fi

if type node 2>&1 >/dev/null ; then
  node -v
fi

if type ruby 2>&1 > /dev/null ; then
  ruby -v
fi

if type rbenv 2>&1 >/dev/null ; then
  rbenv -v
fi
