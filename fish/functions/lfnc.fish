function lfnc
    if test "$TERM" = "screen" -a -n "$TMUX"
        tmux source-file ~/.tmux-nc.conf \; \
            split -h lf -config ~/.config/lf/lfnc.conf \; lf -config ~/.config/lf/lfnc.conf
    else
        tmux -f ~/.tmux-nc.conf \
            new-session lf -config ~/.config/lf/lfnc.conf \; \
            split -h lf -config ~/.config/lf/lfnc.conf \; \
            selectp -L \; \
            attach
    end
end
