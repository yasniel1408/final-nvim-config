-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Configuración de 'rest.nvim'
require("rest-nvim").setup()

-- Mapeos de teclado para 'rest.nvim'
vim.api.nvim_set_keymap("n", "<leader>ra", "<Plug>RestNvim", {})
