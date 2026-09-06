#!/bin/bash
export GIT_AUTHOR_NAME="shivacharanteja10"
export GIT_AUTHOR_EMAIL="shivacharanteja10@users.noreply.github.com"
export GIT_COMMITTER_NAME="shivacharanteja10"
export GIT_COMMITTER_EMAIL="shivacharanteja10@users.noreply.github.com"
git filter-branch -f --env-filter '
    export GIT_AUTHOR_NAME="shivacharanteja10"
    export GIT_AUTHOR_EMAIL="shivacharanteja10@users.noreply.github.com"
    export GIT_COMMITTER_NAME="shivacharanteja10"
    export GIT_COMMITTER_EMAIL="shivacharanteja10@users.noreply.github.com"
' -- --all
