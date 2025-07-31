return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local theme = require("alpha.themes.theta")
        local dashboard = require("alpha.themes.dashboard")
        local themeconfig = theme.config

        local header_art = {
            type = "text",
            val = {
                "　　　 　　/＾>》, -―‐‐＜＾}",
                "　　　 　./:::/,≠´::::::ヽ.",
                "　　　　/::::〃::::／}::丿ハ",
                "　　　./:::::i{l|／　ﾉ／ }::}",
                "　　 /:::::::瓜イ＞　´＜ ,:ﾉ",
                "　 ./::::::|ﾉﾍ.{､　(_ﾌ_ノﾉイ＿",
                "　 |:::::::|／}｀ｽ /          /",
                ".　|::::::|(_:::つ/          /　neovim!",
                ".￣￣￣￣￣￣￣＼/＿＿＿＿＿/￣￣￣￣￣,",
            },
            opts = {
                position = "center",
            },
        }

        local buttons = {
            type = "group",
            val = {
                { type = "text",    val = "Menu", opts = { hl = "SpecialComment", position = "center" } },
                { type = "padding", val = 1 },
                dashboard.button("e", "  New file", "<cmd>ene<CR>"),
                dashboard.button(
                    "f",
                    "󰱼  Find Files (Current Directory)",
                    "<cmd>Telescope find_files search_dirs={pwd}<CR>"
                ),
                dashboard.button(
                    "t",
                    "󰊄  Find Text  (Current Directory)",
                    "<cmd>Telescope live_grep search_dirs={pwd}<CR>"
                ),
                dashboard.button("s", "  Plugins Settings", "<cmd>edit $MYVIMRC | set acd <CR>"),
                dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
            },
            position = "center",
        }

        themeconfig.layout[2] = header_art
        themeconfig.layout[6] = buttons
        alpha.setup(themeconfig)
    end,
}
