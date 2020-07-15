# case `uname` in
#
#   Linux)
    alias configurevim="./configure \
    --disable-darwin \
    --disable-smack  \
    --disable-selinux  \
    --disable-xsmp  \
    --enable-python3interp=yes  \
    --enable-luainterp=yes  \
    --enable-cscope  \
    --disable-netbeans  \
    --enable-multibyte  \
    --enable-fontset  \
    --enable-gui=no \
    --with-features=huge"
#     alias configuretmux="sh autogen.sh; ./configure"
#     ;;
#
#   Darwin)
#     alias configurevim="./configure --prefix=/usr/local --disable-smack --disable-selinux --disable-xsmp --enable-luainterp=yes --enable-rubyinterp=yes --enable-cscope --disable-netbeans --enable-multibyte --enable-fontset --disable-gtktest --disable-gpm --with-features=huge --with-lua-prefix=/usr/local"
#     alias configuretmux="sh autogen.sh; ./configure"
#     ;;
#
# esac