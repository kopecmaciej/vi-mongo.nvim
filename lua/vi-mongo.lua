local M = {}

function M.setup(opts)
    opts = opts or {}
    -- Add any global configuration options here
    require('vi-mongo.window').setup(opts)
end

return M
