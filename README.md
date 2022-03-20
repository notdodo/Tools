# Tools

Collection of submodules/scripts/tools.

## Clone this repo

`git clone --recursive https://github.com/notdodo/Tools.git`

## Add submodule

* `git submodule add <submodule_repo_url>`
* in `.gitmodules` add the `branch` value

## Update submodules

`git submodule foreach -q 'BRANCH=$(git config -f $toplevel/.gitmodules submodule.$name.branch); git checkout $BRANCH; git pull origin $BRANCH'`
