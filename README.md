# Vi Mongo nvim plugin

**Vi Mongo** is a TUI application that's enable to efficiently work with MongoDB.
This is repository of it's plugin that provides a floating window interface for
Neovim.

## Official Website

For more information, visit [www.vi-mongo.com](https://www.vi-mongo.com)
or [GitHub](https://github.com/kopecmaciej/vi-mongo.nvim).

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
    'kopecmaciej/vi-mongo.nvim',
    config = function()
        require('vi-mongo').setup()
    end,
    cmd = { "ViMongo" }
}
```

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

- Neovim
- `vi-mongo` CLI tool installed and available in your PATH (check [installation
  instructions](https://vi-mongo.com/docs/installation))
