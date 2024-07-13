return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
"                                                         ",                                              
" ███    ██  █████  ███    ██ ██████   ██ ███████ ██   ██ ",
" ████   ██ ██   ██ ████   ██ ██   ██ ███ ██      ██   ██ ",
" ██ ██  ██ ███████ ██ ██  ██ ██   ██  ██ ███████ ███████ ",
" ██  ██ ██ ██   ██ ██  ██ ██ ██   ██  ██      ██ ██   ██ ",
" ██   ████ ██   ██ ██   ████ ██████   ██ ███████ ██   ██ ",
"                                                         ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("a", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("n", "  > Toggle file explorer", "<cmd>Neotree filesystem reveal left<CR>"),
      dashboard.button("p", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("f", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}



                                                       
                                                        

