return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                mode = "buffers",
                style_preset = bufferline.style_preset.default,
                themable = true,
                close_command = "bdelete! %d",
                left_mouse_command = "buffer %d",
                middle_mouse_command = nil,
                indicator = {
                    icon = "▎",
                    style = "icon",
                },
                buffer_close_icon = "󰅖",
                modified_icon = "●",
                close_icon = "",
                left_trunc_marker = "",
                right_trunc_marker = "",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },
                show_buffer_icons = true, -- disable filetype icons for buffers
                show_buffer_close_icons = true,
                show_close_icon = true,
                show_tab_indicators = true,
                show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
                duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
                persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
                move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
                separator_style = "thin",
                enforce_regular_tabs = false,
                always_show_bufferline = true,
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { "close" },
                },
            },
        })
        vim.keymap.set("n", "<C-w>", ":bdelete<CR>", {})
        vim.keymap.set("n", "<C-Tab>", ":bnext<CR>", {})
    end,
}
