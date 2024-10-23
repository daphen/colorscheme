local options = require("rose-pine.config").options
local variants = {
	-- default/main = {
	-- 	_nc = "#16141f",
	-- 	base = "#191724",
	-- 	surface = "#1f1d2e",
	-- 	overlay = "#26233a",
	-- 	muted = "#6e6a86",
	-- 	subtle = "#908caa",
	-- 	text = "#e0def4",
	-- 	love = "#eb6f92",
	-- 	gold = "#f6c177",
	-- 	rose = "#ebbcba",
	-- 	pine = "#31748f",
	-- 	foam = "#9ccfd8",
	-- 	iris = "#c4a7e7",
	-- 	highlight_low = "#21202e",
	-- 	highlight_med = "#403d52",
	-- 	highlight_high = "#524f67",
	-- 	none = "NONE",
	-- },
	--
	-- #8FB28C	#90C3C8
	-- #6A8F77	#83BACD
	-- #77A482	#8CB6C1
	-- #94B49F	#A7D3DF
	-- #738B71	#5F9CA6
	-- #86B593	#91CADC
	--
	-- 	1.	Pine: #7FA8A0 and Foam: #8FB8B0
	-- ▪	A slightly lighter foam with a hint of blue.
	-- 2.	Pine: #7FA8A0 and Foam: #8AB0A8
	-- ▪	A balanced mix of green and blue.
	-- 3.	Pine: #7FA8A0 and Foam: #95C2B5
	-- ▪	A bit more brightness in the foam.
	-- 4.	Pine: #7FA8A0 and Foam: #84B0A5
	-- ▪	A subtle shift towards green.
	-- 5.	Pine: #7FA8A0 and Foam: #88B8AC
	-- ▪	A harmonious blend with a touch of teal.
	-- 6.	Pine: #7FA8A0 and Foam: #92C0B8
	-- ▪	A brighter foam with a blue-green balance.
	-- 7.	Pine: #7FA8A0 and Foam: #86B2A8
	-- ▪	Slightly muted for a softer look.
	-- 8.	Pine: #7FA8A0 and Foam: #8CBEB0
	-- ▪	A gentle green hue with a cohesive feel.
	-- 9.	Pine: #7FA8A0 and Foam: #8FBFB5
	-- ▪	A fresh, light look with a hint of green.
	-- 10.	Pine: #7FA8A0 and Foam: #89B5A9
	-- ▪	A subtle difference with a cohesive tone.

	main = {
		_nc = "#16141f",
		base = "#262626",
		surface = "#262626",
		overlay = "#2d2b35",
		muted = "#FFFFFF",
		subtle = "#B5B9C2",
		text = "#DDDDED",
		love = "#D09D8A",
		gold = "#D6B9A9",
		rose = "#D9AE93",
		pine = "#fe5775",
		foam = "#7FA8A0",
		iris = "#CE9079",
		highlight_low = "#21202e",
		highlight_med = "#403d52",
		highlight_high = "#524f67",
		none = "NONE",
	},

	--GOLD STANDARD!!
	-- main = {
	-- 	_nc = "#16141f",
	-- 	base = "#161616",
	-- 	surface = "#161616",
	-- 	overlay = "#2d2b35",
	-- 	muted = "#FFFFFF",
	-- 	subtle = "#908caa",
	-- 	text = "#DDDDED",
	-- 	love = "#fe5775",
	-- 	gold = "#FFAA00",
	-- 	rose = "#fe5775",
	-- 	pine = "#7F93A4",
	-- 	foam = "#C2E8E1",
	-- 	iris = "#8BC1D1",
	-- 	highlight_low = "#21202e",
	-- 	highlight_med = "#403d52",
	-- 	highlight_high = "#524f67",
	-- 	none = "NONE",
	-- },
	-- very nice below
	-- main = {
	-- 	_nc = "#16141f",
	-- 	base = "#161616",
	-- 	surface = "#161616",
	-- 	overlay = "#2d2b35",
	-- 	muted = "#FFFFFF",
	-- 	subtle = "#908caa",
	-- 	text = "#DDDDED",
	-- 	love = "#fe5775",
	-- 	gold = "#FF9F00",
	-- 	rose = "#fe5775",
	-- 	pine = "#7F93A4",
	-- 	foam = "#c2fdeb",
	-- 	iris = "#a4d8e1",
	-- 	highlight_low = "#21202e",
	-- 	highlight_med = "#403d52",
	-- 	highlight_high = "#524f67",
	-- 	none = "NONE",
	-- },
	moon = {
		_nc = "#1f1d30",
		base = "#232136",
		surface = "#2a273f",
		overlay = "#393552",
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#f6c177",
		rose = "#ea9a97",
		pine = "#3e8fb0",
		foam = "#d7f9f8",
		iris = "#c4a7e7",
		highlight_low = "#2a283e",
		highlight_med = "#44415a",
		highlight_high = "#56526e",
		none = "NONE",
	},
	dawn = {
		_nc = "#f8f0e7",
		base = "#faf4ed",
		surface = "#fffaf3",
		overlay = "#f2e9e1",
		muted = "#9893a5",
		subtle = "#797593",
		text = "#575279",
		love = "#b4637a",
		gold = "#ea9d34",
		rose = "#d7827e",
		pine = "#286983",
		foam = "#56949f",
		iris = "#907aa9",
		highlight_low = "#f4ede8",
		highlight_med = "#dfdad9",
		highlight_high = "#cecacd",
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
