local a = game:GetService("UserInputService")
local b = game:GetService("TweenService")
local c = game:GetService("HttpService")
local d = game:GetService("RunService")
local e = game:GetService("Players")
local f = game:GetService("Debris")
local g = e.LocalPlayer
local h = getsenv(g.PlayerGui.Client)
local i = workspace.CurrentCamera
local j = g:GetMouse()
local k = {}
local l = {Scrolling = false, options = {}}
function l:CreateUI()
    if not isfolder("onetap | v1") then
        makefolder("onetap | v1")
    end
    local m = Instance.new("ScreenGui")
    syn.protect_gui(m)
    m.Name = "onetap | v1"
    local n = Instance.new("Frame")
    n.Name = "main"
    n.Size = UDim2.new(0, 320, 0, 308)
    n.Position = UDim2.new(0.5, -160, 0.5, -154)
    n.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    n.BorderSizePixel = 0
    n.ZIndex = 0
    n.Parent = m
    local o = Instance.new("Frame")
    o.Name = "back"
    o.Size = UDim2.new(1, 10, 1, 10)
    o.Position = UDim2.new(0, -5, 0, -5)
    o.BackgroundTransparency = 0.6
    o.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    o.BorderSizePixel = 2
    o.BorderColor3 = Color3.fromRGB(54, 54, 54)
    o.ZIndex = 0
    o.Parent = n
    local p = Instance.new("TextButton")
    p.Name = "unlock"
    p.Size = UDim2.new(0, 0, 0, 0)
    p.Text = ""
    p.BackgroundTransparency = 1
    p.Modal = true
    p.Parent = n
    local q = Instance.new("Frame")
    q.Name = "sidebar"
    q.Size = UDim2.new(0, 80, 1, 0)
    q.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    q.BorderSizePixel = 0
    q.ZIndex = 3
    q.Parent = n
    local r = Instance.new("TextLabel")
    r.Name = "name"
    r.Text = "onetap | v1"
    r.TextColor3 = Color3.new(1, 1, 1)
    r.Size = UDim2.new(1, 0, 0, 20)
    r.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    r.BorderSizePixel = 0
    r.ZIndex = 3
    r.Font = Enum.Font.Code
    r.TextSize = 13
    r.Parent = q
    local s = Instance.new("Frame")
    s.Name = "cheatbuttons"
    s.Size = UDim2.new(1, 0, 1, -25)
    s.Position = UDim2.new(0, 0, 0, 25)
    s.BackgroundTransparency = 1
    s.Parent = q
    local t = Instance.new("UIListLayout")
    t.SortOrder = "LayoutOrder"
    t.Name = "cheatsorter"
    t.Padding = UDim.new(0, 4)
    t.Parent = s
    local u = Instance.new("Frame")
    u.Name = "cheattabs"
    u.Size = UDim2.new(0.75, 0, 1, 0)
    u.Position = UDim2.new(0.25, 0, 0, 0)
    u.BackgroundTransparency = 1
    s.ZIndex = 3
    u.Parent = n
    local v = Instance.new("ImageLabel")
    v.Name = "cursor"
    v.BackgroundTransparency = 1
    v.Size = UDim2.new(0, 17, 0, 17)
    v.Image = "http://www.roblox.com/asset/?id=518398610"
    v.ZIndex = 101
    v.Parent = m
    a.InputBegan:connect(
        function(w)
            if w.KeyCode == Enum.KeyCode.Insert then
                n.Visible = not n.Visible
            end
        end
    )
    spawn(
        function()
            d.RenderStepped:connect(
                function()
                    v.Visible = n.Visible
                    v.Position = UDim2.new(0, j.X, 0, j.Y)
                end
            )
        end
    )
    local x = {}
    function x:CreateTab(y)
        local z = Instance.new("TextButton")
        z.Name = y .. "Tab"
        z.Size = UDim2.new(1, 0, 0, 15)
        z.BackgroundTransparency = 1
        z.TextColor3 = Color3.new(1, 1, 1)
        z.Font = Enum.Font.Code
        z.TextSize = 13
        z.ZIndex = 3
        z.Text = y
        z.Parent = s
        local A = Instance.new("Frame")
        A.Name = y .. "tab"
        A.Size = UDim2.new(0.95, 0, 0.975, 0)
        A.Position = UDim2.new(0.05, 0, 0.025, 0)
        A.BackgroundTransparency = 1
        A.Visible = false
        A.Parent = u
        z.MouseButton1Click:connect(
            function()
                for B, C in next, u:GetChildren() do
                    C.Visible = false
                end
                A.Visible = true
            end
        )
        local D = Instance.new("UIListLayout")
        D.SortOrder = "LayoutOrder"
        D.Padding = UDim.new(0, 5)
        D.Parent = A
        local E = {}
        function E:CreateToggle(y, F)
            local G = false
            k[y] = false
            local H = Instance.new("TextButton")
            H.Name = y .. "togglebutton"
            H.Size = UDim2.new(0, 0, 0, 12)
            H.BackgroundTransparency = 1
            H.Text = ""
            H.Parent = A
            local I = Instance.new("Frame")
            I.Size = UDim2.new(0, 12, 0, 12)
            I.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            I.BorderSizePixel = 1
            I.BorderColor3 = Color3.new()
            I.Parent = H
            local J = Instance.new("TextLabel")
            J.Text = y
            J.BackgroundTransparency = 1
            J.Font = Enum.Font.Code
            J.TextColor3 = Color3.new(1, 1, 1)
            J.TextSize = 12
            J.Position = UDim2.new(1, 10, 0, 0)
            J.Parent = I
            J.Size = UDim2.new(0, J.TextBounds.X, 1, 0)
            H.Size = UDim2.new(0, 22 + J.TextBounds.X, 0, 12)
            local function K()
                G = not G
                F(G)
                I.BackgroundColor3 = G and Color3.fromRGB(120, 18, 20) or Color3.fromRGB(17, 17, 17)
            end
            H.MouseButton1Click:connect(K)
            local L = {toggleFunction = K, Name = y, Type = "Toggle"}
            l.options[y] = L
        end
        function E:CreateSlider(y, M, N)
            local O = false
            local P = false
            local Q = 0
            k[y] = 0
            local R = Instance.new("TextButton")
            R.Name = y
            R.Size = UDim2.new(0, 100, 0, 12)
            R.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            R.BorderColor3 = Color3.new()
            R.AutoButtonColor = false
            R.Text = ""
            R.Parent = A
            local S = Instance.new("Frame")
            S.Name = "fill"
            S.Size = UDim2.new(0, 1, 1, 0)
            S.BackgroundColor3 = Color3.fromRGB(120, 18, 20)
            S.BorderSizePixel = 0
            S.Parent = R
            local T = Instance.new("TextLabel")
            T.Text = y
            T.BackgroundTransparency = 1
            T.Font = Enum.Font.Code
            T.TextColor3 = Color3.new(1, 1, 1)
            T.TextSize = 12
            T.Position = UDim2.new(1, 10, 0, 0)
            T.Parent = R
            T.Size = UDim2.new(0, T.TextBounds.X, 1, 0)
            local U = Instance.new("TextLabel")
            U.Text = 0
            U.BackgroundTransparency = 1
            U.Font = Enum.Font.Code
            U.TextColor3 = Color3.new(0.7, 0.7, 0.7)
            U.TextSize = 13
            U.Position = UDim2.new(0.5, 0, 0.5, 0)
            U.Size = UDim2.new(0, 0, 0, 0)
            U.Visible = false
            U.Parent = R
            local function V(W)
                if W ~= 0 then
                    S:TweenSize(UDim2.new(W / M, 0, 0, 12), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.05)
                else
                    S:TweenSize(UDim2.new(0, 1, 0, 12), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.05)
                end
                U.Text = W
                N(W)
            end
            local function X()
                if P or l.scrolling then
                    return
                end
                while a:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    d.RenderStepped:Wait()
                    l.scrolling = true
                    U.Visible = true
                    P = true
                    local W = j.X - R.AbsolutePosition.X
                    W = W / 100 * M
                    if W < 0 then
                        W = 0
                    end
                    if W > M then
                        W = M
                    end
                    V(math.floor(W))
                end
                if P and not O then
                    U.Visible = false
                end
                P = false
                l.scrolling = false
            end
            R.MouseEnter:connect(
                function()
                    if P or O then
                        return
                    end
                    O = true
                    U.Visible = true
                    while O do
                        wait()
                        X()
                    end
                end
            )
            R.MouseLeave:connect(
                function()
                    O = false
                    U.Visible = false
                end
            )
            local Y = {changeValue = V, Name = y, Type = "Slider"}
            l.options[y] = Y
        end
        function E:CreateDropdown(y, Z, _)
            local a0 = Z
            k[y] = ""
            local a1 = Instance.new("TextButton")
            a1.Name = y
            a1.Size = UDim2.new(0, 100, 0, 12)
            a1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            a1.BorderColor3 = Color3.new()
            a1.AutoButtonColor = false
            a1.Text = "none"
            a1.Font = Enum.Font.Code
            a1.TextColor3 = Color3.new(1, 1, 1)
            a1.TextWrapped = true
            a1.TextSize = 11
            a1.ZIndex = 99
            a1.Parent = A
            local a2 = Instance.new("Frame")
            a2.Name = "list"
            a2.Size = UDim2.new(1, 0, 0, 0)
            a2.Position = UDim2.new(0, 0, 1, 1)
            a2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            a2.BorderColor3 = Color3.new()
            a2.BorderSizePixel = #Z >= 1 and 1 or 0
            a2.ZIndex = 99
            a2.Visible = false
            a2.Parent = a1
            local a3 = Instance.new("UIListLayout")
            a3.SortOrder = "LayoutOrder"
            a3.Padding = UDim.new(0, 1)
            a3.Parent = a2
            local a4 = Instance.new("TextLabel")
            a4.Text = y
            a4.BackgroundTransparency = 1
            a4.Font = Enum.Font.Code
            a4.TextColor3 = Color3.new(1, 1, 1)
            a4.TextSize = 12
            a4.Position = UDim2.new(1, 10, 0, 0)
            a4.Parent = a1
            a4.Size = UDim2.new(0, a4.TextBounds.X, 1, 0)
            local function V(W)
                local G = false
                for B, C in next, a0 do
                    if a0[B] == W then
                        G = true
                    end
                end
                if G then
                    local a5, a6 = string.gsub(W, "onetap | v1\\", "")
                    a1.Text = a5
                    _(W)
                end
            end
            local function a7(W)
                for B, C in next, a2:GetChildren() do
                    if C:IsA("TextButton") then
                        C:Destroy()
                    end
                end
                a2.BorderSizePixel = #W >= 1 and 1 or 0
                a2.Size = UDim2.new(1, 0, 0, #W * 13)
                for B, C in next, W do
                    local a5, a6 = string.gsub(C, "onetap | v1\\", "")
                    local a8 = Instance.new("TextButton")
                    a8.Name = C
                    a8.Size = UDim2.new(0, 100, 0, 12)
                    a8.BackgroundTransparency = 1
                    a8.Font = Enum.Font.Code
                    a8.TextColor3 = Color3.new(1, 1, 1)
                    a8.TextSize = 11
                    a8.AutoButtonColor = false
                    a8.Text = a5
                    a8.TextWrapped = true
                    a8.Parent = a2
                    a8.ZIndex = 100
                    a8.MouseButton1Click:connect(
                        function()
                            a2.Visible = false
                            V(C)
                        end
                    )
                end
                a0 = W
            end
            a1.MouseButton1Click:connect(
                function()
                    a2.Visible = not a2.Visible
                end
            )
            a7(Z)
            local a9 = {changeValue = V, updateList = a7, Name = y, Type = "Dropdown"}
            l.options[y] = a9
        end
        function E:CreateKeybind(y, aa, _)
            local G = false
            k[y] = aa
            local ab = Instance.new("TextButton")
            ab.Name = y
            ab.Size = UDim2.new(0, 100, 0, 12)
            ab.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ab.BorderColor3 = Color3.new()
            ab.AutoButtonColor = false
            ab.Text = "none"
            ab.Font = Enum.Font.Code
            ab.TextColor3 = Color3.new(1, 1, 1)
            ab.TextSize = 11
            ab.ZIndex = 0
            ab.Parent = A
            local ac = Instance.new("TextLabel")
            ac.Text = y
            ac.BackgroundTransparency = 1
            ac.Font = Enum.Font.Code
            ac.TextColor3 = Color3.new(1, 1, 1)
            ac.TextSize = 12
            ac.Position = UDim2.new(1, 10, 0, 0)
            ac.Parent = ab
            ac.Size = UDim2.new(0, ac.TextBounds.X, 1, 0)
            local function ad(w)
                return string.sub(tostring(w), string.find(tostring(w), "UserInputType") and 20 or 14)
            end
            local function V(ae)
                ab.Text = ad(ae)
                _(ae)
            end
            ab.MouseButton1Click:connect(
                function()
                    G = true
                    ab.Text = "..."
                end
            )
            a.InputBegan:connect(
                function(w)
                    if G then
                        G = false
                        V(w.KeyCode == Enum.KeyCode.Unknown and w.UserInputType or w.KeyCode)
                    end
                end
            )
            V(aa)
            local af = {changeValue = V, Name = y, Type = "Keybind"}
            l.options[y] = af
        end
        function E:Textbox(y, aa, _)
            local G = false
            k[y] = aa
            local ag = Instance.new("TextBox")
            ag.Name = y
            ag.Size = UDim2.new(0, 100, 0, 12)
            ag.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ag.BorderColor3 = Color3.new()
            ag.Text = ""
            ag.PlaceholderColor3 = Color3.new(0.7, 0.7, 0.7)
            ag.PlaceholderText = "..."
            ag.Font = Enum.Font.Code
            ag.TextColor3 = Color3.new(1, 1, 1)
            ag.TextSize = 11
            ag.ZIndex = 0
            ag.ClearTextOnFocus = false
            ag.TextWrapped = true
            ag.Parent = A
            local ah = Instance.new("TextLabel")
            ah.Text = y
            ah.BackgroundTransparency = 1
            ah.Font = Enum.Font.Code
            ah.TextColor3 = Color3.new(1, 1, 1)
            ah.TextSize = 12
            ah.Position = UDim2.new(1, 10, 0, 0)
            ah.Parent = ag
            ah.Size = UDim2.new(0, ah.TextBounds.X, 1, 0)
            return ag
        end
        function E:CreateButton(y, ai)
            local aj = Instance.new("TextButton")
            aj.Name = y
            aj.Size = UDim2.new(0, 100, 0, 12)
            aj.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            aj.BorderColor3 = Color3.new()
            aj.AutoButtonColor = false
            aj.Text = y
            aj.Font = Enum.Font.Code
            aj.TextColor3 = Color3.new(0.7, 0.7, 0.7)
            aj.TextSize = 11
            aj.ZIndex = 0
            aj.Parent = A
            aj.MouseButton1Click:connect(ai)
        end
        return E
    end
    m.Parent = game.CoreGui
    return x
end
function getNearest()
    local ak = math.huge
    local al = nil
    local am = nil
    for B, C in next, e:GetChildren() do
        if C ~= g and C.Team ~= g and C.Character and C.Character.PrimaryPart then
            local am, an = i:WorldToScreenPoint(C.Character["HumanoidRootPart"].Position)
            if an then
                local ao = (Vector2.new(j.X, j.Y) - Vector2.new(am.X, am.Y)).magnitude
                if ao < ak then
                    al = C
                    ak = ao
                end
            end
        end
    end
    return al, ak
end
local ap = Instance.new("Folder", game.CoreGui)
function chams(aq)
    pcall(
        function()
            if aq.Character then
                for B, C in next, aq.Character:GetChildren() do
                    if C:IsA "BasePart" and C.Name ~= "HumanoidRootPart" then
                        local ar = Instance.new("BoxHandleAdornment")
                        ar.Size = C.Size + Vector3.new(0.1, 0.1, 0.1)
                        ar.Transparency = k["Chams Transparency"] / 100
                        ar.ZIndex = 0
                        ar.AlwaysOnTop = true
                        ar.Visible = true
                        ar.Parent = ap
                        ar.Adornee = C
                        ar.Color3 = Color3.fromRGB(200, 90, 120)
                        if aq.Character:FindFirstChild("HumanoidRootPart") then
                            aq.Character.HumanoidRootPart.AncestryChanged:connect(
                                function()
                                    ar:Destroy()
                                end
                            )
                        end
                    end
                end
            end
        end
    )
end
local as = nil
local at = false
local au = getrawmetatable(game)
setreadonly(au, false)
local av = au.__namecall
local aw = au.__newindex
au.__newindex =
    newcclosure(
    function(self, ax, W)
        if ax == "WalkSpeed" and at then
            return
        end
        return aw(self, ax, W)
    end
)
au.__namecall =
    newcclosure(
    function(self, ...)
        local ay = getnamecallmethod()
        local az = {...}
        if string.find(ay, "IgnoreList") then
            if as and k["Silent aim"] then
                az[1] =
                    Ray.new(
                    workspace.CurrentCamera.CFrame.Position,
                    (as.CFrame.p +
                        Vector3.new(0, (workspace.CurrentCamera.CFrame.Position - as.CFrame.p).Magnitude / 500, 0) -
                        workspace.CurrentCamera.CFrame.Position).unit * 500
                )
            end
        end
        if tostring(ay) == "InvokeServer" and self.Name == "Hugh" then
            return wait(9e9)
        elseif tostring(ay) == "FireServer" and string.find(tostring(self.Name), "{") then
            return wait(9e9)
        end
        return av(self, unpack(az))
    end
)
local aA = l:CreateUI()
-- local aB = aA:CreateTab("aimbot")
local aC = aA:CreateTab("visuals")
local aD = aA:CreateTab("movement")
local aE = aA:CreateTab("other")
local aF = aA:CreateTab("config")
silentAim =
    aB:CreateToggle(
    "Silent aim",
    function(K)
        k["Silent aim"] = K
        if K then
            spawn(
                function()
                    d:BindToRenderStep(
                        "silentAim",
                        1,
                        function()
                            as = nil
                            if
                                a:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and g.Character and
                                    g.Character.PrimaryPart
                             then
                                local aG, aH = getNearest()
                                if
                                    aH <= k["Aimbot FOV"] and aG.Team ~= g.Team and aG.Character and
                                        aG.Character.PrimaryPart and
                                        aG.Character:FindFirstChild("Head")
                                 then
                                    local aI = 100 - k["Hit chance"] <= math.random(0, 99)
                                    if aI then
                                        as = k["Body aim"] and aG.Character.PrimaryPart or aG.Character.Head
                                    end
                                end
                            end
                        end
                    )
                end
            )
        else
            d:UnbindFromRenderStep("silentAim")
        end
    end
)
silentAim =
    aB:CreateToggle(
    "Body aim",
    function(K)
        k["Body aim"] = K
    end
)
hitChange =
    aB:CreateSlider(
    "Hit chance",
    100,
    function(W)
        k["Hit chance"] = W
    end
)
aimbotFOV =
    aB:CreateSlider(
    "Aimbot FOV",
    200,
    function(W)
        k["Aimbot FOV"] = W
    end
)
local aJ = h.speedupdate
bunnyHop =
    aD:CreateToggle(
    "Bunny hop",
    function(K)
        k["Bunny hop"] = K
        if K then
            spawn(
                function()
                    d:BindToRenderStep(
                        "bunnyHop",
                        1,
                        function()
                            if
                                a:IsKeyDown(Enum.KeyCode.Space) and g.Character and
                                    g.Character:FindFirstChild("Humanoid")
                             then
                                at = false
                                g.Character.Humanoid.WalkSpeed = 18.5
                                at = true
                                g.Character.Humanoid.Jump = true
                                h.speedupdate = function()
                                end
                            else
                                at = false
                                h.speedupdate = aJ
                            end
                        end
                    )
                end
            )
        else
            h.speedupdate = aJ
            d:UnbindFromRenderStep("bunnyHop")
        end
    end
)
local aK = {}
local aL = workspace.CurrentCamera.ViewportSize.Y - 100
local aM = aL
local aN = 0
local aO = {
    Color3.fromRGB(85, 205, 252),
    Color3.fromRGB(85, 205, 252),
    Color3.fromRGB(247, 168, 184),
    Color3.fromRGB(247, 168, 184),
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(247, 168, 184),
    Color3.fromRGB(247, 168, 184)
}
local aP = Drawing.new("Text")
aP.Text = ""
aP.Center = true
aP.Outline = true
aP.Color = Color3.new(1, 1, 1)
aP.Font = 3
aP.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y - 90)
aP.Size = 20
aP.Visible = false
local aQ = Drawing.new("Text")
aQ.Text = "EB"
aQ.Center = true
aQ.Outline = true
aQ.Color = Color3.new(0.9, 0.2, 0.2)
aQ.Font = 3
aQ.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y - 70)
aQ.Size = 18
aQ.Visible = false
local aR = Drawing.new("Text")
aR.Text = "JB"
aR.Center = true
aR.Outline = true
aR.Color = Color3.new(1, 1, 1)
aR.Font = 3
aR.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y - 50)
aR.Size = 18
aR.Visible = false
local aS = {
    Edgebug = {
        Keybind = "Enum.KeyCode.E",
        XZModifier = 2.4,
        Debounce = false,
        NoDamage = false,
        YModifier = 0.2,
        Enabled = false,
        Held = false
    },
    Edgejump = {Held = false, Enabled = false, Debounce = false, Keybind = "Enum.KeyCode.LeftAlt"},
    VelocityGraph = {Enabled = false, SmoothMode = false, Color = "Normal", TransCount = 1, DebounceCount = 0},
    JumpBug = {Held = false, Enabled = false, Keybind = "Enum.KeyCode.T"},
    M9 = {Enabled = false}
}
EdgebugToggle =
    aD:CreateToggle(
    "Edgebug",
    function(K)
        k["Edgebug"] = K
        aS.Edgebug.Enabled = not aS.Edgebug.Enabled
        aS.Edgebug.Held = false
        aQ.Visible = false
    end
)
EdgejumpToggle =
    aD:CreateToggle(
    "Edgejump",
    function(K)
        k["Edgejump"] = K
        aS.Edgejump.Enabled = not aS.Edgejump.Enabled
        aS.Edgejump.Held = false
    end
)
EdgejumpToggle =
    aD:CreateToggle(
    "Jumpbug",
    function(K)
        k["Jumpbug"] = K
        aS.JumpBug.Enabled = not aS.JumpBug.Enabled
        aS.JumpBug.Held = false
    end
)
VelocityGraphToggle =
    aD:CreateToggle(
    "Velocity Graph",
    function(K)
        k["Velocity Graph"] = K
        aS.VelocityGraph.Enabled = K
        aP.Visible = K
        spawn(
            function()
                while aS.VelocityGraph.Enabled do
                    if aS.VelocityGraph.SmoothMode then
                        d.RenderStepped:Wait()
                    else
                        d.RenderStepped:Wait()
                        d.RenderStepped:Wait()
                    end
                    aL = workspace.CurrentCamera.ViewportSize.Y - 100
                    aQ.Position =
                        Vector2.new(
                        workspace.CurrentCamera.ViewportSize.X / 2,
                        workspace.CurrentCamera.ViewportSize.Y - 70
                    )
                    aR.Position =
                        Vector2.new(
                        workspace.CurrentCamera.ViewportSize.X / 2,
                        workspace.CurrentCamera.ViewportSize.Y - 50
                    )
                    aP.Position =
                        Vector2.new(
                        workspace.CurrentCamera.ViewportSize.X / 2,
                        workspace.CurrentCamera.ViewportSize.Y - 90
                    )
                    if g.Character and g.Character.PrimaryPart then
                        if #aK >= 1 then
                            local M = 100
                            if #aK >= M then
                                aK[1]:Remove()
                                local aT = 0
                                for B = 2, 6 do
                                    aT = aT + 1.8
                                    aK[B].Transparency = 1 - aT / 10
                                end
                                aK[2].Transparency = 0.1
                                aK[3].Transparency = 0.2
                                aK[4].Transparency = 0.4
                                aK[5].Transparency = 0.6
                                aK[6].Transparency = 0.8
                                table.remove(aK, 1)
                            end
                            for B, C in ipairs(aK) do
                                C.To = C.To - Vector2.new(2, 0)
                                C.From = C.From - Vector2.new(2, 0)
                            end
                        end
                        local aU = (g.Character.PrimaryPart.Velocity * Vector3.new(1, 0, 1)).magnitude
                        local aV = aU * 14.85
                        if aV > 300 then
                            aV = 300
                        end
                        aP.Color = Color3.new(1, 1, 1)
                        if math.floor(aU) < aN then
                            aP.Color = Color3.new(1, 0.5, 0.3)
                        end
                        if math.floor(aU) > aN then
                            aP.Color = Color3.new(0.5, 1, 0.3)
                        end
                        if math.floor(aV) == 300 then
                            aP.Color = Color3.new(1, 0.3, 0.1)
                        end
                        local aW = Color3.new(1, 1, 1)
                        if aS.VelocityGraph.Color == "Rainbow" then
                            aW = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                        elseif aS.VelocityGraph.Color == "Trans" then
                            aW = aO[aS.VelocityGraph.TransCount]
                            aS.VelocityGraph.DebounceCount =
                                aS.VelocityGraph.DebounceCount == 5 and 0 or aS.VelocityGraph.DebounceCount + 1
                            if aS.VelocityGraph.DebounceCount == 0 then
                                aS.VelocityGraph.TransCount =
                                    aS.VelocityGraph.TransCount == #aO and 1 or aS.VelocityGraph.TransCount + 1
                            end
                        end
                        local aX = Drawing.new("Line")
                        table.insert(aK, aX)
                        aX.Color = aW
                        aX.Thickness = 2
                        aX.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2 + 98, aM)
                        aX.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2 + 100, aL - aV / 6.5)
                        aX.Transparency = 0
                        aX.Visible = true
                        if #aK >= 8 then
                            aK[#aK - 1].Transparency = aK[#aK - 1].Transparency + 0.2
                            aK[#aK - 2].Transparency = aK[#aK - 2].Transparency + 0.2
                            aK[#aK - 3].Transparency = aK[#aK - 3].Transparency + 0.2
                            aK[#aK - 4].Transparency = aK[#aK - 4].Transparency + 0.2
                            aK[#aK - 5].Transparency = aK[#aK - 5].Transparency + 0.2
                            aK[#aK - 7].Transparency = 1
                        end
                        aP.Text = tostring(math.floor(aV))
                        aM = aL - aV / 6.5
                        aN = math.floor(aU)
                    end
                end
            end
        )
        for B, C in next, aK do
            C:Remove()
        end
        aK = {}
    end
)
SmoothVelocityGraph =
    aD:CreateToggle(
    "Smoother Graph",
    function(K)
        k["Smoother Graph"] = K
        aS.VelocityGraph.SmoothMode = K
    end
)
SmoothVelocityGraph =
    aD:CreateDropdown(
    "Graph Color",
    {"Rainbow", "Trans", "Normal"},
    function(K)
        k["Graph Color"] = K
        aS.VelocityGraph.TransCount = 1
        aS.VelocityGraph.Color = K
    end
)
EdgebugKeybind =
    aD:CreateKeybind(
    "Edgejump Keybind",
    Enum.KeyCode.LeftAlt,
    function(w)
        k["Edgejump Keybind"] = tostring(w)
        aS.Edgejump.Keybind = tostring(w)
        aS.Edgejump.Held = false
    end
)
EdgebugKeybind =
    aD:CreateKeybind(
    "Edgebug Keybind",
    Enum.KeyCode.E,
    function(w)
        k["Edgebug Keybind"] = tostring(w)
        aS.Edgejump.Keybind = tostring(w)
        aS.Edgejump.Held = false
    end
)
JumpbugKeybind =
    aD:CreateKeybind(
    "Jumpbug Keybind",
    Enum.KeyCode.T,
    function(w)
        k["Jumpbug Keybind"] = tostring(w)
        aS.JumpBug.Keybind = tostring(w)
        aS.JumpBug.Held = false
    end
)
local au = getrawmetatable(game)
setreadonly(au, false)
local av = au.__namecall
au.__namecall =
    newcclosure(
    function(self, ...)
        local ay = getnamecallmethod()
        local az = {...}
        if self.Name == "FallDamage" and aS.Edgebug.NoDamage then
            az[2] = 0
        end
        return av(self, unpack(az))
    end
)
a.InputBegan:connect(
    function(w)
        local aY = w.KeyCode == Enum.KeyCode.Unknown and tostring(w.UserInputType) or tostring(w.KeyCode)
        if aY == k["Edgebug Keybind"] and aS.Edgebug.Enabled then
            aQ.Visible = true
        end
        if aY == aS.JumpBug.Keybind and aS.JumpBug.Enabled then
            aR.Visible = true
            aS.JumpBug.Held = true
        end
        if aY == k["Edgebug Keybind"] and aS.Edgebug.Enabled then
            aS.Edgebug.Held = true
            spawn(
                function()
                    while aS.Edgebug.Held do
                        d.RenderStepped:Wait()
                        if g.Character and g.Character:FindFirstChild("Humanoid") and g.Character.PrimaryPart then
                            local aZ =
                                Ray.new(
                                g.Character.HumanoidRootPart.Position,
                                (g.Character.HumanoidRootPart.Position - g.Character.HumanoidRootPart.Position -
                                    Vector3.new(0, 1, 0)).unit * 500
                            )
                            local a_, b0, b1 = workspace:FindPartOnRayWithIgnoreList(aZ, {g.Character})
                            if
                                g.Character.HumanoidRootPart.Position.Y - 2.99 <= b0.Y + 2.5 and
                                    g.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and
                                    g.Character.HumanoidRootPart.Velocity.Y <= 0 and
                                    not aS.Edgebug.Debounce
                             then
                                aS.Edgebug.Debounce = true
                                aS.Edgebug.NoDamage = true
                                repeat
                                    wait()
                                until g.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall
                                if g.Character.HumanoidRootPart.Position.Y - 3.49 <= b0.Y + 2.5 then
                                    aQ.Color = Color3.new(0.2, 0.9, 0.2)
                                    wait()
                                    g.Character.HumanoidRootPart.Velocity =
                                        Vector3.new(
                                        g.Character.HumanoidRootPart.Velocity.X * aS.Edgebug.XZModifier,
                                        g.Character.HumanoidRootPart.Velocity.Y * aS.Edgebug.YModifier,
                                        g.Character.HumanoidRootPart.Velocity.Z * aS.Edgebug.XZModifier
                                    )
                                    local b2 = g.Character.HumanoidRootPart.Velocity
                                    pcall(
                                        function()
                                            for B = 1, 3 do
                                                wait()
                                                g.Character.HumanoidRootPart.Velocity = b2 - Vector3.new(0, 20, 0)
                                            end
                                        end
                                    )
                                end
                                wait(0.2)
                                aQ.Color = Color3.new(0.9, 0.2, 0.2)
                                wait(0.8)
                                aS.Edgebug.Debounce = false
                                aS.Edgebug.NoDamage = false
                            end
                        end
                    end
                end
            )
        end
        if aY == aS.Edgejump.Keybind and aS.Edgejump.Enabled then
            aS.Edgejump.Held = true
            while aS.Edgejump.Held do
                d.RenderStepped:Wait()
                if g.Character and g.Character:FindFirstChild("Humanoid") and not aS.Edgejump.Debounce then
                    if g.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                        return
                    end
                    if g.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                        wait(0.05)
                        if g.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                            aS.Edgejump.Debounce = true
                            wait(0.5)
                            aS.Edgejump.Debounce = false
                        end
                    end
                end
            end
        end
    end
)
a.InputEnded:connect(
    function(w)
        local aY = w.KeyCode == Enum.KeyCode.Unknown and tostring(w.UserInputType) or tostring(w.KeyCode)
        if aY == k["Edgebug Keybind"] and aS.Edgebug.Enabled then
            aQ.Visible = false
        end
        if aY == k["Edgebug Keybind"] then
            aS.Edgebug.Held = false
        end
        if aY == aS.Edgejump.Keybind then
            aS.Edgejump.Held = false
        end
        if aY == aS.JumpBug.Keybind then
            aR.Visible = false
            aS.JumpBug.Held = false
        end
    end
)
d.Stepped:connect(
    function()
        if g.Character and g.Character:FindFirstChild("Humanoid") then
            if aS.JumpBug.Enabled and aS.JumpBug.Held then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 23
            else
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 20
            end
        end
    end
)
chamsToggle =
    aC:CreateToggle(
    "Chams",
    function(K)
        if K ~= k["Chams"] then
            k["Chams"] = K
            if k["Chams"] then
                for B, C in next, e:GetPlayers() do
                    if C ~= g and C.Team ~= g.Team and C.Character and C.Character.PrimaryPart then
                        chams(C)
                    end
                end
            else
                ap:ClearAllChildren()
            end
        end
    end
)
M9Toggle =
    aC:CreateToggle(
    "M9 Bayonet",
    function(K)
        k["M9 Bayonet"] = K
        aS.M9.Enabled = K
        spawn(
            function()
                while aS.M9.Enabled do
                    d.RenderStepped:Wait()
                    pcall(
                        function()
                            if
                                g.Character and g.Character:FindFirstChild("EquippedTool") and
                                    game.ReplicatedStorage.Weapons:FindFirstChild(g.Character.EquippedTool.Value):FindFirstChild(
                                        "Melee"
                                    ) and
                                    workspace.Camera:FindFirstChild("Arms") and
                                    workspace.Camera.Arms:FindFirstChild("Handle2")
                             then
                                workspace.Camera.Arms.Handle.MeshId = "rbxassetid://5524010796"
                                workspace.Camera.Arms.Handle.TextureID = "rbxassetid://5521767392"
                            end
                        end
                    )
                end
            end
        )
    end
)
local b3 = Instance.new("ColorCorrectionEffect", game.Lighting)
Nightmode =
    aC:CreateToggle(
    "Nightmode",
    function(K)
        k["Nightmode"] = K
        if K then
            b3.Brightness = -0.15
            game.Lighting.Brightness = 0
        else
            b3.Brightness = 0
            game.Lighting.Brightness = 1
        end
    end
)
Fog =
    aC:CreateToggle(
    "Fog",
    function(K)
        k["Fog"] = K
    end
)
depth = Instance.new("DepthOfFieldEffect", game.Lighting)
depth.InFocusRadius = 50
depth.FarIntensity = 0.3
depthOfField =
    aC:CreateToggle(
    "Depth of field",
    function(b4)
        depth.Enabled = b4
    end
)
Skyboxes = {
    ["Purple Nebula"] = {
        ["SkyboxBk"] = "rbxassetid://159454299",
        ["SkyboxDn"] = "rbxassetid://159454296",
        ["SkyboxFt"] = "rbxassetid://159454293",
        ["SkyboxLf"] = "rbxassetid://159454286",
        ["SkyboxRt"] = "rbxassetid://159454300",
        ["SkyboxUp"] = "rbxassetid://159454288"
    },
    ["Night Sky"] = {
        ["SkyboxBk"] = "rbxassetid://12064107",
        ["SkyboxDn"] = "rbxassetid://12064152",
        ["SkyboxFt"] = "rbxassetid://12064121",
        ["SkyboxLf"] = "rbxassetid://12063984",
        ["SkyboxRt"] = "rbxassetid://12064115",
        ["SkyboxUp"] = "rbxassetid://12064131"
    },
    ["Pink Daylight"] = {
        ["SkyboxBk"] = "rbxassetid://271042516",
        ["SkyboxDn"] = "rbxassetid://271077243",
        ["SkyboxFt"] = "rbxassetid://271042556",
        ["SkyboxLf"] = "rbxassetid://271042310",
        ["SkyboxRt"] = "rbxassetid://271042467",
        ["SkyboxUp"] = "rbxassetid://271077958"
    }
}
local b5 = workspace.CurrentCamera
local b6 = Instance.new("SurfaceGui")
b6.CanvasSize = Vector2.new(200, 200)
b6.Name = "DropSurface"
local b7 = Instance.new("ImageLabel")
b7.BackgroundTransparency = 1
b7.ImageColor3 = Color3.new(121 / 255, 121 / 255, 121 / 255)
b7.Size = UDim2.new(0, 5, 0, 100)
b7.ImageTransparency = 0.75
b7.Image = "rbxassetid://221405600"
local b8 = Instance.new("Part")
b8.Transparency = 1
b8.Anchored = true
b8.CanCollide = false
b8.FormFactor = "Custom"
local b9 = Instance.new("SurfaceGui")
b9.CanvasSize = Vector2.new(200, 200)
b9.Face = "Top"
b9.Parent = b8
b9.Name = "DropleSurface"
local ba = Instance.new("ImageLabel", b9)
ba.Position = UDim2.new(0, 0, 0, 0)
ba.Size = UDim2.new(1, 0, 1, 0)
ba.BackgroundTransparency = 1
ba.Image = "rbxassetid://221657524"
ba.ImageColor3 = Color3.new(121 / 255, 121 / 255, 121 / 255)
ba.ImageTransparency = 0.75
ba.Name = "SplashImage"
local bb = 300
local bc = 900
local bd = {}
local be = {}
function randring(bf, bg)
    local bh = math.random() * math.pi * 2
    local bi = math.random() * (bg - bf) + bf
    return math.cos(bh) * bi, 0, math.sin(bh) * bi
end
function drople(b0)
    local bj = b8:Clone()
    bj.Parent = workspace.Debris
    local bk = math.random() * math.pi * 2
    table.insert(be, {part = bj, start = tick(), position = b0, label = bj.DropleSurface.SplashImage, angle = bk})
end
rainEnabled =
    aC:CreateToggle(
    "Rain",
    function(K)
        k["Rain"] = K
        bd = {}
        be = {}
        if not k["Rain"] then
            workspace.Debris:ClearAllChildren()
        end
        spawn(
            function()
                while k["Rain"] do
                    game["Run Service"].RenderStepped:wait()
                    if #bd < 150 then
                        local bl = Instance.new("Part", workspace.Debris)
                        local bm = math.random(1, 3) == 1 and 24 or 8
                        local bn, bo, bp, bq = 0, 75, 3, 8
                        if math.random(1, 3) == 1 then
                            bn, bo, bp, bq = 75, 200, 9, 24
                        end
                        bl.CanCollide = false
                        bl.Transparency = 0.5
                        bl.Anchored = true
                        bl.FormFactor = "Custom"
                        bl.Size = Vector3.new(bq, bq, 0.2)
                        bl.Transparency = 1
                        local br = b6:Clone()
                        br.Parent = bl
                        br.CanvasSize = Vector2.new(200, 200)
                        for B = 1, bp do
                            local bs = b7:Clone()
                            bs.Position = UDim2.new(0, math.random() * 195, 0, math.random() * 100)
                            bs.Parent = br
                        end
                        bl.Position =
                            Vector3.new(
                            b5.CFrame.p.X + math.random(-100, 0),
                            b5.CFrame.p.Y + 100,
                            b5.CFrame.p.Z + math.random(-100, 100)
                        )
                        table.insert(
                            bd,
                            {
                                part = bl,
                                x = 0,
                                y = math.random(),
                                z = 0,
                                stop = -1,
                                close = bn,
                                far = bo,
                                labels = bl.DropSurface:GetChildren()
                            }
                        )
                    end
                    local b5 = workspace.CurrentCamera.CoordinateFrame
                    local bt = b5.lookVector
                    local bu = workspace.CurrentCamera.CoordinateFrame.p
                    for bv, bw in pairs(bd) do
                        local bl, bx, by, bz = bw.part, bw.x, bw.y, bw.z
                        local C = Vector3.new(bx, by, bz)
                        local bA = b5:pointToObjectSpace(C)
                        local bB = bA.z < 0
                        if by < bw.stop - 5 then
                            if bB and (Vector3.new(bx, bw.stop, bz) - workspace.CurrentCamera.CFrame.p).Magnitude >= 5 then
                                drople(Vector3.new(bx, bw.stop, bz))
                            end
                            bw.x, bv, bw.z = randring(bw.close, bw.far)
                            bw.x, bw.z = bw.x + bu.x, bw.z + bu.z
                            bw.y = bc
                            local b0 = Vector3.new(bw.x, bw.y, bw.z)
                            bl.CFrame = CFrame.new(b0, Vector3.new(bu.x, by, bu.z))
                            local aZ = Ray.new(b0, Vector3.new(0, -bc - bb, 0))
                            local bC, a_ = workspace.FindPartOnRay(workspace, aZ, home, true)
                            if bC then
                                bw.stop = a_.y
                            else
                                bw.stop = bb
                            end
                        else
                            bw.y = by - 2
                            if bB then
                                local bD = (by - bc + 50) * .25 / 50 + .75
                                if by < bw.stop - 1 then
                                    bD = .75 + .25 / 5 * (bw.stop - 1 - by)
                                end
                                if by > bc - 50 or by < bw.stop then
                                    for bv, bE in pairs(bw.labels) do
                                        bE.ImageTransparency = bD
                                    end
                                end
                            end
                            bl.CFrame = CFrame.new(C, Vector3.new(bu.x, by, bu.z))
                        end
                    end
                    for bF = #be, 1, -1 do
                        local bG = be[bF]
                        local bh = (tick() - bG.start) * 3
                        if bh > 1 then
                            bG.part:Destroy()
                            table.remove(be, bF)
                        else
                            bG.label.ImageTransparency = bh
                            local bH = bh - bh * bh
                            bG.part.Size = Vector3.new(2 / 3 + bh, 0.2, 2 / 3 + bh)
                            bG.part.CFrame =
                                CFrame.new(bG.position + Vector3.new(0, bH * 2, 0)) * CFrame.Angles(0, bG.angle, 0)
                        end
                    end
                end
            end
        )
    end
)
skyboxEnabled =
    aC:CreateToggle(
    "Custom skybox",
    function(K)
        k["Custom skybox"] = K
    end
)
skyboxSelected =
    aC:CreateDropdown(
    "Selected skybox",
    {"Night Sky", "Purple Nebula", "Pink Daylight"},
    function(bI)
        k["Selected skybox"] = bI
        spawn(
            function()
                if not game.Lighting:FindFirstChild("customsky") then
                    if k["Custom skybox"] then
                        local bJ = Instance.new("Sky", game.Lighting)
                        bJ.Name = "customsky"
                        if Skyboxes[bI] then
                            for B, C in next, Skyboxes[bI] do
                                game.Lighting.customsky[B] = C
                            end
                        end
                    end
                end
                if Skyboxes[bI] and game.Lighting:FindFirstChild("customsky") then
                    for B, C in next, Skyboxes[bI] do
                        game.Lighting.customsky[B] = C
                    end
                end
                if not k["Custom skybox"] and game.Lighting:FindFirstChild("customsky") then
                    game.Lighting.customsky:Destroy()
                end
            end
        )
    end
)
chamsTransparency =
    aC:CreateSlider(
    "Chams Transparency",
    100,
    function(W)
        k["Chams Transparency"] = W
        for B, C in next, ap:GetChildren() do
            C.Transparency = 0 + k["Chams Transparency"] / 100
        end
    end
)
unlockInv =
    aC:CreateButton(
    "Bayonet",
    function()
        local bK = "v_Bayonet"
        for bv, C in pairs(game:GetDescendants()) do
            if C.Name == "v_T Knife" or C.Name == "v_CT Knife" then
                C.Name = "hdf"
            end
        end
        local bj = game.ReplicatedStorage.Viewmodels[bK]
        bj:Clone().Parent = game.ReplicatedStorage.Viewmodels
        local bL = bj:Clone()
        local bh = bj:Clone()
        bL.Name = "v_CT Knife"
        bh.Name = "v_T Knife"
        bL.Parent = game.ReplicatedStorage.Viewmodels
        bh.Parent = game.ReplicatedStorage.Viewmodels
    end
)
configName = aF:Textbox("Config name")
Config =
    aF:CreateDropdown(
    "Config",
    listfiles("onetap | v1 V1 (onetap | v1 Paste)"),
    function(bI)
        k.Config = bI
    end
)
createConfig =
    aF:CreateButton(
    "Create config",
    function()
        local bM = {}
        for B, C in next, l.options do
            if l.options[B].Type == "KeyBind" then
                bM[B] = tostring(k[B])
            else
                bM[B] = k[B]
            end
        end
        writefile("onetap | v1\\" .. configName.Text .. ".cfg", c:JSONEncode(bM))
        l.options.Config.updateList(listfiles("onetap | v1 V1"))
    end
)
saveConfig =
    aF:CreateButton(
    "Save config",
    function()
        local bM = {}
        if isfile(k.Config) then
            for B, C in next, l.options do
                if l.options[B].Type == "KeyBind" then
                    bM[B] = tostring(k[B])
                else
                    bM[B] = k[B]
                end
            end
            writefile(k.Config, c:JSONEncode(bM))
        end
        l.options.Config.updateList(listfiles("onetap | v1"))
    end
)
loadConfig =
    aF:CreateButton(
    "Load config",
    function()
        if isfile(k.Config) then
            for B, C in next, c:JSONDecode(readfile(k.Config)) do
                if l.options[B] then
                    local bN = l.options[B].Type
                    if bN == "Toggle" and k[B] ~= C then
                        l.options[B].toggleFunction()
                    elseif bN == "Slider" or bN == "Dropdown" then
                        l.options[B].changeValue(C)
                    elseif bN == "Keybind" then
                        local bO = "return " .. C
                        l.options[B].changeValue(loadstring(bO)())
                    end
                end
            end
        end
        l.options.Config.updateList(listfiles("onetap | v1"))
    end
)
refreshConfigs =
    aF:CreateButton(
    "Refresh configs",
    function()
        l.options.Config.updateList(listfiles("onetap | v1"))
    end
)
oldSounds = {}
for B, C in next, game.Players.LocalPlayer.PlayerGui.Music:GetDescendants() do
    if C:IsA("Sound") then
        if C.Name == "Lose" then
            oldSounds["Lose"] = C.SoundId
        elseif C.Name == "Win" then
            oldSounds["Win"] = C.SoundId
        elseif C.Name == "Bomb" then
            oldSounds["Bomb"] = C.SoundId
        elseif C.Name == "1" then
            if C.Parent.Name == "StartRound" then
                oldSounds["StartRound"] = C.SoundId
            end
        end
    end
end
aE:CreateToggle(
    "Splatoon sound effects",
    function(K)
        k["Splatoon sound effects"] = K
        for B, C in next, game.Players.LocalPlayer.PlayerGui.Music:GetDescendants() do
            if C:IsA("Sound") then
                if C.Name == "Lose" then
                    C.SoundId = K and "rbxassetid://5566798757" or oldSounds["Lose"]
                elseif C.Name == "Win" then
                    C.SoundId = K and "rbxassetid://5566793224" or oldSounds["Win"]
                elseif C.Name == "Bomb" then
                    C.SoundId = K and "rbxassetid://444115590" or oldSounds["Bomb"]
                elseif C.Name == "1" then
                    if C.Parent.Name == "StartRound" then
                        C.SoundId = K and "rbxassetid://5566732319" or oldSounds["StartRound"]
                    else
                        C.SoundId = "rbxassetid://"
                    end
                end
            end
        end
    end
)
aE:CreateToggle(
    "Headless horseman",
    function(K)
        k["Headless horseman"] = K
    end
)
aE:CreateToggle(
    "Fakelag",
    function(K)
        k["Fakelag"] = K
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
    end
)
for B, C in next, game.Players.LocalPlayer.PlayerGui.GUI.SuitZoom:GetDescendants() do
    C.Visible = false
end
for B, C in next, e:GetPlayers() do
    C.CharacterAdded:Connect(
        function(aq)
            wait(1)
            if C ~= g and g.Team ~= C.Team and k["Chams"] then
                chams(C)
            end
        end
    )
end
e.PlayerAdded:Connect(
    function(C)
        C.CharacterAdded:Connect(
            function(aq)
                wait(1)
                if C ~= g and C.Team ~= g.Team and k["Chams"] then
                    chams(C)
                end
            end
        )
    end
)
for B, C in next, game.Teams:GetChildren() do
    C.PlayerAdded:connect(
        function(aq)
            if aq == g then
                ap:ClearAllChildren()
                wait(0.5)
                if k["Chams"] then
                    for B, C in next, e:GetPlayers() do
                        if
                            C ~= g and C.Team ~= g.Team and C.Character and C.Character:FindFirstChild("Humanoid") and
                                C.Character.Humanoid.Health > 0
                         then
                            chams(C)
                        end
                    end
                end
            end
        end
    )
end
spawn(
    function()
        while wait(5) do
            if game.Lighting:FindFirstChild("customsky") then
                game.Lighting.customsky:Destroy()
            end
        end
    end
)
game:GetService("RunService").Stepped:connect(
    function()
        if not game.Lighting:FindFirstChild("customsky") and k["Custom skybox"] then
            local bJ = Instance.new("Sky", game.Lighting)
            bJ.Name = "customsky"
            local a5 = k["Selected skybox"]
            if Skyboxes[a5] then
                for B, C in next, Skyboxes[a5] do
                    game.Lighting.customsky[B] = C
                end
            end
        end
        pcall(
            function()
                if game.Lighting:FindFirstChild("SunRays") then
                    game.Lighting.SunRays.Intensity = k["Nightmode"] and 0 or 0.11
                end
                game.Lighting.TimeOfDay = k["Nightmode"] and 17 or 14
                game.Lighting.FogEnd = k["Fog"] and 175 or 9e9
                if g.Character and k["Headless horseman"] and g.Character:FindFirstChild("Shirt") then
                    for B, C in next, game.Players.LocalPlayer.Character:GetDescendants() do
                        if
                            C.ClassName == "Accessory" or C.Name == "Shirt" or C.Name == "Pants" or C.Name == "Mesh" or
                                C.Name == "FakeHead" or
                                C.Name == "HeadHB"
                         then
                            C:Destroy()
                        end
                    end
                end
                if k["Fakelag"] then
                    if math.ceil(tick()) % 5 == 0 then
                        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
                    else
                        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.random(35, 80))
                    end
                end
                game.Players.LocalPlayer.PlayerGui.GUI.SuitZoom.Visible = false
                game.Players.LocalPlayer.PlayerGui.GUI.SuitZoom.BackgroundTransparency = 1
            end
        )
    end
)