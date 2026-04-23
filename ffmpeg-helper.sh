#!/usr/bin/env bash

clear -x
echo
echo
echo "========================"
echo "= FFmpeg Helper Script ="
echo "========================"
echo

#HELP PAGES
#1 General help information about the script and its usage.
general_help() {
    echo "SOME GENERAL INFORMATION ABOUT THE SCRIPT AND ITS USAGE."      
}

#VARIABLES
arguments_count="$#"
action="$1"
action_lower_case="$(echo "$action" | tr '[:upper:]' '[:lower:]')"

#GUARDS
#1 Check if user passed any arguments. If not, print main help information and exit.
if [[ "$arguments_count" -eq 0 ]]; then
    echo "No arguments provided."
    general_help
    exit 1
fi

#MAIN COMMANDS HANDLERS
#1 Handler for the "help" action.
help_handler() {
    echo "Help handler."
}

#2 Handler for the "join" action.
join_handler() {
    echo "Join handler."
}

#3 Handler for the "cut" action.
cut_handler() {
    echo "Cut handler."
}


#GENERAL SWITCH CASE

case "$action_lower_case" in
      "h"|"-h"|"--h"|"help"|"-help"|"--help")
      echo "Help action selected."
      help_handler "$2"
      ;;

      "j"|"-j"|"--j"|"join"|"-join"|"--join")
      echo "Join action selected."
      join_handler
      ;;

      "c"|"-c"|"--c"|"cut"|"-cut"|"--cut")
      echo "Cut action selected."
      cut_handler
      ;;

      *)
      #IF USER SENT AN UNRECOGNIZED ACTION, PRINT THE MAIN HELP INFORMATION.
      echo "Unrecognized action: $action"
      general_help
      ;;
esac