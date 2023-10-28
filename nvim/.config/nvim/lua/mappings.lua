local map = vim.keymap.set

-- General mappings
map("n", "<C-s>", "<cmd> w <CR>")
map("i", "jk", "<ESC>")
map("n", "<C-c>", "<cmd> %y+ <CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- NvTerm
map(
  "n",
  "<M-i>",
  "<cmd> lua require('nvterm.terminal').toggle('float') <CR>"
)
map(
  "t",
  "<M-i>",
  "<cmd> lua require('nvterm.terminal').toggle('float') <CR>"
)

map(
  "n",
  "<leader>th",
  "<cmd> lua require('nvterm.terminal').toggle('hozizontal') <CR>",
  { desc = "Toggle horizontal term" }
)
map(
  "n",
  "<leader>tv",
  "<cmd> lua require('nvterm.terminal').toggle('vertical') <CR>",
  { desc = "Toggle vertical term" }
)

-- exit terminal mode
map("t", "<C-x>", vim.api.nvim_replace_termcodes('<C-\\><C-N>', true, true, true),
  { desc = "Exit terminal mode" })

-- NvimTree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<leader>e", "<cmd> NvimTreeFocus <CR>", { desc = "Focus NvimTree" })

-- Telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>", { desc = "Find files" })
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", { desc = "Recent Files" })
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
map("n", "<leader>fg", "<cmd> Telescope git_status <CR>", { desc = "Git status" })
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>", { desc = "Buffers" })

-- Bufferline
map("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
map("n", "<leader>x", "<cmd> bd <CR>", { desc = "Delete current buffer" })

-- Comment.nvim
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment line" })

map(
  "v",
  "<leader>/",
  "<ESC><cmd> lua require('Comment.api').toggle.linewise(vim.fn.visualmode()) <CR>",
  { desc = "Comment line" }
)

-- Format
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "Format file" })
