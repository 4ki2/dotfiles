alias sa="svn add"
alias sc="svn commit -m"
alias sd="svn diff|more"
alias sl="svn log|more"
alias slh="svn log|head"
alias sq="svn log -q|more"
alias sr="svn revert"
alias ss="svn status"
alias sp="svn update" # "s"vn "p"ull/"p"ush
sw() { # "s"vn sho"w"
  local rev=
  for r in `svn log -q -l 2|grep ^r|cut -d' ' -f1`; do
    if [ $rev ]; then
      rev=$r:$rev
    else
      rev=$r
    fi
  done
  svn diff -r $rev
}
