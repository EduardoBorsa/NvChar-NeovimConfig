local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.elixirls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"elixir"},
  cmd = {"/home/dado/.local/share/nvim/mason/bin/elixir-ls"}
}

lspconfig.dockerls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"dockerfile"}
}

lspconfig.docker_compose_language_service.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
