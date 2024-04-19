return {
   'decaycs/decay.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'decay'

      vim.cmd.hi 'Comment gui=none'
    end,
  }
