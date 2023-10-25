---@diagnostic disable: undefined-global
local build_commands = {
  rust = "cargo build",
  go = "go build -o %:p:r.o %",
  typescript = "npm install",
  javascript = "npm install",
}

local run_commands = {
  rust = "cargo run",
  go = "%:p:r.o",
  typescript = "npm run start",
}

vim.api.nvim_create_user_command("Build", function()
  local filetype = vim.bo.filetype
  for file, command in pairs(build_commands) do
    if filetype == file then
      vim.cmd("! " .. command)
      break
    end
  end
end, {})

vim.api.nvim_create_user_command("Run", function()
  local filetype = vim.bo.filetype
  for file, command in pairs(run_commands) do
    if filetype == file then
      vim.cmd("sp")
      vim.cmd("term " .. command)
      vim.cmd("resize 20N")
      local keys = vim.api.nvim_replace_termcodes("i", true, false, true)
      vim.api.nvim_feedkeys(keys, "n", false)
      break
    end
  end
end, {})

-- binds
vim.api.nvim_set_keymap("n", "<leader>pb", ":Build<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pr", ":Run<CR>", { noremap = true, silent = true })
