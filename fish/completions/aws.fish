complete -c aws -f -a '(begin; set -l -x COMP_SHELL fish; set -l -x COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'