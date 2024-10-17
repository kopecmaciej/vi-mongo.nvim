local M = {}

function M.setup(opts)
    opts = opts or {}
    require('vi-mongo.window').setup(opts)
end

return M
