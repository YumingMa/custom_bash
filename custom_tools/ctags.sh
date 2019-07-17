ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS -I LW_MUST_CHECK -I LW_STATIC -I LW_STATIC_INLINE -I LW_NONNULL -I __in -I __out -I __out_bcount -I __in_bcount

cscope -Rqbk
