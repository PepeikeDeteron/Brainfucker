# reference https://kimiyuki．net/blog/2015/04/09/practical‐brainfuck‐using‐fizzbuzz/

# fizzbuzz
# 102 105 122 122 98 117 122 122 10(lf)


>++++++++++[<++++++++++>-]<     # i = 10 * 10 (p［0］)
>                               # a = 0       (p［1］)
>+                              # b = 1       (p［2］)
>++                             # fz = 3      (p［3］)
>++++                           # bz = 5      (p［4］)
<<<<

[                                                   # for (; i != 0; i‐‐) {
    >>>[>>+>+<<<-]>>[<<+>>-]>                       # p［6］ = fz
    <+>[ [-]<->                                     # if (p［6］) with p［5］ {
        <<[>+>+<<-]>[<+>-]>                             # p［6］ = bz
        <+>[ [-]<->                                      # if (p［6］ with p［5］ {
            <<<<<[>>>>+>+<<<<<-]>>>>[<<<<+>>>>-]>           # p［6］ = a
            [                                               # if (p［6］) {
                >++++++[<++++++++>-]<                           # p［6］ ＋= 48
                .                                               # a
            [-]]                                            # }
            <++++++[<<<++++++++>>>-]>                       # b ＋= 48
            <<<<.>>>>                                       # b
            <++++++[<<<-------->>>-]>                       # b ‐= 48
            ++++++++++.[-]                                  # \n
        ] <[->                                           # } else {
            >++++++++++[<++++++++++>-]<--.                  # p［6］ = 98 (b)
            +++++++++++++++++++.                            # u
            +++++..                                         # zz
            [-]++++++++++.                                  # \n
            [-]<<+++++>>                                    # bz = 5
        <]>                                             # }
    ] <[->                                          # } else {
        <<[>+>+<<-]>[<+>-]>                             # p［6］ = bz
        <+>[ [-]<->                                     # if (p［6］) with p［5］
            >++++++++++[<++++++++++>-]<++.                  # p［6］ = 102 (f)
            +++.                                            # i
            +++++++++++++++++..                             # zz
            [-]++++++++++.                                  # \n
        [-] ]<[->                                       # } else {
            >++++++++++[<++++++++++>-]<++.                  # p［6］ = 102 (f)
            +++.                                            # i
            +++++++++++++++++..                             # zz
            ------------------------.                       # b
            +++++++++++++++++++.                            # u
            +++++..                                         # zz
            [-]++++++++++.                                  # \n
            [-]<<+++++>>                                      # bz = 5
        <]>                                             # }
        <<<+++>>>                                       # fz = 3
    <]>                                             # }

    <<<<<<
    >>>->-<<<<                                  # fz ‐= 1 bz ‐= 1
    >>[>>>+>+<<<<-]>>>[<<<+>>>-]>               # p［6］ = b
    [<+>-]+++++++++<[>-<-]>                     # p［6］ = 9 ‐ p［6］
    <+>[                                        # if (p［6］) with p［5］ {
        <<<<+>>>>                                   # b ＋= 1
    [-]<->] <[>                                 # } else {
        <<<<<+>[-]>>>>                              # a ＋= 1 b = 0
    <-]>                                        # }
    <<<<<<
-]                                          # }