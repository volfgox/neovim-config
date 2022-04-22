local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

local servers = { 'solargraph', 'sumneko_lua' }

for _, server in pairs(servers) do

  if server == "solargraph" then
    local solargraph_opts = require("user.lsp.settings.solargraph")
    opts = vim.tbl_deep_extend("force", solargraph_opts, opts)
  end

  if server == "sumneko_lua" then
    local sumneko_lua_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_lua_opts, opts)
  end

  lspconfig[server].setup(opts)
end
