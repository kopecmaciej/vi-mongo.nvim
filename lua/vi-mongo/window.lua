local api = vim.api
local fn = vim.fn

local M = {}

local function create_vi_mongo_window()

    if fn.executable("vi-mongo") ~= 1 then
        api.nvim_err_writeln("Failed to start vi-mongo. Is it installed and in your PATH?")
        return
    end

    local buf = api.nvim_create_buf(false, true)
    local width = vim.o.columns
    local height = vim.o.lines

    local win_height = math.ceil(height * 0.9)
    local win_width = math.ceil(width * 0.9)

    local row = math.ceil((height - win_height) / 2 - 1)
    local col = math.ceil((width - win_width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col,
        border = "rounded"
    }

    local win = api.nvim_open_win(buf, true, opts)

    api.nvim_win_set_option(win, 'winblend', 0)

    vim.bo[buf].bufhidden = 'wipe'

    api.nvim_create_autocmd("TermClose", {
        buffer = buf,
        callback = function()
            vim.schedule(function()
                api.nvim_win_close(0, true)
            end)
        end,
        once = true
    })

    fn.termopen('vi-mongo')

    vim.cmd('startinsert')
end

function M.setup(opts)
    vim.api.nvim_create_user_command('ViMongo', create_vi_mongo_window, {})
end

return M
