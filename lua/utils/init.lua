local utils = {}

function utils.map (mode, lhs, rhs, options)
  if(options == nil) then
    options = { noremap = true, silent = true }
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return utils
