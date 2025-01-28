-- Hide preview pane by default
--require("hide-preview"):entry()


-- Enable full border
require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}


Header:children_add(function()
	return ui.Span(" 󰇥 CWD: "):fg("blue")
end, 500, Header.LEFT)