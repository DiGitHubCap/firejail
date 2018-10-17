# Firejail profile for qmmp
# Description: Feature-rich audio player with support of many formats
# This file is overwritten after every install/update
# Persistent local customizations
include qmmp.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.qmmp
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
netfilter
# no3d
nodbus
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin qmmp,tar,unzip,bzip2,gzip
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
