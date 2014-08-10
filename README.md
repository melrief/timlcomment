# Timlcomment: toggle comments in vim

Timlcomment is a plugin that adds four new functions to toggle comments in the
selected code, two for inline comments (e.g. `//` in Java) and two for block
comments (e.g. `/* */` in Java).

To use it, we can map a key combination to a function in both normal and visual
mode. For instance, if we want to use `<C-c>` for inline comments and `<M-c>`
for block comments, then we can put in our `.vimrc` file the lines:


    " inline
    nmap <C-c> :call Timlcomment_toggle_inline_comment()
    vmap <C-c> :call Timlcomment_toggle_inline_comment_visual()
    " block
    nmap <M-c> :call Timlcomment_toggle_block_comment()
    vmap <M-c> :call Timlcomment_toggle_block_comment_visual()


# Configuration

Timlcomment comments lines of code based on four variables:

 - `b:timlcomment_inlinecomment`: the string to put as prefix of a inline comment
    line (e.g. `//` in Java)
 - `b:timlcomment_blockcomment_start`: the string to use as first line of a block
    comment line (e.g. `/*` in Java)
 - `b:timlcomment_blockcomment_middle`: the string to use for each commented
    line (e.g. nothing or ` *` in Java)
 - `b:timlcomment_blockcomment_end`: the string to use as last line for a block
    comment line (e.g. `*/` in Java)

For many file types, those variables are automatically set by the plugin. When
a variable is not set, the plugin will ask for an input to the user and will use
the given input for the whole session.
