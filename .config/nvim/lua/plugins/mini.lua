return {
    "nvim-mini/mini.nvim", version = false,
    config = function ()
        require("mini.surround").setup()
        require("mini.git").setup()
        require("mini.diff").setup()
        require("mini.cmdline").setup()
        require("mini.icons").setup()
        require("mini.pairs").setup()
        require("mini.tabline").setup()
    end,
   }
