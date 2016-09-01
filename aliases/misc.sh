# direnv
alias da="direnv allow"

# nkf
alias nkf="nkf -w --no-best-fit-chars" # overwrite

# heroku
alias helog="heroku logs --tail"

# jekyll
alias jks="bundle exec jekyll serve -w"
jknp(){ # "j"e"k"yll "n"ew "p"ost
  if [ ! -d _posts ]; then
    echo "not in jekyll" >&2
    return
  fi
  if [ -z "$1" ]; then
    echo "usage: $0 <title>" >&2
    return
  fi
cat <<_JEKYLL_PARAMS_ > _posts/$(date +%Y-%m-%d)-$1.md
---
layout: post
title:  $1
date:   $(date +"%Y-%m-%d %H:%M:%S") +0900
categories: blog
tags: $(echo $1|tr -s '-' ' ')
---
_JEKYLL_PARAMS_
}

# hugo
alias hugoserv="hugo server -w --ignoreCache -v"
#"sass --watch static/scss:static/css"
