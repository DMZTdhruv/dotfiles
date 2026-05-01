require("config.lazy");
if vim.g.vscode then
    vim.opt.clipboard = "unnamedplus"
    vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
            local text = table.concat(vim.v.event.regcontents, "\n")
            vim.fn.system("wl-copy", text)
        end,
    })

    vim.g.mapleader = " "

    vim.keymap.set("n", "<leader>sr", function()
        vim.fn.VSCodeNotify("workbench.action.splitEditorRight")
    end, { silent = true })

    vim.keymap.set("n", "<leader>ss", function()
        vim.fn.VSCodeNotify("workbench.action.splitEditorDown")
    end, { silent = true })
    
    vim.keymap.set("n", "<leader><leader>", function()
        vim.fn.VSCodeNotify("workbench.action.quickOpen")
    end, { silent = true })

end
