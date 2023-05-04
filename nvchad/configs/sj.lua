local options = {
  auto_jump = false, -- if true, automatically jump on the sole match
  forward_search = true, -- if true, the search will be done from top to bottom
  highlights_timeout = 0, -- if > 0, wait for 'updatetime' + N ms to clear hightlights (sj.prev_match/sj.next_match)
  max_pattern_length = 0, -- if > 0, wait for a label after N characters
  pattern_type = "vim", -- how to interpret the pattern (lua_plain, lua, vim, vim_very_magic)
  preserve_highlights = true, -- if true, create an autocmd to preserve highlights when switching colorscheme
  prompt_prefix = "", -- if set, the string will be used as a prefix in the command line
  relative_labels = false, -- if true, labels are ordered from the cursor position, not from the top of the buffer
  search_scope = "visible_lines", -- (current_line, visible_lines_above, visible_lines_below, visible_lines, buffer)
  select_window = false, -- if true, ask for a window to jump to before starting the search
  separator = ":", -- character used to split the user input in <pattern> and <label> (can be empty)
  update_search_register = false, -- if true, update the search register with the last used pattern
  use_last_pattern = false, -- if true, reuse the last pattern for next calls
  use_overlay = true, -- if true, apply an overlay to better identify labels and matches
  wrap_jumps = vim.o.wrapscan, -- if true, wrap the jumps when focusing previous or next label

  --- keymaps used during the search
  keymaps = {
    cancel = "<Esc>", -- cancel the search
    validate = "<CR>", -- jump to the focused match
    prev_match = "<A-,>", -- focus the previous match
    next_match = "<A-;>", -- focus the next match
    prev_pattern = "<C-p>", -- select the previous pattern while searching
    next_pattern = "<C-n>", -- select the next pattern while searching
    ---
    delete_prev_char = "<BS>", -- delete the previous character
    delete_prev_word = "<C-w>", -- delete the previous word
    delete_pattern = "<C-u>", -- delete the whole pattern
    restore_pattern = "<A-BS>", -- restore the pattern to the last version having matches
    ---
    send_to_qflist = "<A-q>", --- send the search results to the quickfix list
  },

  --- labels used for each matches. (one-character strings only)
  -- stylua: ignore
  labels = {
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
    "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ";", "!",
  },
}

return options
