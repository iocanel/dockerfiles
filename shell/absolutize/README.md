# filteropts

A simple image that wraps a script that filters one or more options

Script usage: filteropts <number of options to filter> <1st opt> <2nd opt> ... <nth opt> <remaining arguments and options>

For example:
    
    # filteropts 1 -user me one two thre
    one two three

    #filteropts 2 -user me -version 1.0.0 one two three
    one two three
