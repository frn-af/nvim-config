return {
   'decaycs/decay.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'dark-decay'
      vim.cmd.hi 'Comment gui=none'
    end,
  }
