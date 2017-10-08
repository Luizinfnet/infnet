g_COMMAND="$1"



g_USER="teamspeak"

g_TS3_HOME="/home/teamspeak/teamspeak-server-{{ teamspeak_version }}/teamspeak3-server_linux-amd64"

g_STARTSCRIPT="$g_TS3_HOME/ts3server_startscript.sh"



cd "$g_TS3_HOME"



case "$g_COMMAND" in

    status)

        sudo -u "$g_USER" "$g_STARTSCRIPT" status

        exit "$?"

        ;;

    start)

        echo "Starting TeamSpeak 3 server..."

        sudo -u "$g_USER" "$g_STARTSCRIPT" start

        exit "$?"

        ;;

    stop)

        echo "Stopping TeamSpeak 3 server..."

        sudo -u "$g_USER" "$g_STARTSCRIPT" stop

        exit "$?"

        ;;

    reload)

        echo "Reload is not supported. Restarting instead..."

        sudo -u "$g_USER" "$g_STARTSCRIPT" restart

        exit "$?"

        ;;

    force-reload)

        echo "Reload is not supported. Restarting instead..."

        sudo -u "$g_USER" "$g_STARTSCRIPT" restart

        exit "$?"

        ;;

    restart)

        echo "Restarting TeamSpeak 3 server..."

        sudo -u "$g_USER" "$g_STARTSCRIPT" restart

        exit "$?"

        ;;

    *)

        echo "Usage: $0 {status|start|stop|restart}"

        exit 2

        ;;

esac
