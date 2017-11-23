
function jgrep()
{
    find . -type f -name "*\.java" -print0 | xargs -0 grep --color -n "$@"
}

function sgrep()
{
    find . -type f -name "*\.scala" -print0 | xargs -0 grep --color -n "$@"
}

function cgrep()
{
    find . -type f \( -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.h' \) -print0 | xargs -0 grep --color -n "$@"
}

case `uname -s` in
    Darwin)
        function mgrep()
        {
            find -E . -type f -iregex '.*/(Makefile|Makefile\..*|.*\.make|.*\.mak|.*\.mk)' -print0 | xargs -0 grep --color -n "$@"
        }

        function treegrep()
        {
            find -E . -type f -iregex '.*\.(c|h|cpp|S|java|xml)' -print0 | xargs -0 grep --color -n -i "$@"
        }

        ;;
    *)
        function mgrep()
        {
            find . -regextype posix-egrep -iregex '(.*\/Makefile|.*\/Makefile\..*|.*\.make|.*\.mak|.*\.mk)' -type f -print0 | xargs -0 grep --color -n "$@"
        }

        function treegrep()
        {
            find . -regextype posix-egrep -iregex '.*\.(c|h|cpp|S|java|xml)' -type f -print0 | xargs -0 grep --color -n -i "$@"
        }

        ;;
esac

function somc-proxy() {
    export http_proxy=http://proxy.global.sonyericsson.net:8080
    export https_proxy=http://proxy.global.sonyericsson.net:8080
    export HTTP_PROXY=http://proxy.global.sonyericsson.net:8080
    export HTTPS_PROXY=http://proxy.global.sonyericsson.net:8080
}

function cntlm-proxy() {
    export http_proxy=http://localhost:3128
    export https_proxy=http://localhost:3128
    export HTTP_PROXY=http://localhost:3128
    export HTTPS_PROXY=http://localhost:3128
}

