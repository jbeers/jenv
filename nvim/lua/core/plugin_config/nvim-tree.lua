vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require( "nvim-tree" ).setup()

vim.keymap.set( "n", "<c-n>", ":NvimTreeFindFileToggle<CR>" )


-- Auto-open on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local path = vim.fn.expand('%:p')
    
    if vim.fn.isdirectory(path) == 1 then
      -- Directory passed: nvim /some/dir
      require("nvim-tree.api").tree.open({ path = path })
    elseif vim.fn.filereadable(path) == 1 then
      -- File passed: nvim file.txt
      local parent = vim.fn.fnamemodify(path, ':h')
      require("nvim-tree.api").tree.open({ path = parent })
    else
      -- No file passed: just `nvim`
      -- Opens at current working directory
      require("nvim-tree.api").tree.open()
    end
  end
})
