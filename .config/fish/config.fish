source ~/.profile;clear;

if status --is-interactive
    abbr --add --global gs git status
    abbr --add --global gco git checkou
    abbr --add --global n nvim 
    abbr --add --global vim nvim 
end
