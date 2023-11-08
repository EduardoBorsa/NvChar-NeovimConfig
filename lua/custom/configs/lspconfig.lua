local config = require("plugins.configs.lspconfig")

require("mason").setup()

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

lspconfig.html.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html"}
}

lspconfig.emmet_language_server.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "eelixir", "heex", "elixir" }
}

local opts = {}
local tailwindcss = {
    filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "django-html", "htmldjango", "edge", "eelixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte", "elixir", "surface" },
    init_options = {
        userLanguages = {
            elixir = "phoenix-heex",
            eruby = "erb",
            heex = "phoenix-heex",
            svelte = "html",
            surface = "phoenix-heex"
        },
    },
    handlers = {
            ["tailwindcss/getConfiguration"] = function(_, _, params, _, bufnr, _)
                vim.lsp.buf_notify(bufnr, "tailwindcss/getConfigurationResponse", { _id = params._id })
            end,
    },
    settings = {
        includeLanguages = {
            typescript = "javascript",
            typescriptreact = "html",
            ["html-eex"] = "html",
            ["phoenix-heex"] = "html",
            heex = "html",
            eelixir = "html",
            elixir = "html",
            elm = "html",
            erb = "html",
            svelte = "html",
            surface = "html"
        },
        tailwindCSS = {
            lint = {
                cssConflict = "warning",
                invalidApply = "error",
                invalidConfigPath = "error",
                invalidScreen = "error",
                invalidTailwindDirective = "error",
                invalidVariant = "error",
                recommendedVariantOrder = "warning",
            },
            experimental = {
                classRegex = {
                    [[class= "([^"]*)]],
                    [[class: "([^"]*)]],
                    '~H""".*class="([^"]*)".*"""',
                },
            },
            validate = true,
        },
    }
}
opts = vim.tbl_deep_extend("force", tailwindcss, opts)
lspconfig.tailwindcss.setup(opts)
