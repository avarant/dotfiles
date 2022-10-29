-- set colorscheme to nightfly with protected call
-- in case it isn't installed

-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- local status, _ = pcall(vim.cmd, "colorscheme codedark")
local status, _ = pcall(vim.cmd, "colorscheme vscode")

if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

-- local c = require("vscode.colors")
-- require("vscode").setup({
-- 	-- Enable transparent background
-- 	transparent = false,
--
-- 	-- Enable italic comment
-- 	italic_comments = true,
--
-- 	-- Disable nvim-tree background color
-- 	disable_nvimtree_bg = true,
--
-- 	-- Override colors (see ./lua/vscode/colors.lua)
-- 	color_overrides = {
-- 		vscLineNumber = "#FFFFFF",
-- 	},
--
-- 	-- Override highlight groups (see ./lua/vscode/theme.lua)
-- 	group_overrides = {
-- 		-- this supports the same val table as vim.api.nvim_set_hl
-- 		-- use colors from this colorscheme by requiring vscode.colors!
-- 		Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
-- 	},
-- })
