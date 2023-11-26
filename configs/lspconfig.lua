local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

-- typescript
lspconfig.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
}

-- html
lspconfig.html.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

-- css
lspconfig.cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

-- svelte
lspconfig.svelte.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

-- python 
lspconfig.pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
