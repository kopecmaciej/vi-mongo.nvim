# Vi Mongo nvim plugin

**Vi Mongo** is a TUI application that enables efficient work with MongoDB.
This repository contains a Neovim plugin that provides a floating window interface for
Vi Mongo.

## Official Website

For more information, visit [www.vi-mongo.com](https://www.vi-mongo.com)
or [GitHub](https://github.com/kopecmaciej/vi-mongo.nvim).

## Installation

### Using [vim-plug](https://github.com/junegunn/vim-plug)

Add the following line to your Neovim configuration:

```vim
Plug 'kopecmaciej/vi-mongo.nvim'
```

Then run `:PlugInstall` in Neovim.

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

Add the following to your Neovim configuration:

```lua
use {
    'kopecmaciej/vi-mongo.nvim',
    config = function()
        require('vi-mongo').setup()
    end
}
```

Then run `:PackerSync` in Neovim.

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

Add the following to your Neovim configuration:

```lua
{
  "kopecmaciej/vi-mongo.nvim",
  config = function()
    require("vi-mongo").setup()
  end,
  cmd = { "ViMongo" },
  keys = {
    { "<leader>vm", "<cmd>ViMongo<cr>", desc = "ViMongo" }
  }
}
```

Then run `:Lazy sync` in Neovim.

## Usage

After installation, you can open the Vi Mongo window using the command:

```
:ViMongo
```

## Configuration

To add a shortcut for opening Vi Mongo, add the following to your Neovim
configuration:

```lua
vim.api.nvim_set_keymap('n', '<leader>vm', ':ViMongo<CR>', { noremap = true, silent = true })
```

This will map `<leader>vm` to open Vi Mongo in normal mode.

## Requirements

- Neovim (0.5 or later)
- `vi-mongo` CLI tool installed and available in your PATH (check [installation
  instructions](https://vi-mongo.com/docs/installation))
