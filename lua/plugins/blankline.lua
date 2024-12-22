return {
    'lukas-reineke/indent-blankline.nvim',
    config = function()   
        require("ibl").setup({
            enabled = true,
            indent = { char = "│" },
            -- indent = { char = "|" },
            scope = {
                enabled = true,
                show_start = false,
                show_end = false,
                injected_languages = true}
        })
    end
}
