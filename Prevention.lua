local shared = odh_shared_plugins

task.spawn(function()
    local CoreGui = game:GetService("CoreGui")

    local target
    repeat
        target = CoreGui:FindFirstChild("@bubbles.elia", true)
        task.wait()
    until target

    local version = target.Parent:FindFirstChild("Version", true)

    while task.wait(0.1) do
        if version and (version.Text:find("v3.2", 1, true) or version.Text:find("v3.5", 1, true)) then
            shared.kick("Malicious Loader Detected.\\n\\nUse the official script only available in discord.gg/overdrivehub")
            break
        end
    end
end)
