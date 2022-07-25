require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "lua",
        "yaml",
        "html",
        "css",
        "bash",
        "dockerfile",
        "dot",
        "python",
        "go",
        "rust",
        "graphql",
        "json",
        "make",
        "markdown",
        "regex",
        "svelte",
        "tsx",
        "toml",
        "typescript",
        "javascript",
        "sql"
    },
    sync_install = false,

    ignore_install = { "php", "phpdoc" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

