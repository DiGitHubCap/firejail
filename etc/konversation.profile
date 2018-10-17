# Firejail profile for konversation
# Description: User friendly Internet Relay Chat (IRC) client for KDE
# This file is overwritten after every install/update
# Persistent local customizations
include konversation.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/konversationrc
noblacklist ${HOME}/.kde/share/config/konversationrc
noblacklist ${HOME}/.kde4/share/config/konversationrc

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
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

private-bin konversation,kbuildsycoca4
private-dev
private-tmp

# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
