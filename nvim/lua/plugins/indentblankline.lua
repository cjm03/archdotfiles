return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
--   config = function()
--       require("ibl").setup()
--           opts = {
--               whitespace = { char = "." },
--           },
--       })
--   end
   opts = {
       indent = { char = "┃" },
   },
}
