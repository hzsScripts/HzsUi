//- This Ui Made By Redz Remake By Me For Hzs Hub
//-
local a = type(cloneref) == "function" and cloneref or (function(value)
    return value
end)

local b = delfolder or deletefolder
local c = delfile or deletefile
local d = makefolder
local e = writefile
local f = readfile

local g = setmetatable({}, {
    __index = function(g, h)
        rawset(g, h, a(game:GetService(h)))
        return rawget(g, h)
    end
})

local h = g.MarketplaceService
local i = g.UserInputService
local j = g.TweenService
local k = g.HttpService
local l = g.RunService
local m = g.Players

local n = l.Heartbeat

local o = m.LocalPlayer
local p = o:GetMouse()

local getUiRoot = type(gethui) == "function" and gethui or function()
    return g.CoreGui
end
local q = getUiRoot()

local r = {
    Darker = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(12, 9, 14)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(25, 13, 22)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(12, 9, 14))
            },
            Primary = Color3.fromRGB(255, 105, 180),
            OnPrimary = Color3.fromRGB(190, 65, 125),
            Toggle = {Thumb = Color3.fromRGB(190, 65, 125)},
            ScrollBar = Color3.fromRGB(235, 85, 155),
            Stroke = Color3.fromRGB(62, 36, 52),

            Error = Color3.fromRGB(255, 105, 125),
            Icons = Color3.fromRGB(255, 218, 235),

            JoinButton = Color3.fromRGB(37, 128, 69),
            Link = Color3.fromRGB(255, 145, 195),

            Dialog = {
                Background = Color3.fromRGB(22, 14, 21)
            },
            Buttons = {
                Holding = Color3.fromRGB(54, 30, 44),
                Default = Color3.fromRGB(30, 20, 28)
            },
            Border = {
                Holding = Color3.fromRGB(112, 58, 84),
                Default = Color3.fromRGB(62, 36, 52),
            },
            Text = {
                Default = Color3.fromRGB(255, 246, 251),
                Dark = Color3.fromRGB(224, 204, 216),
                Darker = Color3.fromRGB(184, 158, 173),
            },
            Slider = {
                SliderBar = Color3.fromRGB(255, 105, 180),
                SliderNumber = Color3.fromRGB(255, 218, 235),
            },
            Dropdown = {
                Holder = Color3.fromRGB(34, 22, 31),
            }
        },
        Icons = {
            Error = "rbxassetid://83898160590116",
            Button = "rbxassetid://129280608535523",
            Close = "rbxassetid://10747384394",
            TextBox = "rbxassetid://107551944047171",
            Search = "rbxassetid://121018724060431",
            Keybind = "rbxassetid://83619031955390",
            Minimize = "rbxassetid://10734896206",
            Maximize = "rbxassetid://76045941763188",
            Dropdown = {
                Open = "rbxassetid://134243273101015",
                Close = "rbxassetid://122444883127455"
            }
        },
        Font = {
            Normal = Enum.Font.BuilderSans,
            Medium = Enum.Font.BuilderSansMedium,
            Bold = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne
        },
        BackgroundTransparency = 0.02
    }
}

local function BuildTheme(name, primary, onPrimary, bgA, bgB, surface, surfaceLight, stroke, hover, default, textDefault, textDark, textDarker)
    local base = r.Darker
    local theme = table.clone(base)
    theme.Colors = table.clone(base.Colors)
    for key, value in pairs(theme.Colors) do
        if type(value) == "table" then
            theme.Colors[key] = table.clone(value)
        end
    end
    theme.Icons = table.clone(base.Icons)
    theme.Icons.Dropdown = table.clone(base.Icons.Dropdown)
    theme.Font = table.clone(base.Font)
    local colors = theme.Colors
    colors.Background = ColorSequence.new{
        ColorSequenceKeypoint.new(0, bgA),
        ColorSequenceKeypoint.new(0.5, bgB),
        ColorSequenceKeypoint.new(1, bgA)
    }
    colors.Primary = primary
    colors.OnPrimary = onPrimary
    colors.ScrollBar = primary
    colors.Stroke = stroke
    colors.Icons = textDefault
    colors.Link = primary
    colors.Dialog.Background = surfaceLight
    colors.Buttons.Holding = hover
    colors.Buttons.Default = default
    colors.Border.Holding = stroke:Lerp(primary, 0.35)
    colors.Border.Default = stroke
    colors.Text.Default = textDefault
    colors.Text.Dark = textDark
    colors.Text.Darker = textDarker
    colors.Slider.SliderBar = primary
    colors.Slider.SliderNumber = textDefault
    colors.Dropdown.Holder = surfaceLight
    theme.BackgroundTransparency = 0.02
    return theme
end

r.Midnight = BuildTheme(
    "Midnight",
    Color3.fromRGB(232, 92, 164),
    Color3.fromRGB(150, 48, 102),
    Color3.fromRGB(9, 9, 14),
    Color3.fromRGB(18, 16, 25),
    Color3.fromRGB(23, 21, 31),
    Color3.fromRGB(30, 26, 39),
    Color3.fromRGB(55, 47, 66),
    Color3.fromRGB(48, 39, 57),
    Color3.fromRGB(26, 23, 34),
    Color3.fromRGB(250, 246, 252),
    Color3.fromRGB(214, 204, 222),
    Color3.fromRGB(165, 151, 176)
)
r.Violet = BuildTheme(
    "Violet",
    Color3.fromRGB(174, 125, 255),
    Color3.fromRGB(105, 70, 178),
    Color3.fromRGB(12, 9, 18),
    Color3.fromRGB(26, 17, 38),
    Color3.fromRGB(31, 23, 45),
    Color3.fromRGB(40, 29, 58),
    Color3.fromRGB(72, 52, 98),
    Color3.fromRGB(59, 42, 83),
    Color3.fromRGB(34, 24, 49),
    Color3.fromRGB(250, 246, 255),
    Color3.fromRGB(222, 208, 242),
    Color3.fromRGB(177, 157, 204)
)
r.Ocean = BuildTheme(
    "Ocean",
    Color3.fromRGB(72, 180, 255),
    Color3.fromRGB(35, 112, 178),
    Color3.fromRGB(7, 12, 19),
    Color3.fromRGB(12, 24, 35),
    Color3.fromRGB(17, 31, 43),
    Color3.fromRGB(23, 40, 55),
    Color3.fromRGB(43, 71, 91),
    Color3.fromRGB(32, 59, 78),
    Color3.fromRGB(20, 37, 51),
    Color3.fromRGB(241, 249, 255),
    Color3.fromRGB(197, 218, 235),
    Color3.fromRGB(145, 175, 199)
)
r.Emerald = BuildTheme(
    "Emerald",
    Color3.fromRGB(65, 210, 155),
    Color3.fromRGB(30, 135, 99),
    Color3.fromRGB(7, 14, 12),
    Color3.fromRGB(13, 25, 21),
    Color3.fromRGB(18, 33, 28),
    Color3.fromRGB(25, 43, 36),
    Color3.fromRGB(43, 75, 61),
    Color3.fromRGB(35, 63, 51),
    Color3.fromRGB(21, 39, 31),
    Color3.fromRGB(242, 255, 249),
    Color3.fromRGB(197, 226, 211),
    Color3.fromRGB(145, 184, 162)
)
r.Crimson = BuildTheme(
    "Crimson",
    Color3.fromRGB(255, 83, 111),
    Color3.fromRGB(166, 44, 65),
    Color3.fromRGB(16, 8, 11),
    Color3.fromRGB(29, 13, 19),
    Color3.fromRGB(36, 18, 24),
    Color3.fromRGB(45, 22, 30),
    Color3.fromRGB(82, 42, 53),
    Color3.fromRGB(65, 31, 42),
    Color3.fromRGB(38, 18, 26),
    Color3.fromRGB(255, 246, 248),
    Color3.fromRGB(231, 204, 211),
    Color3.fromRGB(190, 158, 168)
)
r.Light = BuildTheme(
    "Light",
    Color3.fromRGB(221, 70, 145),
    Color3.fromRGB(165, 45, 108),
    Color3.fromRGB(250, 246, 250),
    Color3.fromRGB(239, 229, 238),
    Color3.fromRGB(255, 251, 255),
    Color3.fromRGB(245, 236, 245),
    Color3.fromRGB(220, 199, 216),
    Color3.fromRGB(246, 226, 240),
    Color3.fromRGB(255, 248, 253),
    Color3.fromRGB(45, 28, 41),
    Color3.fromRGB(93, 70, 88),
    Color3.fromRGB(132, 108, 127)
)

for s, t in r do
    t.Name = s
    table.freeze(t)
end

local s = {
    Information = {
        Version = "v2.4.1",
        Name = "HzsLib"
    },
    Default = {
        Theme = "Darker",
        UISize = UDim2.fromOffset(600, 420),
        TabSize = 172
    },

    Themes = r,

    Connections = {},
    Options = {},
    Tabs = {}
}

s.Info = s.Information
s.Save = s.Default

local currentCamera = workspace.CurrentCamera
local t = currentCamera and currentCamera.ViewportSize or Vector2.new(800, 600)

local u = function(signal, callback, methodName)
    if signal == nil or type(callback) ~= "function" then
        return nil
    end

    local method = signal[methodName or "Connect"]
    if type(method) ~= "function" then
        return nil
    end

    local ok, connection = pcall(method, signal, callback)
    if ok and connection then
        table.insert(s.Connections, connection)
        return connection
    end

    return nil
end

local v = {}
v.__index = v
local w = function(root, path)
    if type(path) ~= "string" then
        return path
    end

    local value = root
    for key in string.gmatch(path, "[^%.]+") do
        if type(value) ~= "table" then
            return nil
        end

        value = value[key]
        if value == nil then
            return nil
        end
    end

    return value
end

local x = function(object, property, themeValue, theme)
    theme = theme or s.CurrentTheme

    local value = themeValue
    if type(value) == "function" then
        local ok, result = pcall(value)
        if not ok then
            return
        end
        value = result
    end

    local resolved = type(value) == "string" and w(theme, value) or value
    if resolved ~= nil then
        object[property] = resolved
    end
end
local y = function(y, z, A)
    for B, C in A do
        x(z, B, C, y)
    end
end
local z = function(path, contents)
    if type(path) ~= "string" or type(contents) ~= "string" then
        return false
    end

    if type(e) ~= "function" then
        return false
    end

    local folder = string.match(path, "^(.*)/[^/]+$")
    if folder and folder ~= "" and type(d) == "function" then
        local folderExists = false
        if type(isfolder) == "function" then
            local checkOk, exists = pcall(isfolder, folder)
            folderExists = checkOk and exists == true
        end

        if not folderExists then
            pcall(d, folder)
        end
    end

    local writeOk = pcall(e, path, contents)
    return writeOk
end

local A = false

local B = {
    MAX_SCALE = 1.6,
    MIN_SCALE = 0.6,

    TEXTBOX = {
        PLACEHOLDER_TEXT = "Input"
    }
}

function v:add(C, D)
    self.Descendants[D] = C

    if self.IS_RENDERING then
        y(s.CurrentTheme, C, D)
    end
end

function v:update()
    if self.IS_RENDERING and not self.UPDATED_OBJECTS then
        local C = s.CurrentTheme
        self.UPDATED_OBJECTS = true

        for D, E in self.Descendants do
            local F = typeof(E)
            if F == "table" then
                E:update()
                continue
            end

            y(C, E, D)
        end
    end
end

function v:destroy()
    local C = self.Parent and table.find(self.Parent.Descendants)

    if C then
        table.remove(self.Parent.Descendants, C)
    end

    table.clear(self.Descendants)
    setmetatable(self, nil)
end

function v:changeRendering(C)
    if self.IS_RENDERING ~= C then
        self.IS_RENDERING = C
        self.UPDATED_OBJECTS = false
    end
end

function v:new()
    local C = setmetatable({
        IS_RENDERING = true,
        UPDATED_OBJECTS = false,
        Descendants = {},
        Parent = self.Descendants ~= nil and self or nil
    }, v)

    if self.Descendants then
        table.insert(self.Descendants, C)
    end

    return C
end

local C = v:new()

local D, E = {} do
    local F = {}

    local G = {} do
        G.ElementsTable = {
            Corner = function(H)
                return E("UICorner", {
                    CornerRadius = H or UDim.new(0, 16)
                })
            end,
            Stroke = function(H, I)
                return E("UIStroke", {
                    Color = H or Color3.fromRGB(60, 60, 60),
                    Thickness = I or 1
                })
            end,
            Image = function(H)
                return E("ImageLabel", {
                    Image = H or "",
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1)
                })
            end,
            Button = function()
                return E("TextButton", {
                    Text = "",
                    Size = UDim2.fromScale(1, 1),
                    AutoButtonColor = false
                })
            end,
            Padding = function(H, I, J, K)
                return E("UIPadding", {
                    PaddingLeft = H or UDim.new(0, 10),
                    PaddingRight = I or UDim.new(0, 10),
                    PaddingTop = J or UDim.new(0, 10),
                    PaddingBottom = K or UDim.new(0, 10)
                })
            end,
            ListLayout = function(H)
                return E("UIListLayout", {
                    Padding = H or UDim.new(0, 5)
                })
            end,
            Text = function(H)
                return E("TextLabel", {
                    BackgroundTransparency = 1,
                    Text = H or ""
                })
            end,
            Gradient = function(H)
                return E("UIGradient", {
                    Color = H
                })
            end
        }

        function G:Create(H, I, ...)
            local J = self.ElementsTable[I]

            if J then
                local K = J(...)
                K.Parent = H
                return K
            end
        end
    end

    local H = {}

    function H:Childs(I)
        for J = 1, #I do
            I[J].Parent = self
        end
    end

    function H:Elements(I)
        for J, K in pairs(I) do
            if type(K) == "table" then
                D.SetProperties(G:Create(self, J), K)
            else
                G:Create(self, J, K)
            end
        end
    end

    function H:ThemeTag(I)
        local J = I.OBJECTS
        I.OBJECTS = nil
        return (J or C):add(self, I)
    end

    function D:SetProperties(I)
        for J, K in pairs(I) do
            if H[J] then
                H[J](self, K)
            else
                self[J] = K
            end
        end
    end

    function D:SetValues(...)
        local I = self

        for J, K in {...} do
            local L = typeof(K)

            if L == "table" then
                D.SetProperties(I, K)
            else
                I[if L == "string" then
                "Name"
            else
                "Parent"] = K
            end
        end

        return I
    end

    local I

    function D:Draggable(J, K, L)
        local M, N, O, P
        local Q = K or 0.28
        local R = 0
        local S
        local T = function(T)
            local U = T.Position - N
            local V
            R = tick()

            if L then
                V = L(
                O.X.Scale, O.X.Offset + U.X / J.Scale,
                O.Y.Scale, O.Y.Offset + U.Y / J.Scale
                )
            else
                V = UDim2.new(
                O.X.Scale, O.X.Offset + U.X / J.Scale,
                O.Y.Scale, O.Y.Offset + U.Y / J.Scale
                )
            end
            self.Position = self.Position:Lerp(V, Q)
        end
        local U = function()

            while I == self do
                if (tick() - R) >= 1 then
                    S()
                    break
                end
                task.wait()
            end
        end

        local V = {
            [Enum.UserInputType.MouseButton1] = true,
            [Enum.UserInputType.Touch] = true
        }

        local W = {
            [Enum.UserInputType.MouseMovement] = true,
            [Enum.UserInputType.Touch] = true
        }

        u(self.InputBegan, function(X)
            if A == false and I == nil and V[X.UserInputType] then
                N = X.Position
                O = self.Position
                I = self
                R = tick()
                A = true

                local Y;

                function S()
                    A = false
                    I = nil
                    Y:Disconnect()
                end

                task.spawn(U)

                Y = X.Changed:Connect(function()
                    if X.UserInputState == Enum.UserInputState.End then
                        S()
                    end
                end)
            end
        end)

        u(i.InputChanged, function(X)
            if I == self and W[X.UserInputType] then
                T(X)
            end
        end)
    end

    function D:CreateNewTemplate(J)
        return D.CloneObject(F[self], J)
    end

    function D.new(J, ...)
        return D.SetValues(Instance.new(J), ...)
    end

    E = D.new
end
local F = function(F)
    if F == nil then
        return {}
    end

    if type(F) ~= "function" and type(F) ~= "table" then
        error(`Failed to get Callback: 'function', or 'table' expected, got {typeof(F)}`, 2)
    end

    if type(F) ~= "function" then
        local G = F[1]
        local H = F[2]

        F = function(I)
            G[H] = I
        end
    end

    return table.pack(F)
end
local G = function(

    G, ...)
    for H = 1, #G do
        task.spawn(G[H], ...)
    end
end

local H = "HzsLib"
local I = q:FindFirstChild(H)

if not I then
    I = E("ScreenGui", H, q, {
        IgnoreGuiInset = true,
        ResetOnSpawn = false,
        DisplayOrder = 999,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    })
end

I.IgnoreGuiInset = true
I.ResetOnSpawn = false
I.DisplayOrder = math.max(I.DisplayOrder, 999)
I.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local J = function(

    J, K, L, M, ...)
    local N = TweenInfo.new(M, EasingStyle or Enum.EasingStyle.Quint, ...)

    return j:Create(J, N, {
        [K] = L
    })
end
local K = function(K)
    local L = {}
    for M = 1, #K do
        rawset(L, K[M], true)
    end
    return L
end

local L = K(string.split "\n\t,_:;()[]#&=!. \"'*^<>$")
local M = function(M)
    return string.gsub(M:lower(), ".", function(N)
        return L[N] and "" or N
    end)
end
local N = function(N)
    local O, P, Q = tostring(N), "", 0

    for R = #O, 1, - 1 do
        P = O:sub(R, R) .. P
        Q += 1

        if R > 1 and Q % 3 == 0 then
            P = "," .. P
        end
    end

    return P
end
local O = function(O)
    local P = "rbxassetid://"
    return O:sub(1, #P) == P
end
local P = function(P)
    return (t.Y / 450) * P
end
local Q = function(Q)
    local R = math.floor(Q / 60)
    local S = math.floor(Q / 60 / 60)
    Q = math.floor((Q - (R * 60)) * 10) / 10
    R = R - (S * 60)

    if S > 0 then
        return`{S}h {R}m {math.floor(Q)}s`
    elseif R > 0 then
        return`{R}m {math.floor(Q)}s`
    else
        return tostring(Q)
    end
end

local R = {} do
    local S = {}
    local T = {}
    local U = {}
    local V = {}

    local W
    local X
    local Y
    local Z
    local _
    local aa
    local ab
    local ac
    local ad
    local ae

    local af = ""

    local ag = {SelectedTab = 1, Minimized = false}
    ag.__index = ag

    local ah = {}
    ah.__index = ah

    local ai = {}
    ai.__index = ai

    local aj = {}
    aj.__index = aj

    local ak = {} do
        local al = function()

            local al = {}
            al.__index = function(am, an)
                return al[an] or rawget(ai, an)
            end

            return al
        end

        local am = al()
        ak.TextBox = am

        local an = al()
        ak.Toggle = an

        local ao = al()
        ak.Slider = ao

        local ap = al()
        ak.Dropdown = ap

        local aq = al()
        ak.Keybind = aq

        local ar = al()
        ak.Dialog = ar
        local as = function()

            Z.Closed = true
            Z.Closing = false
            setmetatable(Z, nil)

            Z = nil
            if aa then
                aa.Visible = false
                aa.Parent = nil
            end
        end
        local at = function()

            if Z ~= nil then
                Z:Close()
            end
        end

        function ar:NewOption(au)
            assert(type(au) == "table", '"Dialog.NewOption". option table expected')

            local av = au[1] or au.Name or au.Title
            local aw = F(au[2] or au.Callback)
            table.insert(aw, at)

            assert(type(av) == "string",`"Dialog.NewOption.Name". 'string' expected, got {typeof(av)}`)

            local ax = au.Icon or au.Image
            local ay = ax and s:GetIconByName(ax)
            local az = au.Primary == true

            local aA = E("TextButton", {
                AutoButtonColor = false,
                Size = UDim2.new(0.46, - 8, 0, 38),
                BackgroundTransparency = 0.04,
                Text = "",
                ZIndex = aa.Template.Options.ZIndex + 1,
                Elements = {
                    Corner = UDim.new(0, 12),
                    Stroke = {
                        Thickness = 1,
                        ThemeTag = {Color = az and "Colors.Primary" or "Colors.Border.Default"}
                    }
                },
                ThemeTag = {
                    BackgroundColor3 = az and "Colors.Primary" or "Colors.Buttons.Default",
                    TextColor3 = "Colors.Text.Default",
                    Font = "Font.Medium"
                }
            })

            if ay then
                E("ImageLabel", aA, {
                    Size = UDim2.fromOffset(17, 17),
                    Position = UDim2.new(0, 12, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundTransparency = 1,
                    Image = ay,
                    ZIndex = aA.ZIndex + 1,
                    ThemeTag = {ImageColor3 = "Colors.Icons"}
                })
                if az then
                    aA:FindFirstChildOfClass("ImageLabel").ImageColor3 = Color3.fromRGB(255, 255, 255)
                end
            end

            E("TextLabel", aA, {
                Size = UDim2.new(1, ay and - 42 or - 24, 1, 0),
                Position = UDim2.new(0, ay and 36 or 12, 0, 0),
                BackgroundTransparency = 1,
                Text = av,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Center,
                TextYAlignment = Enum.TextYAlignment.Center,
                ZIndex = aA.ZIndex + 1,
                ThemeTag = {
                    TextColor3 = "Colors.Text.Default",
                    Font = "Font.Bold"
                }
            })

            local aB = J(aA, "BackgroundTransparency", 0.12, 0.25)
            local aC = J(aA, "BackgroundTransparency", 0.04, 0.25)
            u(aA.MouseLeave, function() aC:Play()
            end)
            u(aA.MouseEnter, function() aB:Play()
            end)
            u(aA.Activated, function()
                if self.Closed or self.Closing then
                    return
                end
                G(aw)
            end)

            aA.Parent = aa.Template.Options
            return aA
        end

        function ar:Close(au)
            if self.Closed or self.Closing or Z ~= self then
                return nil
            end

            self.Closing = true

            if au then
                self.Closed = true
                self.Closing = false
                if aa then
                    aa.Visible = false
                    aa.Parent = nil
                end
                if Z == self then
                    Z = nil
                end
                setmetatable(self, nil)
                return true
            end

            local av = J(self.TEMPLATE, "Size", self.NEW_SIZE, 0.16)
            av:Play()
            u(av.Completed, function()
                if Z == self then
                    self.Closed = true
                    self.Closing = false
                    if aa then
                        aa.Visible = false
                        aa.Parent = nil
                    end
                    Z = nil
                    setmetatable(self, nil)
                end
            end)
            return true
        end

        function ar.new(au, av)
            return setmetatable({
                TITLE_LABEL = av,
                DESCRIPTION_LABEL = au,
                Content = au.Text,
                Title = av.Text,

                Closed = false,
                Closing = false,
                Kind = "Dialog"
            }, ar)
        end

        function ap:SetEnabled(au)
            assert(type(au) == "table",`"Dropdown.SetEnabled[param 1]". 'table' expected, got {typeof(au)}`)

            self.SET_ENABLED_OPTIONS(au)
        end

        function ap:Clear()
            self.CLEAR_DROPDOWN()
        end

        function ap:NewOptions(...)
            self:Clear()
            self:Add(...)
        end

        function ap:GetOptionsCount()
            return #self.DROPDOWN_OPTIONS
        end

        function ap:Remove(...)
            local au = {...}
            assert(#au > 0, "'Dropdown.Remove' requires one or more options.")

            for av, aw in au do
                self.REMOVE_DROPDOWN_OPTION(aw)
            end
        end

        function ap:Add(...)
            local au = {...}
            assert(#au > 0, "'Dropdown.Add' requires one or more options.")

            for av, aw in au do
                self.ADD_DROPDOWN_OPTION(aw)
            end
        end

        function ap.new(au, av, aw, ax, ay)
            return setmetatable({
                CALLBACKS = ay,

                DESTROY_ELEMENT = av,
                VISIBLE_ELEMENT = av,

                TITLE_LABEL = aw,
                DESCRIPTION_LABEL = ax,
                Description = ax.Text,
                Title = aw.Text,

                Parent = au,
                Kind = "Dropdown"
            }, ap)
        end

        function ao:SetValue(au)
            assert(type(au) == "number",`"Slider.SetValue". 'number' expected, got {typeof(au)}`)

            if self.Value ~= au then
                self.WHEN_VALUE_CHANGED(au)
            end
        end

        function ao.new(au, av, aw, ax, ay)
            return setmetatable({
                CALLBACKS = ay,

                DESTROY_ELEMENT = av,
                VISIBLE_ELEMENT = av,

                TITLE_LABEL = aw,
                DESCRIPTION_LABEL = ax,
                Description = ax.Text,
                Title = aw.Text,

                Parent = au,
                Kind = "Slider"
            }, ao)
        end

        function an:SetValue(au)
            assert(type(au) == "boolean",`"Toggle.SetValue". 'boolean' expected, got {typeof(au)}`)

            if self.Value ~= au then
                self.Value = au
                self.WHEN_VALUE_CHANGED(au)
            end
        end

        function an.new(au, av, aw, ax, ay, az)
            return setmetatable({
                CALLBACKS = az,
                WHEN_VALUE_CHANGED = ay,

                DESTROY_ELEMENT = av,
                VISIBLE_ELEMENT = av,

                TITLE_LABEL = aw,
                DESCRIPTION_LABEL = ax,
                Description = ax.Text,
                Title = aw.Text,

                Parent = au,
                Kind = "Toggle"
            }, an)
        end

        function am:SetText(au)
            assert(type(au) == "string",`"TextBox.SetText". 'string' expected, got {typeof(au)}`)

            self.TEXTBOX.Text = au
            return self
        end

        function am:GetText()
            return self.TEXTBOX.Text
        end

        function am:SetPlaceholder(au)
            assert(type(au) == "string",`"TextBox.SetPlaceholder". 'string' expected, got {typeof(au)}`)

            self.TEXTBOX.PlaceholderText = au
            return self
        end

        function am:GetPlaceholder()
            return self.TEXTBOX.PlaceholderText
        end

        function am:SetClearOnFocus(au)
            assert(type(au) == "boolean",`"TextBox.SetClearOnFocus". 'boolean' expected, got {typeof(au)}`)

            self.TEXTBOX.ClearTextOnFocus = au
            return self
        end

        function am:SetEnabled(au)
            assert(type(au) == "boolean",`"TextBox.SetEnabled". 'boolean' expected, got {typeof(au)}`)

            self.TEXTBOX.TextEditable = au
            self.TEXTBOX.Active = au
            return self
        end

        function am:CaptureFocus()
            self.TEXTBOX:CaptureFocus()
            return self
        end

        function am:Clear()
            self.TEXTBOX.Text = ""
            return self
        end

        function am:SetTextFilter(au)
            if au ~= nil then
                assert(type(au) == "function",`"TextBox.SetTextFilter[param 1]". 'function', or 'nil' expected, got {typeof(au)}`)
            end

            self.TEXTBOX_TEXT_FILTER = au
            return self
        end

        function am.new(au, av, aw, ax, ay, az)
            return setmetatable({
                Title = av.Text,
                Description = aw.Text,
                DESCRIPTION_LABEL = aw,
                TITLE_LABEL = av,

                CALLBACKS = az,
                DESTROY_ELEMENT = ax,
                VISIBLE_ELEMENT = ax,

                TEXTBOX = ay,
                BUTTON = ax,

                Parent = au,
                Kind = "TextBox"
            }, am)
        end

        am.Set = am.SetText
        am.Get = am.GetText
        am.GetValue = am.GetText
        am.SetPlaceholderText = am.SetPlaceholder
        am.SetClearTextOnFocus = am.SetClearOnFocus
        am.Focus = am.CaptureFocus
        an.Set = an.SetValue
        ao.Set = ao.SetValue
    end
    local al = function(al, am, an)
        local ao = E("TextButton", "Button", an, {
            Size = UDim2.new(1, 0, 0, 24),
            AutoButtonColor = false,
            Text = "",
            Elements = {
                Corner = UDim.new(0, 12)
            },
            ThemeTag = {
                BackgroundColor3 = "Colors.Buttons.Default"
            },
            Childs = {
                E("TextLabel", "Title", {
                    BackgroundTransparency = 1,
                    Font = Enum.Font.GothamMedium,
                    Text = am.Title,
                    TextSize = 10,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTransparency = (FirstTab and 0.3) or 0,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    ThemeTag = {
                        TextColor3 = "Colors.Text.Default"
                    }
                })
            }
        })

        local ap = E("Frame", ao, {
            Position = UDim2.new(0, 1, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            Size = UDim2.fromOffset(4, 4),
            BackgroundTransparency = 1,
            ThemeTag = {
                BackgroundColor3 = "Colors.Primary"
            },
            Elements = {
                Corner = UDim.new(0.5, 0)
            }
        })

        local aq = E("ScrollingFrame", "Container", {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 1),
            AnchorPoint = Vector2.new(0, 1),
            ScrollBarThickness = 1.5,
            BackgroundTransparency = 1,
            ScrollBarImageTransparency = 0.2,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            BorderSizePixel = 0,
            CanvasSize = UDim2.new(),
            ThemeTag = {
                ScrollBarImageColor3 = "Colors.ScrollBar"
            },
            Elements = {
                Padding = {
                    PaddingLeft = UDim.new(0, 10),
                    PaddingRight = UDim.new(0, 10),
                    PaddingTop = UDim.new(0, 10),
                    PaddingBottom = UDim.new(0, 10)
                },
                ListLayout = {
                    Padding = UDim.new(0, 5)
                }
            }
        })

        local ar = E("ImageLabel", ao, {
            Position = UDim2.new(0, 8, 0.5),
            Size = UDim2.new(0, 13, 0, 13),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            ImageTransparency = 0.3,
            Image = am.Icon or ""
        })
        local as = function()

            local as = string.sub(ar.Image, 1, 13) == "rbxassetid://"
            local at = ao.Title
            ar.Visible = as
            at.Size = UDim2.new(1, as and - 25 or - 15, 1)
            at.Position = UDim2.fromOffset(as and 25 or 15)
        end

        u(ar:GetPropertyChangedSignal "Image", as)
        as()

        return ao, aq, ap, ar
    end
    local am = function(am, an, ao, ap)
        local aq = E("TextLabel", {
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            AutomaticSize = Enum.AutomaticSize.Y,
            Size = UDim2.new(1, - 20),
            Position = UDim2.fromScale(0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            TextSize = 11,
            ThemeTag = {
                OBJECTS = C,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Medium"
            }
        })

        local ar = V[am]
        local as = T[am].Container

        local at = E("TextLabel", {
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            Size = UDim2.new(1, - 20),
            Position = UDim2.new(0, 12, 0, 15),
            BackgroundTransparency = 1,
            TextWrapped = true,
            TextSize = 8,
            RichText = true,
            ThemeTag = {
                OBJECTS = ar,
                TextColor3 = "Colors.Text.Dark",
                Font = "Font.Normal"
            }
        })

        local au = {
            OBJECTS = ar,
            BackgroundColor3 = "Colors.Buttons.Default"
        }

        local av = E("TextButton", "Option", {
            AutomaticSize = Enum.AutomaticSize.Y,
            Size = UDim2.new(1, 0, 0, 25),
            AutoButtonColor = false,
            Text = "",
            ThemeTag = au,
            Elements = {
                Corner = UDim.new(0, 12)
            },
            Childs = {
                E("Frame", "Holder", {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = ap,
                    Elements = {
                        ListLayout = {
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalAlignment = Enum.VerticalAlignment.Center,
                            Padding = UDim.new(0, 2)
                        },
                        Padding = {
                            PaddingBottom = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5)
                        }
                    },
                    Childs = {aq, at}
                })
            }
        })

        local aw = av.Holder
        local ax = function(ax, ay)
            if ay then
                if _ then
                    local az = w(s.CurrentTheme, "Colors.Buttons.Default")
                    _.Theme.BackgroundColor3 = "Colors.Buttons.Default"
                    J(_.Button, "BackgroundColor3", az, 0.2):Play()
                end

                _ = {
                    Button = av,
                    Theme = au
                }
            end

            au.BackgroundColor3 = ax
            J(av, "BackgroundColor3", w(s.CurrentTheme, ax), 0.2):Play()
        end

        u(av.MouseLeave, function() ax("Colors.Buttons.Default", false)
        end)
        u(av.MouseEnter, function() ax("Colors.Buttons.Holding", true)
        end)

        u(at:GetPropertyChangedSignal "Text", function()
            local ay = #at.Text > 0

            if at.Visible ~= ay then
                local az = ay and 0 or 0.5
                at.Visible = ay
                aw.Position = UDim2.fromScale(0, az)
                aw.AnchorPoint = Vector2.new(0, az)
            end
        end)

        aq.Text = an
        at.Text = ao or ""

        av.Parent = as

        return av, aq, at
    end
    local an = function(an, ao)
        if type(ao) ~= "table" then
            error(`"Tab.Add{an}[Configs]". 'table' expected, got {typeof(ao)}`, 2)
        end

        local ap = ao[1] or ao.Name or ao.Title
        local aq = ao.Desc or ao.Description

        assert(type(ap) == "string",`"Tab.Add{an}.Title". 'string' expected, got {typeof(ap)}`)

        if aq ~= nil and type(aq) ~= "string" then
            error(`"Tab.Add{an}.Description". 'string', or 'nil' expected, got {typeof(aq)}`, 2)
        end

        return ap, aq or ""
    end
    local ao = function(ao, ap)
        if ap ~= nil and type(ap) ~= "string" then
            error(`"Tab.Add{ao}.Flag". 'nil', or 'string' expected, got {typeof(ap)}`)
        end

        return ap
    end
    local ap = function()

        local ap = 160

        local aq = {
            Corner = UDim.new(0, 12),
            Stroke = {
                ThemeTag = {
                    Color = "Colors.Stroke"
                }
            },
            Gradient = {
                Rotation = 45,
                ThemeTag = {
                    Color = "Colors.Background"
                }
            }
        }

        local ar = E("TextButton", OutBox, {
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
            Active = true,
            Text = ""
        })

        local as = E("Frame", "Dropdown", ar, {
            Size = UDim2.fromOffset(ap, 100),
            Position = UDim2.fromOffset(50, 50),
            Elements = aq,
            Active = true,
            ThemeTag = {
                BackgroundTransparency = "BackgroundTransparency"
            }
        })

        local at = E("TextButton", "Search", as, {
            Position = UDim2.new(1, 5, 0, 5),
            Size = UDim2.new(0, 25, 0, 25),
            AutomaticSize = Enum.AutomaticSize.X,
            Active = true,
            Elements = aq,
            Text = "",
            ThemeTag = {
                BackgroundTransparency = "BackgroundTransparency"
            },
            Childs = {
                E("UIPadding", {
                    PaddingLeft = UDim.new(0, 5),
                    PaddingRight = UDim.new(0, 5),
                    PaddingBottom = UDim.new(0, 5),
                    PaddingTop = UDim.new(0, 5)
                }),
                E("UIListLayout", {
                    Padding = UDim.new(0, 5),
                    FillDirection = Enum.FillDirection.Horizontal
                }),
                E("TextBox", "SearchBox", {
                    Size = UDim2.fromScale(0, 1),
                    Position = UDim2.fromScale(0.5, 0.5),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Visible = false,
                    PlaceholderText = "Search...",
                    ClearTextOnFocus = false,
                    Text = "",
                    Elements = {
                        Corner = UDim.new(0, 12)
                    },
                    ThemeTag = {
                        BackgroundColor3 = "Colors.Stroke",
                        TextColor3 = "Colors.Text.Default",
                        Font = "Font.ExtraBold"
                    }
                }),
                E("ImageLabel", "SearchIcon", {
                    Size = UDim2.fromScale(1, 1),
                    SizeConstraint = Enum.SizeConstraint.RelativeYY,
                    Position = UDim2.fromScale(0.5, 0.5),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    ThemeTag = {
                        BackgroundColor3 = "Colors.Stroke",
                        ImageColor3 = "Colors.Icons",
                        Image = "Icons.Search"
                    }
                })
            }
        })

        local au = E("ScrollingFrame", as, {
            Size = UDim2.new(1, - 6, 1, - 6),
            Position = UDim2.fromScale(0.5, 0.5),
            AnchorPoint = Vector2.new(0.5, 0.5),
            ScrollBarThickness = 3,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            CanvasSize = UDim2.new(),
            ScrollingDirection = Enum.ScrollingDirection.Y,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            Active = true,
            ThemeTag = {
                OBJECTS = C,
                ScrollBarImageColor3 = "Colors.ScrollBar"
            },
            Elements = {
                Padding = {
                    PaddingLeft = UDim.new(0, 8),
                    PaddingRight = UDim.new(0, 8),
                    PaddingTop = UDim.new(0, 5),
                    PaddingBottom = UDim.new(0, 5)
                },
                ListLayout = {
                    Padding = UDim.new(0, 4)
                }
            }
        })

        local av = at.SearchIcon
        local aw = at.SearchBox

        local ax = 130

        local ay = J(as, "Size", UDim2.fromOffset(ap, 0), 0.2)
        local az = J(aw, "Size", UDim2.new(0, ax - 30, 1, 0), 0.3)
        local aA = J(aw, "Size", UDim2.new(0, 0, 1, 0), 0.2)

        local aB = {}
        local aC = false
        local aD = false
        local aE
        local aF
        local aG
        local aH
        local aI

        local aJ = 0

        local aK = 25
        local aL = (aK * 12) + 10
        local aM = 5
        local aN = function(aN)
            local aO = I.AbsoluteSize.Y / ad.Scale
            return math.min((aK * math.max(aN, 0.5)) + 10, aL, aO / 1.75)
        end
        local aO = function()

            local aO = as.AbsolutePosition
            local aP = as.AbsoluteSize

            local aQ = Vector2.new(p.X, p.Y)

            local aR = aQ.X >= aO.X and aQ.X <= (aO.X + aP.X)
            local aS = aQ.Y >= aO.Y and aQ.Y <= (aO.Y + aP.Y)

            return aR and aS
        end
        local aP = function(aP, aQ)
            local aR = aI.AbsolutePosition
            local aS = aI.AbsoluteSize
            local aT = I.AbsoluteSize
            local aU = ad.Scale
            local aV = aN(aP)

            local aW = aT.X / aU
            local aX = aT.Y / aU
            local aY = aR.X / aU
            local aZ = aR.Y / aU
            local a_ = aS.X / aU
            local a0 = aS.Y / aU

            local a1 = aZ + (a0 / 2)
            local a2 = a1 - (aV / 2)

            local a3 = aM
            local a4 = aX - aV - aM

            local a5 = math.clamp(a2, a3, a4)

            local a6 = Vector2.new(0, 0)

            if a5 > (aX * 0.7) then
                a6 = Vector2.new(0, 1)
                a5 = math.min(a1 + (aV / 2), aX - aM)
            end

            local a7 = math.clamp(
            aY,
            aM,
            aW - as.Size.X.Offset - (aM * 2) - (at.AbsoluteSize.X / aU)
            )

            return Vector2.new(a7, a5), a6
        end
        local aQ = function(...)

            local aQ, aR = aP(...)

            as.AnchorPoint = aR
            as.Position = UDim2.fromOffset(aQ.X, aQ.Y)
        end
        local aR = function()

            if not aD then
                return
            end

            aD = false

            aw.Text = ""
            aA:Play()
            aA.Completed:Wait()
            aw.Visible = false
        end
        local aS = function()

            if aD then
                return
            end

            aD = true

            aw.Visible = true
            az:Play()

            aw:CaptureFocus()

            local aS = as.AbsoluteSize
            local aT = I.AbsoluteSize
            local aU = ad.Scale
            local aV = as.AnchorPoint

            local aW = ax * aU

            local aX = as.AbsolutePosition.X

            local aY = aX + aS.X + 5 + aW

            if aY > aT.X - (aM * aU) then
                local aZ = (aT.X - aS.X - aW - 5 - (aM * aU)) / aU

                aZ = math.max(aZ, aM)

                J(as, "Position", UDim2.fromOffset(aZ, as.Position.Y.Offset), 0.3):Play()
            end
        end
        local aT = function(aT)
            if not aC then
                aE = aT
                ar.Parent = Y
                return true
            end
        end
        local aU = function()

            if aC then
                return
            end

            if aE then
                aE()
                aE = nil
            end

            task.spawn(aR)
            aC = true
            ay:Play()
            ay.Completed:Wait()
            ar.Parent = nil
            aC = false
        end
        local aV = function()

            if aw:IsFocused() then
                aJ = tick()
                return nil
            end

            if (tick() - aJ) >= 0.3 and not aO() then
                aU()
            end
        end
        local aW = function()

            for aW, aX in aB do
                aW.Parent = nil
                aB[aW] = nil
            end
        end
        local aX = function(aX, aY)
            aX.Selected = aY

            if aX.Instance then
                local aZ = aX.Instance
                local a_ = aZ.TextLabel
                local a0 = aZ.Frame

                local a1 = aY and 0 or (aH and 0.8 or 1)
                local a2 = aY and 0 or 0.4
                local a3 = UDim2.fromOffset(4, aY and 14 or 4)

                if aZ.Parent then
                    J(a0, "BackgroundTransparency", a1, 0.35):Play()
                    J(a_, "TextTransparency", a2, 0.35):Play()
                    J(a0, "Size", a3, 0.35):Play()
                else
                    a_.TextTransparency = a2
                    a0.BackgroundTransparency = a1
                    a0.Size = a3
                end
            end
        end
        local aY = function(aY)
            if aw.Visible == false or not aY then
                local aZ = aG and #aG or 0
                as.Size = UDim2.fromOffset(ap, aN(aZ))
                return nil
            end

            if aY then
                local aZ = aY.Instance
                local a_ = M(aw.Text)
                aZ.Visible = #a_ == 0 or aY.SearchText:find(a_) ~= nil

                if aZ.Visible ~= false then
                    SEARCH_RESULT_COUNT += 1
                    as.Size = UDim2.fromOffset(ap, aN(SEARCH_RESULT_COUNT))
                end
            end
        end
        local aZ = function(aZ, a_, a0, a1)
            local a2 = true

            if a_ == "+" or a_ == "-" then
                a2 = aZ.Selected == (a_ == "+")
                a0 = a0:sub(2, - 1)
            end

            return a2 and a1:find(a0, 1, true) ~= nil
        end
        local a_ = function(a_, a0)
            local a1 = E("TextButton", {
                Size = UDim2.new(1, 0, 0, 21),
                AutoButtonColor = false,
                Text = "",
                Elements = {
                    Corner = UDim.new(0, 10)
                },
                ThemeTag = {
                    BackgroundColor3 = "Colors.Buttons.Default"
                },
                Childs = {
                    E("Frame", {
                        Position = UDim2.new(0, 1, 0.5),
                        Size = UDim2.new(0, 4, 0, 4),
                        BackgroundTransparency = 1,
                        AnchorPoint = Vector2.new(0, 0.5),
                        Elements = {
                            Corner = UDim.new(0.5, 0)
                        },
                        ThemeTag = {
                            BackgroundColor3 = "Colors.Primary"
                        }
                    }),
                    E("TextLabel", {
                        Size = UDim2.fromScale(1, 1),
                        Position = UDim2.fromOffset(10, 0),
                        TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundTransparency = 1,
                        TextTransparency = 0.4,
                        Text = a_.DisplayName,
                        TextSize = 9,
                        ThemeTag = {
                            Font = "Font.Bold",
                            TextColor3 = "Colors.Text.Default"
                        }
                    })
                }
            })

            local a2 = 0

            u(a1.Activated, function()
                if (tick() - a2) < 0 then
                    return
                end

                if ar.Parent and not aC then
                    a2 = tick() + 0.2
                    aF(a_)
                end
            end)

            a_.SearchText = M(a_.DisplayName)
            a_.Instance = a1

            if a0 then
                local a3 = aw.Text

                if #a3 > 0 then
                    local a4 = string.sub(a3, 1, 1)
                    local a5 = M(aw.Text)
                    a1.Visible = aZ(a_, a4, a5, a_.SearchText)
                end

                a1.Parent = au
                aY(a_)
            end

            aX(a_, a_.Selected)
        end
        local a0 = function(a0)
            aW()
            aG = a0

            for a1 = 1, #a0 do
                local a2 = a0[a1]
                local a3 = a2.Instance

                if a3 == nil then
                    a_(a2)
                    a3 = a2.Instance
                end

                a3.Parent = au
                aB[a3] = true
            end

            aQ(#a0)
            J(as, "Size", UDim2.fromOffset(ap, aN(#a0)), 0.3):Play()
        end
        local a1 = function()

            local a1 = aw.Text
            local a2 = string.sub(a1, 1, 1)
            local a3 = M(a1)
            local a4 = #a3 == 0
            local a5 = 0

            for a6 = 1, #aG do
                local a7 = aG[a6]
                local a8 = a4 or aZ(a7, a2, a3, a7.SearchText)
                a7.Instance.Visible = a8

                if a8 then
                    a5 += 1
                end
            end

            SEARCH_RESULT_COUNT = a5
            as.Size = UDim2.fromOffset(ap, aN(a5))
        end

        u(ab:GetPropertyChangedSignal "Visible", aV)
        u(ab:GetPropertyChangedSignal "Size", aV)
        u(ar.MouseButton1Down, aV)
        u(ar.Activated, aV)

        u(at.Activated, aS)
        u(aw:GetPropertyChangedSignal "Text", a1)

        return table.freeze{
            CreateOptionTemplate = a_,
            SetOptionValue = aX,
            CloseDropdown = aU,
            OpenDropdown = aT,
            SetOptions = a0,
            Clear = aW,
            SetOnClicked = function(...)
                aF = ...
            end,
            SetMultiSelect = function(...)
                aH = ...
            end,
            SetHolder = function(...)
                aI = ...
            end
        }
    end

    local aq

    local ar = {"W", "A", "S", "D", "Tab", "Slash", "Backspace", "Escape", "Unknown"}
    local as = {"MouseButton1", "MouseButton2", "MouseButton3"}

    local at = K({"number", "string", "nil", "boolean", "table"}, true)
    local au = function(au)
        if aq == nil then
            aq = K(Enum.KeyCode:GetEnumItems())
        end

        return typeof(au) == "EnumItem" and aq[au]
    end

    function ah:GetNoSelfCall(av)
        assert(type(av) == "string",`"Tab.GetNoSelfCall". 'string' expected, got {typeof(av)}`)
        local aw = self[av]
        assert(type(aw) == "function",`"Tab.GetNoSelfCall". '{aw}' is not a 'function'-{av}`)

        return function(...)
            return aw(self, ...)
        end
    end

    function ah:AddSection(av)
        assert(av == nil or type(av) == "string",`"Tab.AddSection[param 1]". 'string', or 'nil' expected, got {typeof(av)}`)
        av = av or ""

        local aw = V[self]

        local ax = E("Frame", "Option", T[self].Container, {
            Size = UDim2.new(1, 0, 0, 20),
            BackgroundTransparency = 1
        })

        local ay = E("TextLabel", ax, {
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Size = UDim2.new(1, - 25, 1, 0),
            Position = UDim2.new(0, 5),
            BackgroundTransparency = 1,
            TextSize = 17,
            Text = av,
            ThemeTag = {
                OBJECTS = aw,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        return setmetatable({
            Title = av,

            DESTROY_ELEMENT = ax,
            VISIBLE_ELEMENT = ax,
            TITLE_LABEL = ay,

            Kind = "Section",
            Parent = self
        }, ai)
    end

    function ah:AddToggle(av)
        local aw, ax = an("Toggle", av)
        local ay = ao("Toggle", av[4] or av.Flag)

        local az = av[2] or av.Default or false
        local aA = F(av[3] or av.Callback)

        if type(az) ~= "boolean" then
            error(`"Tab.AddToggle.Default". 'boolean' expected, got {typeof(az)}`, 2)
        end

        if ay ~= nil and type(ae[ay]) == "number" then
            az = ae[ay] == 0
        end

        local aB = V[self]
        local aC, aD, aE = am(self, aw, ax, UDim2.new(1, - 38, 0, 0))

        local aF = E("Frame", aC, {
            Size = UDim2.new(0, 35, 0, 18),
            Position = UDim2.new(1, - 10, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            Elements = {
                Corner = UDim.new(0.5, 0)
            },
            ThemeTag = {
                OBJECTS = aB,
                BackgroundColor3 = "Colors.Stroke"
            }
        })

        local aG = E("Frame", aF, {
            BackgroundTransparency = 1,
            Size = UDim2.new(0.8, 0, 0.8, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5)
        })

        local aH = {
            OBJECTS = aB,
            BackgroundColor3 = "Colors.Toggle.Thumb"
        }

        local aI = E("Frame", aG, {
            Size = UDim2.new(0, 12, 0, 12),
            Position = UDim2.new(0, 0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5),
            Elements = {
                Corner = UDim.new(0.5, 0)
            },
            ThemeTag = aH
        })

        local aJ = tick()
        local aK = 0.2
        local aL = {}
        local aM = function(aM)
            aL = {}
            for aN = 1, #aM do
                aM[aN]:Play()
                aL[aN] = aM[aN]
            end
        end
        local aN = function()

            for aN = #aL, 1, - 1 do
                local aO = aL[aN]
                if aO.PlaybackState == Enum.PlaybackState.Playing then
                    aO:Cancel()
                end
                aL[aN] = nil
            end
        end
        local aO = function(aO)
            if ay ~= nil then
                ae[ay] = aO and 0 or 1
            end
            G(aA, aO)

            local aP = UDim2.new(aO and 1 or 0, 0, 0.5, 0)
            local aQ = Vector2.new(aO and 1 or 0, 0.5)
            local aR = aO and "Colors.Primary" or "Colors.OnPrimary"
            local aS = w(s.CurrentTheme, aR)

            aH.BackgroundColor3 = aR

            if self.Selected and (tick() - aJ) >= aK then
                aM{
                    J(aI, "Position", aP, 0.25),
                    J(aI, "AnchorPoint", aQ, 0.25),
                    J(aI, "BackgroundColor3", aS, 0.25)
                }
            else
                aN()
                aI.Position = aP
                aI.AnchorPoint = aQ
                aI.BackgroundColor3 = aS
            end

            aJ = tick()
        end

        local aP = ak.Toggle.new(self, aC, aD, aE, aO, aA)
        aP:SetValue(az)

        local aQ = 0

        u(aC.Activated, function()
            if (tick() - aQ) >= aK then
                aQ = tick()
                aP:SetValue(not aP.Value)
            end
        end)

        return aP
    end

    function ah:AddButton(av)
        local aw, ax = an("Button", av)
        local ay = F(av[2] or av.Callback)
        local az = av.Debounce or av.Cooldown

        local aA = V[self]
        local aB, aC, aD = am(self, aw, ax, UDim2.new(1, - 20, 0, 0))

        local aE = E("ImageLabel", aB, {
            Size = UDim2.new(0, 14, 0, 14),
            Position = UDim2.new(1, - 10, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            ThemeTag = {
                OBJECTS = aA,
                Image = "Icons.Button"
            }
        })

        local aF = 0

        u(aB.Activated, function()
            if az ~= nil and (tick() - aF) < 0 then
                return
            end

            if az ~= nil then
                aF = tick() + az
            end

            G(ay)
        end)

        return setmetatable({
            CALLBACKS = ay,
            DESTROY_ELEMENT = aB,
            VISIBLE_ELEMENT = aB,
            TITLE_LABEL = aC,
            DESCRIPTION_LABEL = aD,

            Title = aw,
            Description = ax,

            Parent = self,
            Kind = "Button"
        }, ai)
    end

    function ah:AddTextBox(av)
        local aw, ax = an("TextBox", av)
        local ay = ao("TextBox", av[4] or av.Flag)

        local az = av[2] or av.Default
        local aA = F(av[3] or av.Callback)

        local aB = av.Placeholder or av.PlaceholderText
        if aB ~= nil and type(aB) ~= "string" then
            error(`"Tab.AddTextBox.Placeholder". 'string', or 'nil' expected, got {typeof(aB)}`, 2)
        end

        local aC = av.ClearOnFocus

        if aC == nil then
            aC = av.ClearTextOnFocus
        end

        if aC ~= nil and type(aC) ~= "boolean" then
            error(`"Tab.AddTextBox.ClearOnFocus". 'boolean', or 'nil' expected, got {typeof(aC)}`, 2)
        end

        if az ~= nil and type(az) ~= "string" then
            error(`"Tab.AddTextBox.Default". 'string', or 'nil' expected, got {typeof(az)}`, 2)
        end

        if ay and type(ae[ay]) == "string" then
            az = ae[ay]
        end

        local aD = V[self]
        local aE, aF, aG = am(self, aw, ax, UDim2.new(1, - 160, 0, 0))

        local aH = E("Frame", aE, {
            Size = UDim2.new(0, 160, 0, 24),
            Position = UDim2.new(1, - 10, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            ThemeTag = {
                OBJECTS = aD,
                BackgroundColor3 = "Colors.Stroke"
            },
            Elements = {
                Corner = UDim.new(0, 10)
            }
        })

        local aI = E("TextBox", aH, {
            Size = UDim2.new(0.82, 0, 0.85, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.54, 0, 0.5, 0),
            BackgroundTransparency = 1,
            TextScaled = false,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextWrapped = false,
            Active = true,
            TextEditable = true,
            Text = "",
            PlaceholderText = B.TEXTBOX.PLACEHOLDER_TEXT,
            ThemeTag = {
                OBJECTS = aD,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        local aJ = {
            OBJECTS = aD,
            Image = "Icons.TextBox",
            ImageColor3 = "Colors.Icons"
        }

        local aK = E("ImageLabel", aH, {
            Size = UDim2.new(0, 12, 0, 12),
            Position = UDim2.new(0, - 5, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            ThemeTag = aJ
        })

        if az ~= nil then
            aI.Text = az
        end

        if aC ~= nil then
            aI.ClearTextOnFocus = aC
        end

        if aB ~= nil then
            aI.PlaceholderText = aB
        end

        local aL = ak.TextBox.new(self, aF, aG, aE, aI, aA)

        if av.TextFilter ~= nil then
            aL:SetTextFilter(av.TextFilter)
        end

        local aM = function(aM)
            aJ.ImageColor3 = aM
            J(aK, "ImageColor3", w(s.CurrentTheme, aM), 0.5):Play()
        end

        if ay ~= nil then
            u(aI:GetPropertyChangedSignal "Text", function()
                ae[ay] = aI.Text
            end)
        end

        u(aI.Focused, function()
            aM "Colors.Primary"
        end)

        u(aI.FocusLost, function()
            aM "Colors.Icons"
            local aN = aL.TEXTBOX_TEXT_FILTER

            if aN then
                local aO = aN(aI.Text)
                if type(aO) == "string" then
                    aI.Text = aO
                end
            end

            G(aA, aI.Text)
        end)

        u(aE.Activated, function()
            aI:CaptureFocus()
        end)

        return aL
    end

    function ah:AddSlider(av)
        local aw, ax = an("Slider", av)
        local ay = ao("Slider", av[7] or av.Flag)

        local az = av[2] or av.Min
        local aA = av[3] or av.Max
        local aB = av[4] or av.Increment
        local aC = av[5] or av.Default
        local aD = F(av[6] or av.Callback)

        if aB ~= nil and type(aB) ~= "number" then
            error(`"Tab.AddSlider.Increment". 'number', or 'nil' expected, got {typeof(aB)}`, 2)
        end

        if aC ~= nil and type(aC) ~= "number" then
            error(`"Tab.AddSlider.Default". 'number', or 'nil' expected, got {typeof(aC)}`, 2)
        end

        assert(type(az) == "number",`"Tab.AddSlider.Min", 'number' expected, got {typeof(az)}`)
        assert(type(aA) == "number",`"Tab.AddSlider.Max", 'number' expected, got {typeof(aA)}`)

        local aE = V[self]
        local aF = T[self].Container

        local aG, aH, aI = am(self, aw, ax, UDim2.new(0.55, 0, 0, 0))

        if aC == nil then
            aC = az
        end

        if aB == nil then
            aB = 1
        end

        if ay ~= nil and type(ae[ay]) == "number" then
            aC = ae[ay]
        end

        local aJ = E("TextButton", aG, {
            Size = UDim2.new(0.45, 0, 1, 0),
            Position = UDim2.new(1, 0, 0, 0),
            AnchorPoint = Vector2.new(1, 0),
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Text = ""
        })

        local aK = E("Frame", aJ, {
            Size = UDim2.new(1, - 20, 0, 6),
            Position = UDim2.fromScale(0.5, 0.5),
            AnchorPoint = Vector2.new(0.5, 0.5),
            ThemeTag = {
                OBJECTS = aE,
                BackgroundColor3 = "Colors.Stroke"
            },
            Elements = {
                Corner = UDim.new(0.5, 0)
            }
        })

        local aL = E("Frame", aK, {
            Size = UDim2.fromScale(0, 1),
            BorderSizePixel = 0,
            ThemeTag = {
                OBJECTS = aE,
                BackgroundColor3 = "Colors.Primary"
            },
            Elements = {
                Corner = UDim.new(0.5, 0)
            }
        })

        local aM = E("Frame", aK, {
            Size = UDim2.new(0, 6, 0, 12),
            BackgroundColor3 = Color3.fromRGB(220, 220, 220),
            Position = UDim2.fromScale(0, 0.5),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 0.2,
            Elements = {
                Corner = UDim.new(0, 12)
            }
        })

        local aN = E("TextLabel", aJ, {
            Size = UDim2.new(0, 50, 0, 14),
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(0, - 1, 0.5, 0),
            BackgroundTransparency = 1,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Right,
            ThemeTag = {
                OBJECTS = aE,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.SliderValue"
            }
        })

        local aO = E("UIScale", aN)

        local aP = ak.Slider.new(self, aG, aH, aI, aD)

        aP.Min = az
        aP.Max = aA
        aP.Increment = aB
        local aQ = function(aQ)
            return (aQ - az) / (aA - az)
        end
        local aR = function(aR)
            return (aR * (aA - az)) + az
        end
        local aS = function(aS)
            return math.round(aS / aB) * aB
        end
        local aT = function(aT, aU)
            if aT == aP.Value then
                return
            end

            if ay ~= nil then
                ae[ay] = aT
            end

            task.defer(G, aD, aT)
            aP.Value = aT

            local aV = UDim2.fromScale(aU, 0.5)
            local aW = UDim2.fromScale(aU, 1)

            aN.Text = tostring(math.floor(aT * 1000) / 1000)

            if self.Selected then
                J(aM, "Position", aV, 0.3):Play()
                J(aL, "Size", aW, 0.3):Play()
            else
                aM.Position = aV
                aL.Size = aW
            end
        end
        local aU = function(aU)
            local aV = math.clamp(aS(aU), az, aA)
            aT(aV, aQ(aV))
        end

        aP.WHEN_VALUE_CHANGED = aU
        local aV = function(aV, aW)
            local aX = (p.X - aV.X) / aW.X
            local aY = math.clamp(aX, 0, 1)
            local aZ = aR(aY)
            local a_ = aS(aZ)
            local a0 = math.clamp(a_, az, aA)
            aT(a0, aQ(a0))
        end

        local aW = Random.new()
        aU(aC)

        u(aJ.MouseButton1Down, function()
            if A ~= false then
                return
            end

            J(aM, "BackgroundTransparency", 0, 0.3):Play()
            aF.ScrollingEnabled = false
            A = true

            local aX = aK.AbsolutePosition
            local aY = aK.AbsoluteSize

            while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                aV(aX, aY)
                task.wait()
            end

            A = false
            J(aM, "BackgroundTransparency", 0.2, 0.3):Play()
            aF.ScrollingEnabled = true
        end)

        u(aN:GetPropertyChangedSignal "Text", function()
            if not self.Selected then
                return
            end

            aO.Scale = 0.3
            J(aO, "Scale", 1.2, 0.1):Play()

            local aX = J(aN, "Rotation", aW:NextNumber(- 7.5, 7.5), 0.15)
            aX:Play()
            aX.Completed:Wait()

            J(aO, "Scale", 1, 0.2):Play()
            J(aN, "Rotation", 0, 0.1):Play()
        end)

        return aP
    end

    function ah:AddDiscordInvite(av)
        local aw, ax = an("DiscordInvite", av)
        local ay = av.Icon or av.Image or av.Logo
        local az = av.Banner or av.BannerColor
        local aA = av.Online or av.MembersOnline
        local aB = av.Members or av.TotalMembers
        local aC = av.Invite or av.Link

        assert(type(aC) == "string", '"Tab.AddDiscordInvite.Invite". \'string\' expected')

        if az ~= nil and typeof(az) ~= "Color3" and type(az) ~= "string" then
            error('"Tab.AddDiscordInvite.Banner". Color3, string, or nil expected', 2)
        end
        if aA ~= nil and type(aA) ~= "number" then
            error('"Tab.AddDiscordInvite.Online". number expected', 2)
        end
        if aB ~= nil and type(aB) ~= "number" then
            error('"Tab.AddDiscordInvite.Members". number or nil expected', 2)
        end

        if I.ZIndexBehavior ~= Enum.ZIndexBehavior.Sibling then
            I.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end

        local themeObjects = V[self]
        local container = T[self].Container
        local inviteCode = aC:match("discord%.gg/([%w_%-]+)")
            or aC:match("discord%.com/invite/([%w_%-]+)")
            or aC:match("discordapp%.com/invite/([%w_%-]+)")
            or aC:match("^%s*([%w_%-]+)%s*$")
        assert(type(inviteCode) == "string" and #inviteCode > 0, '"Tab.AddDiscordInvite.Invite". invalid Discord invite URL or code')

        local card = E("Frame", "Option", container, {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 148)
        })

        local cardBody = E("CanvasGroup", card, {
            Size = UDim2.new(0, 178, 1, -15),
            Position = UDim2.new(0, 5, 1, 0),
            AnchorPoint = Vector2.new(0, 1),
            ClipsDescendants = true,
            Elements = {
                Corner = UDim.new(0, 18),
                Stroke = {ThemeTag = {Color = "Colors.Border.Default"}}
            },
            ThemeTag = {
                OBJECTS = themeObjects,
                BackgroundColor3 = "Colors.Buttons.Default"
            }
        })

        local banner = E("ImageLabel", cardBody, {
            BackgroundColor3 = Color3.new(1, 1, 1),
            Size = UDim2.new(1, 0, 0, 42),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Image = "",
            ScaleType = Enum.ScaleType.Crop
        })

        local inviteLink = E("TextLabel", card, {
            Position = UDim2.fromOffset(5, 0),
            Size = UDim2.new(1, 0, 0, 15),
            TextColor3 = Color3.fromRGB(40, 150, 255),
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            TextSize = 9,
            Text = aC,
            ThemeTag = {
                OBJECTS = themeObjects,
                TextColor3 = "Colors.Link",
                Font = "Font.Medium"
            }
        })

        local serverIcon = E("ImageLabel", cardBody, {
            Size = UDim2.fromOffset(33, 33),
            Position = UDim2.new(0, 10, 0.28, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            Image = ay or "",
            BackgroundTransparency = 1,
            ScaleType = Enum.ScaleType.Crop,
            ThemeTag = {
                OBJECTS = themeObjects,
                BackgroundColor3 = "Colors.Buttons.Default"
            },
            Elements = {
                Corner = UDim.new(0, 16),
                Stroke = {
                    Thickness = 2.2,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    ThemeTag = {OBJECTS = themeObjects, Color = "Colors.Border.Default"}
                }
            }
        })

        local serverTitle = E("TextLabel", cardBody, {
            Size = UDim2.new(1, -10, 0, 14),
            Position = UDim2.new(0, 50, 0.31, 0),
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            TextSize = 11,
            Text = aw,
            TextTruncate = Enum.TextTruncate.AtEnd,
            ThemeTag = {
                OBJECTS = themeObjects,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        local countRow = nil
        local onlineLabel = nil
        local membersLabel = nil
        if aA ~= nil or aB ~= nil or av.FetchAPI ~= false then
            countRow = E("Frame", cardBody, {
                Size = UDim2.new(1, -10, 0, 11),
                Position = UDim2.new(0, 0, 0.52, 0),
                BackgroundTransparency = 1,
                Elements = {
                    Padding = {
                        PaddingLeft = UDim.new(0, 7),
                        PaddingRight = UDim.new(0, 10)
                    },
                    ListLayout = {
                        HorizontalAlignment = Enum.HorizontalAlignment.Left,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        FillDirection = Enum.FillDirection.Horizontal,
                        Padding = UDim.new(0, 8)
                    }
                }
            })

            local function makeCount(color, text)
                local frame = E("Frame", countRow, {
                    Size = UDim2.fromScale(0, 1),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = 1
                })
                E("Frame", frame, {
                    Size = UDim2.fromOffset(4, 4),
                    Position = UDim2.new(0, 4, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundColor3 = color,
                    Elements = {Corner = UDim.new(1, 0)}
                })
                local label = E("TextLabel", frame, {
                    Size = UDim2.new(0, 0, 1, 0),
                    Position = UDim2.new(0, 12, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = 1,
                    TextSize = 7,
                    Text = text,
                    ThemeTag = {
                        OBJECTS = themeObjects,
                        TextColor3 = "Colors.Text.Darker",
                        Font = "Font.Normal"
                    }
                })
                return label
            end

            if av.FetchAPI ~= false then
                onlineLabel = makeCount(Color3.fromRGB(67, 181, 129), "Loading...")
                membersLabel = makeCount(Color3.fromRGB(86, 101, 105), "Loading...")
            else
                if aA ~= nil then onlineLabel = makeCount(Color3.fromRGB(67, 181, 129), N(aA) .. " Online") end
                if aB ~= nil then membersLabel = makeCount(Color3.fromRGB(86, 101, 105), N(aB) .. " Members") end
            end
        end

        local description = E("TextLabel", cardBody, {
            Size = UDim2.new(1, -20, 0, 22),
            Position = UDim2.new(0, 10, countRow and 0.62 or 0.56, 0),
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
            TextSize = 8,
            Text = ax or "",
            TextWrapped = true,
            TextTruncate = Enum.TextTruncate.AtEnd,
            ThemeTag = {
                OBJECTS = themeObjects,
                TextColor3 = "Colors.Text.Darker",
                Font = "Font.Medium"
            }
        })

        local footer = E("Frame", cardBody, {
            Size = UDim2.new(1, 0, 0, 42),
            Position = UDim2.new(0, 0, 1, 0),
            AnchorPoint = Vector2.new(0, 1),
            BorderSizePixel = 0,
            ThemeTag = {
                OBJECTS = themeObjects,
                BackgroundColor3 = "Colors.Buttons.Default"
            }
        })

        if #description.Text > 0 then
            E("UIGradient", footer, {
                Rotation = -90,
                Transparency = NumberSequence.new{
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(0.6, 0),
                    NumberSequenceKeypoint.new(1, 1)
                }
            })
        end

        local joinButton = E("TextButton", footer, {
            Position = UDim2.new(0.5, 0, 1, -9),
            Size = UDim2.new(1, -18, 0, 18),
            AnchorPoint = Vector2.new(0.5, 1),
            Text = "Copy Invite",
            AutoButtonColor = false,
            Elements = {Corner = UDim.new(0.5, 0)},
            ThemeTag = {
                OBJECTS = themeObjects,
                BackgroundColor3 = "Colors.JoinButton",
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        if typeof(az) == "Color3" then
            banner.BackgroundTransparency = 0
            banner.BackgroundColor3 = az
            E("UIGradient", banner, {
                Rotation = -15,
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, az),
                    ColorSequenceKeypoint.new(1, az:Lerp(Color3.new(1, 1, 1), 0.2))
                }
            })
        elseif type(az) == "string" then
            banner.BackgroundTransparency = 1
            banner.Image = az
        end

        local copiedAt = 0
        u(joinButton.Activated, function()
            if tick() - copiedAt < 0 then return end
            copiedAt = tick() + 5
            local previousText = joinButton.Text
            local copied = false
            if type(setclipboard) == "function" then
                copied = pcall(setclipboard, aC)
            end
            joinButton.Text = copied and "Copied to Clipboard!" or "Clipboard unavailable"
            task.delay(2, function()
                if joinButton and joinButton.Parent then
                    joinButton.Text = previousText
                end
            end)
        end)

        local component = setmetatable({
            DESTROY_ELEMENT = card,
            VISIBLE_ELEMENT = card,
            Title = aw,
            Description = ax,
            DESCRIPTION_LABEL = description,
            TITLE_LABEL = serverTitle,
            Kind = "DiscordInvite",
            Parent = self,
            Invite = aC,
            InviteCode = inviteCode,
            Loading = false,
            ApiData = nil,
            ApiError = nil
        }, ai)

        local function setCount(label, value, suffix)
            if label and label.Parent and type(value) == "number" then
                label.Text = N(value) .. suffix
            end
        end

        local function setDiscordImage(imageObject, imageUrl, cacheName)
            if not imageObject or not imageObject.Parent then return end

            local assetLoader = getcustomasset or getsynasset
            local requestFunction = nil
            if type(syn) == "table" and type(syn.request) == "function" then
                requestFunction = syn.request
            elseif type(http_request) == "function" then
                requestFunction = http_request
            elseif type(request) == "function" then
                requestFunction = request
            end

            if type(assetLoader) == "function" and type(e) == "function" and requestFunction then
                local ok, response = pcall(requestFunction, {
                    Url = imageUrl,
                    Method = "GET"
                })
                local bytes = ok and type(response) == "table" and (response.Body or response.body) or nil
                if type(bytes) == "string" and #bytes > 0 then
                    local folder = "HzsAssets"
                    if type(d) == "function" then
                        pcall(d, folder)
                    end
                    local path = folder .. "/" .. cacheName
                    local writeOk = pcall(e, path, bytes)
                    if writeOk then
                        local assetOk, assetUri = pcall(assetLoader, path)
                        if assetOk and type(assetUri) == "string" then
                            imageObject.Image = assetUri
                            return
                        end
                    end
                end
            end

            pcall(function()
                imageObject.Image = imageUrl
            end)
        end

        local function loadInviteData()
            local url = "https://discord.com/api/v10/invites/" .. inviteCode .. "?with_counts=true"
            local body = nil
            local lastError = nil

            local requestFunction = nil
            if type(syn) == "table" and type(syn.request) == "function" then
                requestFunction = syn.request
            elseif type(http_request) == "function" then
                requestFunction = http_request
            elseif type(request) == "function" then
                requestFunction = request
            end

            if requestFunction then
                local ok, response = pcall(requestFunction, {
                    Url = url,
                    Method = "GET",
                    Headers = {Accept = "application/json"}
                })
                if ok and type(response) == "table" then
                    local status = response.StatusCode or response.Status or 200
                    if tonumber(status) and tonumber(status) >= 200 and tonumber(status) < 300 then
                        body = response.Body or response.body
                    else
                        lastError = "Discord API HTTP " .. tostring(status)
                    end
                elseif not ok then
                    lastError = tostring(response)
                end
            end

            if type(body) ~= "string" or body == "" then
                local ok, result = pcall(function()
                    return game:HttpGet(url)
                end)
                if ok and type(result) == "string" and result ~= "" then
                    body = result
                else
                    lastError = tostring(result)
                end
            end

            if type(body) ~= "string" or body == "" then
                local ok, result = pcall(function()
                    return k:GetAsync(url)
                end)
                if ok and type(result) == "string" and result ~= "" then
                    body = result
                else
                    lastError = tostring(result)
                end
            end

            if type(body) ~= "string" or body == "" then
                return nil, lastError or "Discord API request unavailable"
            end

            local decodeOk, data = pcall(function()
                return k:JSONDecode(body)
            end)
            if not decodeOk or type(data) ~= "table" then
                return nil, "Invalid JSON response from Discord API"
            end
            if type(data.message) == "string" and data.code then
                return nil, data.message
            end
            return data
        end

        function component:Refresh()
            if self.Loading or self.Destroyed then return self end
            self.Loading = true
            self.ApiError = nil
            task.spawn(function()
                local data, err = loadInviteData()
                if self.Destroyed or not card.Parent then return end
                self.Loading = false

                if not data then
                    self.ApiError = err or "Unable to load invite"
                    if onlineLabel and onlineLabel.Parent then
                        onlineLabel.Text = type(aA) == "number" and (N(aA) .. " Online") or "Online unavailable"
                    end
                    if membersLabel and membersLabel.Parent then
                        membersLabel.Text = type(aB) == "number" and (N(aB) .. " Members") or "Members unavailable"
                    end
                    warn("[HzsLib] Discord invite API: " .. tostring(self.ApiError))
                    return
                end

                self.ApiData = data
                local guild = type(data.guild) == "table" and data.guild or nil
                if not guild then
                    self.ApiError = "Invite does not contain guild information"
                    if onlineLabel and onlineLabel.Parent then onlineLabel.Text = "Online unavailable" end
                    if membersLabel and membersLabel.Parent then membersLabel.Text = "Members unavailable" end
                    return
                end

                self.Guild = guild
                self.GuildId = guild.id
                self.OnlineCount = data.approximate_presence_count
                self.MemberCount = data.approximate_member_count

                if av.UseGuildName ~= false and type(guild.name) == "string" and guild.name ~= "" then
                    serverTitle.Text = guild.name
                    self.Title = guild.name
                end
                if av.UseGuildDescription ~= false and type(guild.description) == "string" and guild.description ~= "" then
                    description.Text = guild.description
                    self.Description = guild.description
                end

                if type(data.approximate_presence_count) == "number" then
                    setCount(onlineLabel, data.approximate_presence_count, " Online")
                elseif onlineLabel and onlineLabel.Parent then
                    onlineLabel.Text = "Online unavailable"
                end
                if type(data.approximate_member_count) == "number" then
                    setCount(membersLabel, data.approximate_member_count, " Members")
                elseif membersLabel and membersLabel.Parent then
                    membersLabel.Text = "Members unavailable"
                end

                if av.UseGuildIcon ~= false and type(guild.icon) == "string" and type(guild.id) == "string" then
                    local extension = guild.icon:sub(1, 2) == "a_" and "gif" or "png"
                    local imageUrl = "https://cdn.discordapp.com/icons/" .. guild.id .. "/" .. guild.icon .. "." .. extension .. "?size=128"
                    setDiscordImage(serverIcon, imageUrl, "discord_guild_" .. guild.id .. "_icon." .. extension)
                end

                if av.UseGuildBanner ~= false and type(guild.banner) == "string" and type(guild.id) == "string" then
                    local extension = guild.banner:sub(1, 2) == "a_" and "gif" or "png"
                    banner.BackgroundTransparency = 1
                    local imageUrl = "https://cdn.discordapp.com/banners/" .. guild.id .. "/" .. guild.banner .. "." .. extension .. "?size=512"
                    setDiscordImage(banner, imageUrl, "discord_guild_" .. guild.id .. "_banner." .. extension)
                end
            end)
            return self
        end

        function component:GetData()
            return self.ApiData
        end

        function component:GetCounts()
            return self.OnlineCount, self.MemberCount
        end

        if av.FetchAPI ~= false then
            component:Refresh()
        end

        return component
    end

    function ah:AddParagraph(av, aw)
        assert(type(av) == "string",`"Tab.AddParagraph[param 1]". 'string' expected, got {typeof(av)}`)

        if aw ~= nil and type(aw) ~= "string" then
            error(`"Tab.AddParagraph[param 2]". 'string', or 'nil' expected, got {typeof(aw)}`, 2)
        end

        local ax = V[self]
        local ay, az, aA = am(self, av, aw, UDim2.new(1, 0, 0, 0))

        return setmetatable({
            DESTROY_ELEMENT = ay,
            VISIBLE_ELEMENT = ay,
            TITLE_LABEL = az,
            DESCRIPTION_LABEL = aA,

            Title = av,
            Description = aw,

            Parent = self,
            Kind = "Paragraph"
        }, ai)
    end

    function ah:AddDropdown(av)
        local aw, ax = an("Dropdown", av)
        local ay = ao("Dropdown", av[5] or av.Flag)

        local az = av[2] or av.Options
        local aA = av[3] or av.Default
        local aB = F(av[4] or av.Callback)
        local aC = av.MultiSelect

        if aA ~= nil and type(aA) ~= "table" and type(aA) ~= "string" then
            error(`"Tab.AddDropdown.Default". 'string', 'table', or 'nil' expected, got {typeof(aA)}`, 2)
        end

        if az ~= nil and type(az) ~= "table" then
            error(`"Tab.AddDropdown.Options". 'table', or 'nil' expected, got {typeof(az)}`, 2)
        end

        if aC ~= nil and type(aC) ~= "boolean" then
            error(`"Tab.AddDropdown.MultiSelect". 'boolean', or 'nil' expected, got {typeof(aC)}`, 2)
        end

        if ay and type(ae[ay]) == (aC and "table" or "string") then
            aA = ae[ay]
        end

        local aD = V[self]
        local aE, aF, aG = am(self, aw, ax, UDim2.new(1, - 150, 0, 0))

        local aH = E("Frame", aE, {
            Size = UDim2.new(0, 150, 0, 18),
            Position = UDim2.new(1, - 10, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            Elements = {
                Corner = UDim.new(0, 10)
            },
            ThemeTag = {
                OBJECTS = aD,
                BackgroundColor3 = "Colors.Stroke"
            }
        })

        local aI = E("TextLabel", aH, {
            Size = UDim2.new(0.85, 0, 0.85, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Text = "...",
            ThemeTag = {
                OBJECTS = aD,
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        local aJ = {
            OBJECTS = aD,
            Image = "Icons.Dropdown.Open",
            ImageColor3 = "Colors.Icons"
        }

        local aK = E("ImageLabel", aH, {
            Size = UDim2.new(0, 15, 0, 15),
            Position = UDim2.new(0, - 5, 0.5),
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            ThemeTag = aJ
        })

        local aL = ak.Dropdown.new(self, aE, aF, aG, aB)

        local aM
        local aN = false
        local aO = false

        local aP = {}
        local aQ = {}
        local aR = {}
        local aS = {}

        aL.DROPDOWN_OPTIONS = aR
        aL.Opened = aO
        local aT = function(aT, aU)
            aJ.ImageColor3 = aT
            aJ.Image = aU

            J(aK, "ImageColor3", w(s.CurrentTheme, aT), 0.35):Play()
            aK.Image = w(s.CurrentTheme, aU)
        end
        local aU = function(aU)
            aO = aU
            aL.Opened = aU

            local aV = aU and "Colors.Primary" or "Colors.Icons"
            local aW = aU and "Icons.Dropdown.Close" or "Icons.Dropdown.Open"
            aT(aV, aW)
        end
        local aV = function()

            aU(false)
        end
        local aW = function()

            local aW = {}
            for aX, aY in aQ do
                if not aY then
                    continue
                end
                aW[#aW + 1] = aX
            end
            return aW
        end
        local aX = function(aX)
            local aY = type(aX) == "table" and table.concat(aX, ", ") or (aX or "")

            if #aY >= 100 then
                aY = aY:sub(1, 97) .. "..."
            end

            aI.Text = #aY ~= 0 and aY or "..."
        end
        local aY = function()

            aN = false

            local aY = aC and aW() or aM and aM.Name
            G(aB, aC and aQ or aY)
            aX(aY)

            if ay ~= nil then
                ae[ay] = aY
            end
        end
        local aZ = function()

            if not aN then
                aN = true
                task.delay(0.1, aY)
            end
        end
        local a_ = function(a_)
            if aC then
                local a0 = not a_.Selected
                X.SetOptionValue(a_, a0)
                aQ[a_.Name] = a0
            else
                if aM == a_ then
                    return nil
                elseif aM ~= nil then
                    X.SetOptionValue(aM, false)
                end

                aM = a_
                X.SetOptionValue(a_, true)
            end

            aZ()
        end
        local a0 = function(a0)
            a0 = tostring(a0)
            if aS[a0] then
                return
            end

            local a1 = {
                Name = a0,
                DisplayName = a0,
                Selected = false
            }

            if aC and aQ[a0] == nil then
                aQ[a0] = false
            end

            aS[a0] = a1
            aR[#aR + 1] = a1
            return a1
        end
        local a1 = function(a1)
            if aO == a1 then
                return
            end

            if not X then
                X = ap()
            end

            if a1 then
                if not X.OpenDropdown(aV) then
                    return
                end

                X.SetHolder(aH)
                X.SetMultiSelect(aC)
                X.SetOnClicked(a_)
                X.SetOptions(aR)
            else
                X.CloseDropdown()
            end

            aU(a1)
        end
        local a2 = function(a2, a3)
            if a3 and type(a2) == "boolean" then
                return a2 == true and aR[a3]
            end

            return if type(a2) == "number" then
            aR[a2]
            else
            aS[tostring(a2)]
        end
        local a3 = function(a3)
            a3.Selected = true

            if aC then
                aQ[a3.Name] = true
            else
                aM = a3
            end
        end
        local a4 = function(...)

            local a4 = a2(...)

            if a4 then
                a3(a4)
            elseif aC and type(...) == "string" then
                aP[select(1, ...)] = true
            end
        end
        local a5 = function()

            if not aA then
                return
            end

            for a5 = 1, (aC and #aA or 1) do
                a4(aA[a5], a5)
            end
        end
        local a6 = function(a6)
            local a7 = table.find(aR, a6)

            if a7 then
                table.remove(aR, a7)
            end

            if a6.Instance then
                a6.Instance:Destroy()
            end

            aS[a6.Name] = nil
        end
        local a7 = function(a7)
            if aC then
                local a8 = a7.Name
                return (aQ[a8] or aP[a8]) == true
            else
                return aM and aM.Name == a7.Name
            end
        end

        aL.ADD_DROPDOWN_OPTION = function(a8)
            if type(a8) == "table" then
                for a9 = 1, #a8 do
                    aL:Add(a8[a9])
                end

                return nil
            end

            local a9 = a0(a8)

            if a9 then
                if aL.Opened then
                    X.CreateOptionTemplate(a9, true)
                end

                if a7(a9) then
                    a3(a9)

                    if a9.Instance then
                        X.SetOptionValue(a9, a9.Selected)
                    end
                end

                aZ()
            end
        end

        aL.REMOVE_DROPDOWN_OPTION = function(a8)
            local a9 = aS[tostring(a8)]
            if a9 then
                a6(a9)
            end
        end

        aL.CLEAR_DROPDOWN = function()
            for a8 = #aR, 1, - 1 do
                local a9 = aR[a8]
                if a9.Instance then
                    a9.Instance:Destroy()
                end

                aS[a9.Name] = nil
                aR[a8] = nil
            end

            if aL.Opened then
                X.Clear()
            end
        end

        do
            if az then
                for a8 = 1, #az do
                    a0(az[a8])
                end
            end

            if type(aA) == "table" then
                a5()
            elseif type(aA) == "string" or type(aA) == "number" then
                local a8 = a2(aA)

                if a8 then
                    a3(a8)
                end
            end

            if aC then
                local a8 = aW()
                task.defer(G, aB, aQ)
                aX(a8)
            else
                local a8 = aM
                local a9 = a8 and a8.Name or ""
                task.defer(G, aB, a9)
                aX(a9)
            end
        end

        u(aE.Activated, function()
            a1(not aO)
        end)

        return aL
    end

    function ah:AddThemeSelector(av)
        local config = type(av) == "table" and av or {}
        local options = s:GetThemes()
        table.sort(options)
        local callbacks = F(config.Callback)
        return self:AddDropdown({
            Title = config.Title or "Interface Theme",
            Desc = config.Desc or "Choose a preset theme for HzsLib",
            Options = options,
            Default = s.CurrentTheme and s.CurrentTheme.Name or s.Default.Theme,
            Flag = config.Flag,
            Callback = function(name)
                if type(name) == "string" and s:IsValidTheme(name) then
                    s:SelectTheme(name)
                    G(callbacks, name)
                end
            end
        })
    end

    ah.AddThemeDropdown = ah.AddThemeSelector
    ah.AddThemePicker = ah.AddThemeSelector

    function ah:AddColorPicker(av)
        assert(type(av) == "table", '"Tab.AddColorPicker". configuration table expected')
        local title = av.Title or av.Name or "Accent Color"
        local description = av.Desc or av.Description or "Choose a custom interface accent"
        local flag = ao("ColorPicker", av.Flag)
        local callbacks = F(av.Callback)
        local defaultColor = av.Default or av.Color or (s.CurrentTheme and s.CurrentTheme.Colors.Primary) or Color3.fromRGB(255, 105, 180)
        assert(typeof(defaultColor) == "Color3", '"Tab.AddColorPicker.Default" must be a Color3')

        if flag and type(ae[flag]) == "table" then
            local saved = ae[flag]
            if type(saved[1]) == "number" and type(saved[2]) == "number" and type(saved[3]) == "number" then
                defaultColor = Color3.new(math.clamp(saved[1], 0, 1), math.clamp(saved[2], 0, 1), math.clamp(saved[3], 0, 1))
            end
        end

        local row, label, desc = am(self, title, description, UDim2.new(1, - 72, 0, 0))
        local swatch = E("TextButton", "ColorPreview", row, {
            Size = UDim2.fromOffset(48, 22),
            Position = UDim2.new(1, - 10, 0.5, 0),
            AnchorPoint = Vector2.new(1, 0.5),
            Text = "",
            AutoButtonColor = false,
            BackgroundColor3 = defaultColor,
            Elements = {Corner = UDim.new(0.5, 0), Stroke = {Thickness = 1, ThemeTag = {Color = "Colors.Border.Default"}}}
        })

        local popup = E("Frame", "HzsLibColorPicker", I, {
            Visible = false,
            Size = UDim2.fromOffset(230, 202),
            Position = UDim2.fromOffset(12, 12),
            BackgroundColor3 = Color3.fromRGB(22, 15, 22),
            BorderSizePixel = 0,
            ZIndex = 30,
            Elements = {Corner = UDim.new(0, 16), Stroke = {Thickness = 1.2, ThemeTag = {Color = "Colors.Border.Default"}}}
        })
        local popupTitle = E("TextLabel", "Title", popup, {
            Position = UDim2.fromOffset(12, 8), Size = UDim2.new(1, - 48, 0, 22),
            BackgroundTransparency = 1, Text = "Accent color", TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.GothamBold,
            TextColor3 = Color3.fromRGB(255, 240, 248), ZIndex = 31
        })
        local close = E("TextButton", "Close", popup, {
            Position = UDim2.new(1, - 30, 0, 7), Size = UDim2.fromOffset(22, 22),
            Text = "×", TextSize = 17, Font = Enum.Font.GothamBold,
            TextColor3 = Color3.fromRGB(255, 220, 238),
            BackgroundColor3 = Color3.fromRGB(53, 31, 46), AutoButtonColor = false, ZIndex = 31,
            Elements = {Corner = UDim.new(0.5, 0)}
        })
        local sv = E("TextButton", "SaturationValue", popup, {
            Position = UDim2.fromOffset(12, 36), Size = UDim2.fromOffset(206, 104),
            Text = "", AutoButtonColor = false, Active = true,
            BackgroundColor3 = Color3.fromHSV(0, 1, 1), BorderSizePixel = 0, ZIndex = 31,
            ClipsDescendants = true, Elements = {Corner = UDim.new(0, 9)}
        })
        local white = E("Frame", "WhiteOverlay", sv, {
            Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(1, 1, 1),
            BorderSizePixel = 0, Active = false, ZIndex = 32
        })
        E("UIGradient", white, {Rotation = 0, Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)
        }})
        local black = E("Frame", "BlackOverlay", sv, {
            Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0, Active = false, ZIndex = 33
        })
        E("UIGradient", black, {Rotation = 90, Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)
        }})
        local marker = E("Frame", "PickerMarker", sv, {
            Size = UDim2.fromOffset(12, 12), Position = UDim2.fromScale(1, 0),
            AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1,
            ZIndex = 34, Elements = {Corner = UDim.new(0.5, 0), Stroke = {Thickness = 2, Color = Color3.new(1, 1, 1)}}
        })
        local hueBar = E("TextButton", "HueBar", popup, {
            Position = UDim2.fromOffset(12, 148), Size = UDim2.fromOffset(206, 13),
            Text = "", AutoButtonColor = false, Active = true, BorderSizePixel = 0, ZIndex = 31,
            Elements = {Corner = UDim.new(0.5, 0)}
        })
        E("UIGradient", hueBar, {Rotation = 0, Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 255, 0)),
                ColorSequenceKeypoint.new(0.333, Color3.fromRGB(0, 255, 0)),
                ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.667, Color3.fromRGB(0, 0, 255)),
                ColorSequenceKeypoint.new(0.833, Color3.fromRGB(255, 0, 255)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
        }})
        local hueMarker = E("Frame", "HueMarker", hueBar, {
            Size = UDim2.fromOffset(5, 17), Position = UDim2.fromScale(0, 0.5),
            AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Color3.new(1, 1, 1),
            ZIndex = 33, Elements = {Corner = UDim.new(0.5, 0), Stroke = {Thickness = 1, Color = Color3.fromRGB(35, 25, 35)}}
        })
        local hexLabel = E("TextLabel", "HexValue", popup, {
            Position = UDim2.fromOffset(13, 171), Size = UDim2.new(1, - 94, 0, 20),
            BackgroundTransparency = 1, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code, TextColor3 = Color3.fromRGB(238, 220, 231), ZIndex = 31
        })
        local done = E("TextButton", "Done", popup, {
            Position = UDim2.new(1, - 78, 1, - 29), Size = UDim2.fromOffset(66, 21),
            Text = "Done", TextSize = 10, Font = Enum.Font.GothamBold,
            TextColor3 = Color3.fromRGB(255, 255, 255), BackgroundColor3 = Color3.fromRGB(205, 75, 139),
            AutoButtonColor = false, ZIndex = 31, Elements = {Corner = UDim.new(0.5, 0)}
        })

        local h, sat, value = defaultColor:ToHSV()
        local currentColor = defaultColor
        local dragging = nil
        local popupOpen = false
        local picker

        local function setColor(newColor, save)
            if typeof(newColor) ~= "Color3" then
                return
            end
            currentColor = newColor
            h, sat, value = newColor:ToHSV()
            if picker then
                picker.Value = newColor
            end
            swatch.BackgroundColor3 = newColor
            sv.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
            marker.Position = UDim2.fromScale(sat, 1 - value)
            hueMarker.Position = UDim2.new(h, 0, 0.5, 0)
            hexLabel.Text = string.format("#%02X%02X%02X", math.floor(newColor.R * 255 + 0.5), math.floor(newColor.G * 255 + 0.5), math.floor(newColor.B * 255 + 0.5))
            if av.ApplyToTheme ~= false then
                local target = string.lower(tostring(av.Target or av.ApplyTo or "accent"))
                if target == "border" or target == "borders" or target == "stroke" then
                    s:SetBorderColor(newColor, save == true)
                else
                    s:SetAccentColor(newColor, save == true)
                end
            end
            if save and flag then
                ae[flag] = {newColor.R, newColor.G, newColor.B}
            end
            G(callbacks, newColor)
        end

        local function positionPopup()
            local screen = I.AbsoluteSize
            local scale = (ad and ad.Scale) or 1
            local x = math.clamp(swatch.AbsolutePosition.X - 170, 8, math.max(8, screen.X - 238))
            local y = swatch.AbsolutePosition.Y + swatch.AbsoluteSize.Y + 8
            if y + popup.AbsoluteSize.Y * scale > screen.Y - 8 then
                y = swatch.AbsolutePosition.Y - popup.AbsoluteSize.Y * scale - 8
            end
            popup.Position = UDim2.fromOffset(x / scale, y / scale)
        end

        local function openPopup()
            positionPopup()
            popup.Visible = true
            popupOpen = true
        end
        local function closePopup()
            popup.Visible = false
            popupOpen = false
            dragging = nil
        end

        local function updateSV(point)
            local pos = sv.AbsolutePosition
            local size = sv.AbsoluteSize
            sat = math.clamp((point.X - pos.X) / math.max(size.X, 1), 0, 1)
            value = 1 - math.clamp((point.Y - pos.Y) / math.max(size.Y, 1), 0, 1)
            setColor(Color3.fromHSV(h, sat, value), false)
        end
        local function updateHue(point)
            local pos = hueBar.AbsolutePosition
            local size = hueBar.AbsoluteSize
            h = math.clamp((point.X - pos.X) / math.max(size.X, 1), 0, 1)
            setColor(Color3.fromHSV(h, sat, value), false)
        end
        local function pointerBegin(input, kind)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = kind
                if kind == "sv" then
                    updateSV(input.Position)
                else
                    updateHue(input.Position)
                end
            end
        end
        u(sv.InputBegan, function(input) pointerBegin(input, "sv")
        end)
        u(hueBar.InputBegan, function(input) pointerBegin(input, "hue")
        end)
        u(i.InputChanged, function(input)
            if not dragging then
                return
            end
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragging == "sv" then
                    updateSV(input.Position)
                else
                    updateHue(input.Position)
                end
            end
        end)
        u(i.InputEnded, function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                setColor(currentColor, true)
                dragging = nil
            end
        end)
        u(swatch.Activated, function()
            if popupOpen then
                closePopup()
            else
                openPopup()
            end
        end)
        u(close.Activated, closePopup)
        u(done.Activated, function()
            setColor(currentColor, true)
            closePopup()
        end)
        u(row.Destroying, function()
            if popup.Parent then
                popup:Destroy()
            end
        end)

        setColor(defaultColor, false)
        picker = {
            Title = title, Description = description, Value = currentColor,
            SetColor = function(_, newColor)
                setColor(newColor, true)
                return picker
            end,
            SetValue = function(_, newColor)
                setColor(newColor, true)
                return picker
            end,
            GetColor = function()
                return currentColor
            end,
            Open = openPopup, Close = closePopup,
            SetVisible = function(_, visible) row.Visible = visible == true
            end,
            Destroy = function()
                closePopup()
                if popup.Parent then
                    popup:Destroy()
                end
                if row.Parent then
                    row:Destroy()
                end
            end
        }
        return picker
    end

    function ah:Destroy()
        assert(type(self) == "table" and self.IS_A_TAB,`"Tab.Destroy". {tostring(self)} is not a tab`)
        if self.IS_DESTROYED then
            return
        end
        local av = table.find(S, self)
        assert(av,`"Tab.Destroy". failed to destroy '{self.Title}'`)

        table.remove(S, av)

        for aw, ax in T[self] do
            ax:Destroy()
        end

        V[self]:destroy()

        T[self] = nil
        V[self] = nil

        setmetatable(self, nil)
    end

    function ah:SetVisible(av)
        assert(type(av) == "boolean",`"Tab.SetVisible[param 1]". 'boolean' extected, got {typeof(av)}`)

        for aw, ax in T[self] do
            ax.Visible = av
        end
    end

    function ah:Select()
        if ac == self then
            return nil
        end

        if ac then
            U[ac].Unselect()
        end

        ac = self
        U[ac].Select()
    end

    function ai:SetTitle(av)
        assert(type(av) == "string",`"Option.SetTitle". 'string' expected, got {typeof(av)}`)
        assert(self.TITLE_LABEL,`"Option.SetTitle". cannot change this option name {self.KIND}:{self.Title}`)

        self.TITLE_LABEL.Text = av
        self.Title = av
        return self
    end

    function ai:SetDescription(av)
        assert(av == nil or type(av) == "string",`"Option.SetDescription". 'string', or 'nil' expected, got {typeof(av)}`)
        assert(self.DESCRIPTION_LABEL,`"Option.SetDescription". cannot change this option description {self.KIND}:{self.Title}`)

        self.DESCRIPTION_LABEL.Text = av
        self.Description = av
        return self
    end

    function ai:SetVisible(av)
        assert(typeof(self.VISIBLE_ELEMENT) == "Instance",`"Option.SetVisible". cannot change this option visibility {self.KIND}:{self.Title}`)
        assert(type(av) == "boolean",`"Option.SetVisible". 'boolean' expected, got {typeof(av)}`)

        self.VISIBLE_ELEMENT.Visible = av
    end

    function ai:Destroy()
        assert(typeof(self.DESTROY_ELEMENT) == "Instance",`"Option.Destroy". cannot destroy this option {self.KIND}:{self.Title}`)

        self.DESTROY_ELEMENT:Destroy()
        setmetatable(self, nil)

        self.Destroyed = true
    end

    function ai:AddCallback(av)
        assert(self.CALLBACKS, "\"Option.AddCallback\". cannot add callback to this option.")
        assert(type(av) == "function",`"Option.AddCallback[param 1]". 'function' expected, got {typeof(av)}`)

        table.insert(self.CALLBACKS, av)
        return self
    end

    ai.NewCallback = ai.AddCallback
    ai.SetContent = ai.SetDescription
    ai.SetDesc = ai.SetDescription

    function aj:CreateMobileMinimizer(av)
        local aw = E("ImageButton", I, {
            Size = UDim2.fromOffset(35, 35),
            Position = UDim2.fromScale(0.17, 0.28),
            AnchorPoint = Vector2.new(0.5, 0.5),
            AutoButtonColor = false,
            ThemeTag = {
                BackgroundColor3 = "Colors.Buttons.Default"
            }
        })

        u(aw.Activated, function()
            ag:Minimize()
        end)

        av.Elements = {}

        if av.Corner then
            av.Elements.Corner = av.Corner
            av.Corner = nil
        end

        if av.Stroke then
            av.Elements.Stroke = av.Stroke
            av.Stroke = nil
        end

        D.Draggable(aw, ad, 0.5)
        D.SetProperties(aw, av)

        return aw
    end

    function aj:SetKeyCode(av)
        assert(au(av),`"Minimizer.SetKeyCode[param 1]". 'KeyCode' expected, got {typeof(av)}`)

        self.KeyCode = av
    end

    function ag:SelectTab(av)
        local aw = type(av) == "number" and S[av]

        if type(av) == "table" and av.IS_A_TAB then
            aw = av
        end

        if aw then
            aw:Select()
        elseif not aw then
            assert(type(av) == "number",`"Window.SelectTab" number or tab expected, got {typeof(av)}`)
            assert(av > 0,`"Window.SelectTab" the number must be greater than 0, value: {av}`)
            assert(av == math.floor(av),`"Winow.SelectTab" floor number expected, got {av}`)

            self.SelectedTab = av
        end
    end

    function ag:Minimize()
        ab.Visible = not ab.Visible
    end

    function ag:MakeTab(av)
        local aw = av[1] or av.Name or av.Title
        local ax = av[2] or av.Icon or av.Image

        assert(type(aw) == "string",`"Tab.Title" 'string' expected, got {typeof(aw)}`)
        assert(ax == nil or type(ax) == "string",`"Tab.Icon" 'string' expected, got {typeof(ax)}`)

        local ay = setmetatable({
            Selected = self.SelectedTab == #S + 1,
            Icon = s:GetIconByName(ax),
            Title = aw,

            Parent = self,
            IS_A_TAB = true
        }, ah)

        local az = self:GetElements()
        local aA = az.TabsContainer
        local aB = az.ContainerHolder

        local aC, aD, aE = al(self, ay, aA)

        local aF = J(aD, "Size", UDim2.new(1, 0, 1, 0), 0.3)
        local aG = UDim2.new(1, 0, 1, 150)

        local aH = 0.45

        local aI = {
            J(aE, "BackgroundTransparency", 0, aH),
            J(aE, "Size", UDim2.fromOffset(4, 13), aH)
        }

        local aJ = {
            J(aE, "BackgroundTransparency", 1, aH),
            J(aE, "Size", UDim2.fromOffset(4, 4), aH)
        }

        local aK = C:new()
        V[ay] = aK
        local aL = function(aL)
            for aM = 1, #aL do
                aL[aM]:Play()
            end
        end
        local aM = function()

            aL(aI)
            ay.Selected = true
            aK:changeRendering(true)
            aK:update()
            aD.Parent = aB
            aD.Size = aG
            aF:Play()
        end
        local aN = function()

            aL(aJ)
            ay.Selected = false
            aD.Parent = nil
            aK:changeRendering(false)
        end

        U[ay] = table.freeze{
            Unselect = aN,
            Select = aM
        }

        T[ay] = table.freeze{
            SelectTabButton = aC,
            Container = aD
        }

        table.insert(S, ay)

        u(aC.Activated, function()
            ay:Select()
        end)

        if ay.Selected then
            ay:Select()
        end

        return ay
    end

    function ag:StartWindow(av)
        local aw = av.MinimizeButton
        local ax = av.MainFrame
        local ay = av.Resizers
        local az = av.TopBar

        local aA = av.SubTitle
        local aB = av.Title
        self.TITLE_ROW = av.TitleRow
        self.TITLE_LABEL = aB
        self._TITLE_TAG_COUNT = self._TITLE_TAG_COUNT or 0

        Y = av.Dropdowns
        ab = av.MainFrame
        ad = av.UIScale
        ae = av.Flags

        local aC = ax.Size
        local aD = 0

        function ag:MinimizeButton()
            if (tick() - aD) < 0 then
                return false
            end

            if self.Minimized then
                aw.Image = "rbxassetid://10734896206"
                J(ax, "Size", aC, 0.25):Play()
            else
                aC = ax.Size
                aw.Image = "rbxassetid://10734924532"
                J(ax, "Size", UDim2.fromOffset(ax.Size.X.Offset, az.Size.Y.Offset), 0.25):Play()
            end

            for aE, aF in ay do
                aF.Visible = self.Minimized
            end

            self.Minimized = not self.Minimized
            aD = tick() + 0.5

            return true
        end

        function ag:GetTitle()
            return aB.Text
        end

        function ag:GetSubTitle()
            return aA.Text
        end

        function ag:SetTitle(aE)
            assert(type(aE) == "string",`"Window.SetTitle". 'string' expected, got {typeof(aE)}`)
            assert(#aE > 0, "\"Window.SetTitle\". the new 'Title' is too short.")

            aB.Text = aE
        end

        function ag:SetSubTitle(aE)
            assert(type(aE) == "string",`"Window.SetSubTitle". 'string' expected, got {typeof(aE)}`)
            assert(#aE > 0, "\"Window.SetSubTitle\". the new 'SubTitle' is too short.")

            aA.Text = aE
        end

        function ag:AddTag(av)
            assert(type(av) == "table", '"Window.AddTag". configuration table expected')

            local title = av[1] or av.Title or av.Text or av.Name
            assert(type(title) == "string" and #title > 0, '"Window.AddTag.Title". non-empty string expected')
            assert(typeof(self.TITLE_ROW) == "Instance", '"Window.AddTag". title row is not initialized')

            self._TITLE_TAG_COUNT = (self._TITLE_TAG_COUNT or 0) + 1
            local themeObjects = C:new()
            local variantColors = {
                success = Color3.fromRGB(72, 205, 145),
                warning = Color3.fromRGB(255, 184, 88),
                danger = Color3.fromRGB(255, 91, 119),
                error = Color3.fromRGB(255, 91, 119),
                info = Color3.fromRGB(105, 174, 255),
                premium = Color3.fromRGB(210, 139, 255),
                pink = Color3.fromRGB(255, 105, 180),
                neutral = Color3.fromRGB(190, 178, 190)
            }

            local variant = type(av.Variant) == "string" and string.lower(av.Variant) or nil
            local hasCustomAccent = typeof(av.Color) == "Color3"
            local customBackground = typeof(av.BackgroundColor) == "Color3" and av.BackgroundColor or nil
            local customStroke = typeof(av.StrokeColor) == "Color3" and av.StrokeColor or nil
            local themeLinkedAccent = not hasCustomAccent
                and customBackground == nil
                and (variant == nil or variant == "pink" or variantColors[variant] == nil)
            local accent = hasCustomAccent and av.Color
                or (variant and variant ~= "pink" and variantColors[variant])
                or (s.CurrentTheme and s.CurrentTheme.Colors.Primary)
                or Color3.fromRGB(255, 105, 180)
            local customTextColor = typeof(av.TextColor) == "Color3"
            local textColor = customTextColor and av.TextColor or (s.CurrentTheme and s.CurrentTheme.Colors.Text.Default) or Color3.fromRGB(255, 245, 250)
            local function getBackground(color)
                return customBackground or color:Lerp((s.CurrentTheme and s.CurrentTheme.Colors.Dialog.Background) or Color3.fromRGB(18, 12, 18), 0.72)
            end
            local function getStroke(color)
                return customStroke or color:Lerp(textColor, 0.12)
            end

            local badgeThemeTag = themeLinkedAccent and {
                OBJECTS = themeObjects,
                BackgroundColor3 = "Colors.Primary"
            } or nil

            local badge = E("Frame", "TitleTag", self.TITLE_ROW, {
                AutomaticSize = Enum.AutomaticSize.X,
                Size = UDim2.new(0, 0, 0, 20),
                BackgroundColor3 = getBackground(accent),
                BackgroundTransparency = 0.02,
                BorderSizePixel = 0,
                ClipsDescendants = true,
                LayoutOrder = 10 + self._TITLE_TAG_COUNT,
                ZIndex = 6,
                ThemeTag = badgeThemeTag,
                Elements = {
                    Corner = UDim.new(0, math.max(0, tonumber(av.CornerRadius) or 10)),
                    Stroke = av.Border == true and {Thickness = tonumber(av.BorderThickness) or 1, Color = getStroke(accent)} or nil,
                    Padding = {
                        PaddingLeft = UDim.new(0, math.max(0, tonumber(av.PaddingX) or 8)),
                        PaddingRight = UDim.new(0, math.max(0, tonumber(av.PaddingX) or 8)),
                        PaddingTop = UDim.new(0, math.max(0, tonumber(av.PaddingY) or 2)),
                        PaddingBottom = UDim.new(0, math.max(0, tonumber(av.PaddingY) or 2))
                    },
                    ListLayout = {
                        FillDirection = Enum.FillDirection.Horizontal,
                        HorizontalAlignment = Enum.HorizontalAlignment.Center,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        Padding = UDim.new(0, 5),
                        SortOrder = Enum.SortOrder.LayoutOrder
                    }
                }
            })

            local iconLabel = nil
            local function resolveIcon(value)
                if type(value) == "number" then
                    return "rbxassetid://" .. tostring(value)
                end
                if type(value) ~= "string" or value == "" then
                    return nil
                end
                return s:GetIconByName(value) or (O(value) and value) or nil
            end

            local function setIcon(value)
                local image = resolveIcon(value)
                if not image then
                    if iconLabel then
                        iconLabel.Visible = false
                    end
                    return
                end
                if not iconLabel then
                    iconLabel = E("ImageLabel", "Icon", badge, {
                        Size = UDim2.fromOffset(12, 12),
                        BackgroundTransparency = 1,
                        Image = image,
                        ImageColor3 = textColor,
                        ScaleType = Enum.ScaleType.Fit,
                        LayoutOrder = 1,
                        ZIndex = 7,
                        ThemeTag = not customTextColor and {OBJECTS = themeObjects, ImageColor3 = "Colors.Icons"} or nil
                    })
                else
                    iconLabel.Image = image
                    iconLabel.Visible = true
                end
            end

            local label = E("TextLabel", "Text", badge, {
                AutomaticSize = Enum.AutomaticSize.X,
                Size = UDim2.new(0, 0, 1, 0),
                BackgroundTransparency = 1,
                Text = title,
                TextSize = math.clamp(tonumber(av.TextSize) or 10, 8, 24),
                Font = typeof(av.Font) == "EnumItem" and av.Font or Enum.Font.BuilderSansBold,
                TextColor3 = textColor,
                TextXAlignment = Enum.TextXAlignment.Center,
                TextYAlignment = Enum.TextYAlignment.Center,
                TextTruncate = Enum.TextTruncate.AtEnd,
                LayoutOrder = 2,
                ZIndex = 7,
                ThemeTag = not customTextColor and {OBJECTS = themeObjects, TextColor3 = "Colors.Text.Default", Font = "Font.Bold"} or nil
            })

            setIcon(av.Icon)

            local component = {
                DESTROY_ELEMENT = badge,
                VISIBLE_ELEMENT = badge,
                TITLE_LABEL = label,
                Title = title,
                Parent = self,
                Kind = "TitleTag",
                Instance = badge,
                Color = accent,
                THEME_OBJECTS = themeObjects
            }

            function component:SetText(value)
                assert(type(value) == "string", '"TitleTag.SetText". string expected')
                return self:SetTitle(value)
            end

            function component:SetColor(value)
                assert(typeof(value) == "Color3", '"TitleTag.SetColor". Color3 expected')
                self.Color = value
                accent = value
                customBackground = nil
                customStroke = nil
                if badgeThemeTag then
                    themeObjects.Descendants.BackgroundColor3 = nil
                    badgeThemeTag = nil
                end
                local newBackground = getBackground(accent)
                local newStroke = getStroke(accent)
                badge.BackgroundColor3 = newBackground
                local outline = badge:FindFirstChildOfClass("UIStroke")
                if outline then
                    outline.Color = newStroke
                end
                return self
            end

            function component:SetIcon(value)
                setIcon(value)
                self.Icon = iconLabel
                return self
            end

            function component:SetBackgroundColor(value)
                assert(typeof(value) == "Color3", '"TitleTag.SetBackgroundColor" Color3 expected')
                customBackground = value
                badge.BackgroundColor3 = value
                return self
            end

            function component:SetBorder(value, enabled)
                if type(value) == "boolean" then enabled = value end
                local outline = badge:FindFirstChildOfClass("UIStroke")
                if enabled then
                    if not outline then
                        outline = Instance.new("UIStroke")
                        outline.Thickness = 1
                        outline.Parent = badge
                    end
                    outline.Color = typeof(value) == "Color3" and value or getStroke(accent)
                elseif outline then
                    outline:Destroy()
                end
                return self
            end

            function component:SetCornerRadius(value)
                assert(type(value) == "number", '"TitleTag.SetCornerRadius" number expected')
                local corner = badge:FindFirstChildOfClass("UICorner")
                if corner then corner.CornerRadius = UDim.new(0, math.max(0, value)) end
                return self
            end

            function component:SetTextColor(value)
                assert(typeof(value) == "Color3", '"TitleTag.SetTextColor". Color3 expected')
                textColor = value
                themeObjects.Descendants.TextColor3 = nil
                themeObjects.Descendants.ImageColor3 = nil
                label.TextColor3 = value
                if iconLabel then
                    iconLabel.ImageColor3 = value
                end
                return self
            end

            function component:Destroy()
                if self.Destroyed then
                    return
                end
                if self.THEME_OBJECTS then
                    self.THEME_OBJECTS:destroy()
                    self.THEME_OBJECTS = nil
                end
                return ai.Destroy(self)
            end

            return setmetatable(component, ai)
        end

        W = E("Frame", I, {
            Size = UDim2.new(0, 310, 1, 0),
            Position = UDim2.new(1, - 10, 0, 0),
            AnchorPoint = Vector2.new(1, 0),
            BackgroundTransparency = 1,
            ClipsDescendants = false,
            ZIndex = 60,
            Elements = {
                Padding = {
                    PaddingBottom = UDim.new(0, 20)
                },
                ListLayout = {
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Bottom,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Padding = UDim.new(0, 10)
                }
            }
        })

        aa = E("TextButton", "OutBox", {
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 0.28,
            AutoButtonColor = false,
            Active = true,
            Visible = false,
            ZIndex = 80,
            Text = "",
            ThemeTag = {
                BackgroundColor3 = "Colors.Dialog.Background"
            },
            Childs = {
                ax:FindFirstChildOfClass "UICorner":Clone(),
                E("Frame", "Template", {
                    Size = UDim2.new(0.62, 0, 0, 224),
                    Position = UDim2.fromScale(0.5, 0.5),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Active = true,
                    ClipsDescendants = true,
                    ZIndex = 81,
                    ThemeTag = {BackgroundColor3 = "Colors.Dialog.Background"},
                    Elements = {
                        Corner = UDim.new(0, 18),
                        Stroke = {Thickness = 1.2, ThemeTag = {Color = "Colors.Border.Default"}},
                        Gradient = {
                            Rotation = 45,
                            ThemeTag = {
                                Color = "Colors.Background"
                            }
                        }
                    },
                    Childs = {
                        E("TextLabel", "Title", {
                            Size = UDim2.new(1, - 36, 0, 24),
                            TextTruncate = Enum.TextTruncate.AtEnd,
                            TextSize = 16,
                            ZIndex = 82,
                            Position = UDim2.new(0.5, 0, 0, 20),
                            AnchorPoint = Vector2.new(0.5, 0),
                            BackgroundTransparency = 1,
                            ThemeTag = {
                                Font = "Font.ExtraBold",
                                TextColor3 = "Colors.Text.Default"
                            }
                        }),
                        E("TextLabel", "Description", {
                            Position = UDim2.new(0.5, 0, 0, 54),
                            Size = UDim2.new(1, - 36, 0, 0),
                            AnchorPoint = Vector2.new(0.5, 0),
                            TextWrapped = true,
                            TextSize = 12,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BackgroundTransparency = 1,
                            ZIndex = 82,
                            ThemeTag = {
                                TextColor3 = "Colors.Text.Dark",
                                Font = "Font.Medium"
                            }
                        }),
                        E("Frame", "Options", {
                            Size = UDim2.new(1, - 28, 0, 46),
                            Position = UDim2.new(0.5, 0, 1, - 12),
                            AnchorPoint = Vector2.new(0.5, 1),
                            BackgroundTransparency = 1,
                            ZIndex = 82,
                            Elements = {
                                Padding = {
                                    PaddingLeft = UDim.new(0, 4),
                                    PaddingRight = UDim.new(0, 4),
                                    PaddingBottom = UDim.new(0, 2),
                                    PaddingTop = UDim.new(0, 2)
                                },
                                ListLayout = {
                                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                                    VerticalAlignment = Enum.VerticalAlignment.Center,
                                    FillDirection = Enum.FillDirection.Horizontal,
                                    Padding = UDim.new(0, 10)
                                }
                            }
                        })
                    }
                })
            }
        })

        aa.Template:SetAttribute("OriginalSize", aa.Template.Size)

        u(aa.Activated, function()
            if Z ~= nil and not Z.Closing and not Z.Closed then
                Z:Close()
            end
        end)

        ag.StartWindow = nil
    end

    function ag:DeleteFlags()
        return ae()
    end

    function ag:SetFlag(av, aw)
        assert(type(av) == "string",`"Window.SetFlag[param 1]". 'string' expected, got {typeof(av)}`)

        if at[typeof(aw)] ~= true then
            local ax = {}

            for ay, az in at do
                table.insert(ax, ay)
            end

            return error(`"Window.SetFlag[param 2]". '{table.concat(ax, "', '")}' expected, got {typeof(aw)}`, 2)
        end

        ae[av] = aw
    end

    function ag:GetFlag(av)
        return ae[av]
    end

    function ag:ReadFile(fileName)
        assert(type(fileName) == "string",`"Window.ReadFile[param 1]". 'string' expected, got {typeof(fileName)}`)

        if type(self.ScriptFolder) ~= "string" or self.ScriptFolder == "" or type(f) ~= "function" then
            return nil
        end

        local path = `{self.ScriptFolder}/{fileName}`
        if type(isfile) == "function" then
            local checkOk, exists = pcall(isfile, path)
            if not checkOk or not exists then
                return nil
            end
        end

        local readOk, contents = pcall(f, path)
        if readOk then
            return contents
        end

        return nil
    end

    function ag:WriteFile(fileName, contents)
        assert(type(fileName) == "string",`"Window.WriteFile[param 1]". 'string' expected, got {typeof(fileName)}`)

        if contents ~= nil and type(contents) ~= "string" then
            error(`"Window.WriteFile[param 2]". 'string', or 'nil' expected, got {typeof(contents)}`, 2)
        end

        if type(self.ScriptFolder) ~= "string" or self.ScriptFolder == "" then
            return false
        end

        local path = `{self.ScriptFolder}/{fileName}`

        if contents == nil then
            if type(c) ~= "function" then
                return false
            end

            local deleteOk = pcall(c, path)
            return deleteOk
        end

        return z(path, contents)
    end

    function ag:NewMinimizer(av)
        local aw = type(av) == "table" and (av[1] or av.KeyCode) or av

        if not au(aw) then
            error(`"Window.NewMinimizer.KeyCode". 'KeyCode' expected, got {typeof(aw)}`, 2)
        end

        local ax = setmetatable({
            KeyCode = aw
        }, aj)

        u(i.InputBegan, function(ay)
            if ay.KeyCode == ax.KeyCode then
                ag:Minimize()
            end
        end)

        return ax
    end

    function ag:Dialog(av)
        assert(type(av) == "table", '"Window.Dialog". table expected')

        if self.Minimized then
            while not self:MinimizeButton() do
                task.wait()
            end
        end

        if Z then
            Z:Close(true)
        end

        local aw = av.Title or av.Name
        local ax = av.Content or av.Description
        local ay = av.Options

        assert(type(aw) == "string",`"Window.Dialog.Title". 'string' expected, got {typeof(aw)}`)
        assert(type(ax) == "string",`"Window.Dialog.Content". 'string' expected, got {typeof(ax)}`)
        assert(type(ay) == "table",`"Window.Dialog.Options". 'table' expected, got {typeof(ay)}`)
        assert(#ay > 0, "\"Window.Dialog.Options\". requires one or more options.")
        assert(aa and aa.Template and ab, "Window.Dialog template is not initialized")

        local function showDialog()
            local overlay = aa
            local template = overlay.Template
            local titleLabel = template.Title
            local descriptionLabel = template.Description
            local originalSize = template:GetAttribute("OriginalSize")

            assert(typeof(originalSize) == "UDim2", '"Window.Dialog". invalid template size')

            overlay.Parent = ab
            overlay.Visible = true
            overlay.Active = true
            overlay.ZIndex = 80

            template.Visible = true
            template.ZIndex = 81
            template.Position = UDim2.fromScale(0.5, 0.5)
            template.Size = UDim2.new(originalSize.X.Scale * 1.12, originalSize.X.Offset, originalSize.Y.Scale * 1.12, originalSize.Y.Offset + 18)

            titleLabel.Text = aw
            descriptionLabel.Text = ax

            for _, child in ipairs(template.Options:GetChildren()) do
                if child:IsA("GuiObject") then
                    child:Destroy()
                end
            end

            local dialog = ak.Dialog.new(descriptionLabel, titleLabel)
            dialog.NEW_SIZE = template.Size
            dialog.TEMPLATE = template

            for index = 1, #ay do
                dialog:NewOption(ay[index])
            end

            local openTween = J(template, "Size", originalSize, 0.22)
            openTween:Play()
            return dialog
        end

        Z = showDialog()
        return Z
    end

    function ag:SetNotifyDefaultIcon(av)
        assert(type(av) == "string",`"Window.SetNotifyDefaultIcon[param 1]". 'string' expected, got {typeof(av)}`)

        af = av
    end

    function ag:Notify(av)
        if type(av) ~= "table" then
            av = {}
        end

        local aw = av[1] or av.Name or av.Title
        local ax = av[2] or av.Content
        local ay = av[3] or av.Icon or av.Image
        local az = av[4] or av.Duration or av.Countdown or av.Time

        if self.NOTIFICATION_GROUP then
            if az == nil then
                az = self.Duration
            end
            if ax == nil then
                ax = self.Content
            end
            if aw == nil then
                aw = self.Title
            end
            if ay == nil then
                ay = self.Icon
            end
        end

        assert(type(aw) == "string",`"Window.Notify.Title". 'string' expected, got {typeof(aw)}`)
        assert(type(ax) == "string",`"Window.Notify.Content". 'string' expected, got {typeof(ax)}`)
        assert(ay == nil or type(ay) == "string",`"Window.Notify.Icon". 'nil' or 'string' expected, got {typeof(ay)}`)

        if az ~= nil and type(az) ~= "number" then
            error(`"Window.Notify.Time". 'number', or 'nil' expected, got {typeof(az)}`, 2)
        elseif az == nil then
            az = 5
        end

        local aA = E("Frame", "Notification", W, {
            Size = UDim2.new(1, - 8, 0, 0),
            BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.Y,
            ZIndex = 61
        })

        local aB = E("TextButton", aA, {
            AutomaticSize = Enum.AutomaticSize.Y,
            Size = UDim2.new(1, 0, 0, 0),
            AutoButtonColor = false,
            ClipsDescendants = true,
            ZIndex = 62,
            Text = "",
            ThemeTag = {
                BackgroundTransparency = "BackgroundTransparency"
            },
            Elements = {
                Corner = UDim.new(0, 16),
                Stroke = {Thickness = 1, ThemeTag = {Color = "Colors.Border.Default"}},
                Gradient = {
                    Rotation = 45,
                    ThemeTag = {
                        Color = "Colors.Background"
                    }
                }
            }
        })

        local aC = E("UIScale", aA)

        local aD = E("Frame", "Holder", aB, {
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            ZIndex = 63,
            Elements = {
                ListLayout = {
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 4)
                },
                Padding = {
                    PaddingBottom = UDim.new(0, 8),
                    PaddingTop = UDim.new(0, 8),
                    PaddingLeft = UDim.new(0, 42),
                    PaddingRight = UDim.new(0, 46)
                }
            }
        })

        local aE = E("TextLabel", aD, {
            Size = UDim2.new(1, 0, 0, 18),
            ZIndex = 64,
            TextTruncate = Enum.TextTruncate.AtEnd,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Bottom,
            BackgroundTransparency = 1,
            TextSize = 14,
            ThemeTag = {
                TextColor3 = "Colors.Text.Default",
                Font = "Font.Bold"
            }
        })

        local aF = E("TextLabel", aD, {
            Size = UDim2.new(1, 0, 0, 0),
            ZIndex = 64,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
            TextWrapped = true,
            TextSize = 12,
            ThemeTag = {
                TextColor3 = "Colors.Text.Dark",
                Font = "Font.Normal"
            }
        })

        local aG = E("ImageLabel", aB, {
            Size = UDim2.fromOffset(26, 26),
            ZIndex = 64,
            Position = UDim2.new(0, 8, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            ThemeTag = {
                ImageColor3 = "Colors.Icons"
            }
        })

        local aH = E("TextLabel", aB, {
            Size = UDim2.new(0, 36, 0, 16),
            ZIndex = 65,
            Position = UDim2.new(1, - 10, 0, 8),
            AnchorPoint = Vector2.new(1, 0),
            BackgroundTransparency = 1,
            TextSize = 10,
            ThemeTag = {
                TextColor3 = "Colors.Text.Darker",
                Font = "Font.Normal"
            }
        })

        local aI = false

        local aJ = J(aC, "Scale", 1.22, 0.35)
        local aK = J(aC, "Scale", 1.00, 0.35)

        local aL = setmetatable({
            TITLE_LABEL = aE,
            DESCRIPTION_LABEL = aF,
            VISIBLE_ELEMENT = aA,
            DESTROY_ELEMENT = aA,
            NOTIFICATION = aB,

            Kind = "Notification",
            Closed = false,
            Parent = self
        }, ai)

        function aL:Close()
            if self.Closed == true or self.Closing == true then
                return
            end

            self.Closing = true
            self.Closed = true

            local aM = J(aB, "Position", UDim2.new(1.2, 0, 0, 0), 0.22)
            aM:Play()
            aM.Completed:Wait()
            if aA and aA.Parent then
                aA:Destroy()
            end
            setmetatable(self, nil)
        end
        local aM = function()

            local iconName = ay or af
            local iconImage
            if type(iconName) == "string" and iconName ~= "" then
                iconImage = s:GetIconByName(iconName)
            end

            local leftPadding = iconImage and 42 or 14
            if iconImage then
                aG.Image = iconImage
                aG.Visible = true
            else
                aG.Visible = false
            end
            aD.UIPadding.PaddingLeft = UDim.new(0, leftPadding)
            aE.Size = UDim2.new(1, - (leftPadding + 46), 0, 18)
            aF.Size = UDim2.new(1, - (leftPadding + 46), 0, 0)

            aB.Position = UDim2.fromScale(3, 0)
            J(aB, "Position", UDim2.fromScale(0, 0), 0.35):Play()

            aE.Text = aw
            aF.Text = ax

            local aM = aB.MouseLeave

            while az > 0 and not aL.Closed do
                aH.Text = Q(az)
                if aI == true then
                    aM:Wait()
                end
                az -= task.wait()
            end

            if not aL.Closed then
                aL:Close()
            end
        end

        u(aB.MouseButton1Down, function() aJ:Play() aI = true
        end)
        u(aB.MouseLeave, function() aK:Play() aI = false
        end)

        task.defer(aM)

        return aL
    end

    function ag:NewNotifyGroup(av)
        local aw = av[1] or av.Name or av.Title
        local ax = av[2] or av.Content
        local ay = av[3] or av.Icon or av.Image
        local az = av[4] or av.Duration or av.Countdown or av.Time

        if aw ~= nil and type(aw) ~= "string" then
            error(`"Window.NewNotifyGroup.Title". 'string', or 'nil' expected, got {typeof(aw)}`, 2)
        end

        if ax ~= nil and type(ax) ~= "string" then
            error(`"Window.NewNotifyGroup.Content". 'string', or 'nil' expected, got {typeof(ax)}`, 2)
        end

        if ay ~= nil and type(ay) ~= "string" then
            error(`"Window.NewNotifyGroup.Icon". 'string', or 'nil' expected, got {typeof(ay)}`, 2)
        end

        if az ~= nil and type(az) ~= "number" then
            error(`"Window.NewNotifyGroup.Time". 'number', or 'nil' expected, got {typeof(az)}`, 2)
        end

        return {
            NOTIFICATION_GROUP = true,
            Notify = ag.Notify,

            Duration = az,
            Content = ax,
            Title = aw,
            Icon = ay,
        }
    end

    function ag:GetTabByTitle(av)
        assert(type(av) == "string",`"Window.GetTabByTitle[param 1]". 'string' expected, got {typeof(av)}`)

        for aw = 1, #S do
            if S[aw].Title == av then
                return S[aw]
            end
        end
    end

    ag.NewNotificationGroup = ag.NewNotifyGroup
    ag.SetDefaultNotifyIcon = SetNotifyDefaultIcon
    ag.GetTabByName = ag.GetTabByTitle
    ag.Notificafion = ag.Notify

    R.Window = ag
end
local aa = function(aa, ab)
    local ac = ab.Size.Y.Offset
    local ad = UDim2.new(0, aa.TabSize or s.Default.TabSize, 1, - ac)
    local ae = UDim2.new(1, - ad.X.Offset, 1, - ac)

    local af = E("ScrollingFrame", "TabsScroll", {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollingDirection = Enum.ScrollingDirection.Y,
        Position = UDim2.new(0, 0, 1, 0),
        AnchorPoint = Vector2.new(0, 1),
        ScrollBarThickness = 2.2,
        BackgroundTransparency = 1,
        ScrollBarImageTransparency = 0.2,
        CanvasSize = UDim2.new(),
        BorderSizePixel = 0,
        Size = ad,
        ThemeTag = {
            ScrollBarImageColor3 = "Colors.ScrollBar"
        },
        Elements = {
            Padding = {
                PaddingLeft = UDim.new(0, 10),
                PaddingRight = UDim.new(0, 10),
                PaddingTop = UDim.new(0, 10),
                PaddingBottom = UDim.new(0, 10)
            },
            ListLayout = {
                Padding = UDim.new(0, 5)
            }
        }
    })

    local ag = E("Frame", "Containers", {
        Size = ae,
        AnchorPoint = Vector2.new(1, 1),
        Position = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true
    })

    return af, ag
end

function s:GetIconByName(ab)
    if ab == nil then
        return
    end
    assert(type(ab) == "string",`"Library.GetIconByName". 'string' expected, got {typeof(ab)}`)

    if O(ab) then
        return ab
    end

    local ac = M(ab)
    if ac == "" then
        return nil
    end

    local function ResolveIcon(ad, ae, af, ag)
        for ah, ai in pairs(ad) do
            local aj = M(tostring(ah))
            local ak = ae .. aj

            if type(ai) == "table" then
                local al = ResolveIcon(ai, ak, af, ag)
                if al then
                    return al
                end
            elseif type(ai) == "number" or type(ai) == "string" then
                local am = af and (aj == ag or ak == ag) or (not af and (aj:find(ag, 1, true) ~= nil or ak:find(ag, 1, true) ~= nil))
                if am then
                    local an = tostring(ai)
                    if an:sub(1, 13) == "rbxassetid://" then
                        return an
                    end
                    if tonumber(an) then
                        return "rbxassetid://" .. an
                    end
                end
            end
        end
    end

    local ao = ResolveIcon(self.Icons, "", true, ac)
    if ao then
        return ao
    end
    ao = ResolveIcon(self.Icons, "", false, ac)
    if ao then
        return ao
    end

    local ap = self.CurrentTheme and self.CurrentTheme.Icons
    if type(ap) == "table" then
        local aq = ResolveIcon(ap, "", true, ac) or ResolveIcon(ap, "", false, ac)
        if aq then
            return aq
        end
    end
end

function s:IsValidTheme(ab)
    assert(type(ab) == "string",`"Library.IsValidTheme". string extected, got {typeof(ab)}`)

    return self.Themes[ab] ~= nil
end

function s:GetThemes()
    local ab = {}
    for ac, ad in self.Themes do
        table.insert(ab, ac)
    end
    return ab
end

function s:GetTheme(ab)
    assert(ab == nil or type(ab) == "string",`"Library.GetTheme". 'string' expected, got {typeof(ab)}`)

    if ab == nil then
        return self.CurrentTheme
    end

    local ac = self.Themes[ab]
    assert(ac ~= nil,`"Library.GetTheme". theme not found: {ab}`)
    return ac
end

local function ApplyAccent(theme, color)
    local colors = theme and theme.Colors
    if type(colors) ~= "table" or typeof(color) ~= "Color3" then
        return
    end

    colors.Primary = color
    colors.ScrollBar = color
    colors.Link = color
    colors.Stroke = colors.Stroke and colors.Stroke:Lerp(color, 0.18) or color

    if colors.Slider then
        colors.Slider.SliderBar = color
        colors.Slider.SliderNumber = colors.Text and colors.Text.Default or color
    end
end

local function RefreshThemeObjects(manager)
    if type(manager) ~= "table" then
        return
    end

    manager.UPDATED_OBJECTS = false

    for _, child in pairs(manager.Descendants or {}) do
        if type(child) == "table" and type(child.update) == "function" then
            RefreshThemeObjects(child)
        end
    end

    if type(manager.update) == "function" then
        manager:update()
    end
end

function s:AddTheme(ab, ac)
    assert(type(ab) == "string" and #ab > 0,`"Library.AddTheme[param 1]". non-empty string expected, got {typeof(ab)}`)
    assert(type(ac) == "table" and type(ac.Colors) == "table",`"Library.AddTheme[param 2]". theme table with Colors expected, got {typeof(ac)}`)
    assert(typeof(ac.Colors.Primary) == "Color3", '"Library.AddTheme". Colors.Primary must be a Color3')
    local function clone(value)
        if type(value) ~= "table" then
            return value
        end
        local result = {}
        for key, item in pairs(value) do
            result[key] = clone(item)
        end
        return result
    end
    local theme = clone(ac)
    theme.Name = ab
    self.Themes[ab] = table.freeze(theme)
    return theme
end

function s:SetAccentColor(ab, ac)
    assert(typeof(ab) == "Color3",`"Library.SetAccentColor". Color3 expected, got {typeof(ab)}`)
    ApplyAccent(self.CurrentTheme, ab)
    if ac ~= false and self.WindowSettings then
        self.WindowSettings.CustomAccent = {ab.R, ab.G, ab.B}
    end
    RefreshThemeObjects(C)
    return self
end

function s:GetAccentColor()
    return self.CurrentTheme and self.CurrentTheme.Colors.Primary
end

function s:SetBorderColor(color, save)
    assert(typeof(color) == "Color3", '"Library.SetBorderColor" Color3 expected')
    local colors = self.CurrentTheme and self.CurrentTheme.Colors
    if not colors then return self end
    colors.Border = colors.Border or {}
    colors.Border.Default = color
    colors.Border.Holding = color:Lerp(colors.Primary or color, 0.35)
    colors.Stroke = color
    if save ~= false and self.WindowSettings then
        self.WindowSettings.CustomBorder = {color.R, color.G, color.B}
    end
    RefreshThemeObjects(C)
    return self
end

function s:SetTheme(ab)
    assert(type(ab) == "string",`"Library.SetTheme". string expected, got {typeof(ab)}`)
    local ac = self.Themes[ab]
    assert(ac,`"Library.SetTheme". theme not found: {ab}`)

    self.CurrentTheme = ac
    self.WindowSettings.SelectedTheme = ac.Name
    local savedAccent = self.WindowSettings.CustomAccent
    if type(savedAccent) == "table" and type(savedAccent[1]) == "number" and type(savedAccent[2]) == "number" and type(savedAccent[3]) == "number" then
        ApplyAccent(ac, Color3.new(math.clamp(savedAccent[1], 0, 1), math.clamp(savedAccent[2], 0, 1), math.clamp(savedAccent[3], 0, 1)))
    end
    RefreshThemeObjects(C)
    return self
end

function s:SelectTheme(ab)
    return self:SetTheme(ab)
end

function s:GetThemeOptions()
    return self:GetThemes()
end

function s:SetUIScale(ab)
    local ac = B.MIN_SCALE
    local ad = B.MAX_SCALE

    assert(type(ab) == "number",`"Library.SetUIScale". 'number' expected, got {typeof(ab)}`)
    assert(ab >= ac and ab <= ad,`"Library.SetUIScale". Min Scale: {ac}, Max Scale: {ad}`)

    I.Scale.Scale = P(ab)
end

function s:GetMaxScale()
    return B.MAX_SCALE
end

function s:GetMinScale()
    return B.MIN_SCALE
end

function s:GetCurrentTheme()
    if not self.LOADED_UI_LIBRARY then
        return error("failed to get current theme: UI is not loaded", 2)
    end
    return self.CurrentTheme
end

function s:Destroy()
    for ab, ac in self.Connections do
        ac:Disconnect()
    end

    if I and I:GetAttribute "UID" == self.SCREENGUI_UID then
        pcall(I.Destroy, I)
    end
end

function s:MakeWindow(ab)
    if self.LOADED_UI_LIBRARY then
        return error("you can create only 1 Window", 2)
    end

    local ac = math.random()
    I:SetAttribute("UID", ac)
    self.SCREENGUI_UID = ac
    I:ClearAllChildren()

    local ad = E("UIScale", "Scale", I, {
        Scale = P(1)
    })

    local windowSize = ab.Size or ab.UISize
    if typeof(windowSize) == "UDim2" then
        s.Default.UISize = windowSize
    end
    if type(ab.UIScale) == "number" then
        ad.Scale = math.clamp(ab.UIScale, B.MIN_SCALE, B.MAX_SCALE)
    end
    if type(ab.BackgroundTransparency) == "number" then
        s.CurrentTheme.BackgroundTransparency = math.clamp(ab.BackgroundTransparency, 0, 1)
    end

    local ae = {
        Title = ab[1] or ab.Name or ab.Title,
        SubTitle = ab[2] or ab.SubName or ab.SubTitle,
        ScriptFolder = ab[3] or ab.ScriptFolder or ab.FolderName
    }

    assert(type(ae.Title) == "string",`"Window.Title". 'string' expected, got {typeof(ae.Title)}`)
    assert(type(ae.SubTitle) == "string",`"Window.SubTitle". 'string' expected, got {typeof(ae.SubTitle)}`)

    if ae.ScriptFolder ~= nil and type(ae.ScriptFolder) ~= "string" then
        return error(`"Window.ScriptFolder". 'string', or nil expected, got {typeof(ae.ScriptFolder)}`, 2)
    end

    if ae.ScriptFolder ~= nil and string.find(ae.ScriptFolder, "/") then
        return error("\"Window.ScriptFolder\" is not valid, unexpected char \"/\"", 2)
    end

    local af = (function()
        local af = ae.ScriptFolder
        local ag = false

        local ah, ai = pcall(function()
            return af and k:JSONDecode(f(`{af}/LibrarySettings.json`))
        end)

        if type(ai) ~= "table" then
            ai = {}
        end
        local aj = function()

            ag = false

            return pcall(function()
                return z(`{af}/LibrarySettings.json`, k:JSONEncode(ai))
            end)
        end
        local ak = function(ak, al, am)
            rawset(ai, al, am)

            if af and not ag then
                ag = true
                task.delay(0.5, aj)
            end
        end

        return setmetatable({}, {
            __newindex = ak,
            __index = ai
        })
    end)()

    local ag = (function()
        local ag = ae.ScriptFolder
        local ah = false

        local ai, aj = pcall(function()
            return ag and k:JSONDecode(f(`{ag}/ScriptFlags.json`))
        end)

        if type(aj) ~= "table" then
            aj = {}
        end
        local ak = function()

            ah = false

            return pcall(function()
                z(`{ag}/ScriptFlags.json`, k:JSONEncode(aj))
            end)
        end
        local al = function(al, am, an)
            rawset(aj, am, an)

            if ag and not ah then
                ah = true
                task.delay(0.5, ak)
            end
        end
        local am = function()

            table.clear(aj)
            return pcall(function()
                return ag and c(`{ag}/ScriptFlags.json`)
            end)
        end

        return setmetatable({}, {
            __newindex = al,
            __call = am,
            __index = aj
        })
    end)()

    self.ThemesObjects = C
    self.WindowSettings = af
    self.Flags = ag

    self.Icons = (function()

        return {
            ["a-arrow-down"] = "rbxassetid://92867583610071",
            ["a-arrow-up"] = "rbxassetid://132318504999733",
            ["a-large-small"] = "rbxassetid://111491496660216",
            ["accessibility"] = "rbxassetid://114029945302017",
            ["activity"] = "rbxassetid://94212016861936",
            ["air-vent"] = "rbxassetid://81517226012329",
            ["airplay"] = "rbxassetid://115020759309179",
            ["alarm-clock-check"] = "rbxassetid://76437352099157",
            ["alarm-clock-minus"] = "rbxassetid://77364179863205",
            ["alarm-clock-off"] = "rbxassetid://97904885874823",
            ["alarm-clock-plus"] = "rbxassetid://80468822979214",
            ["alarm-clock"] = "rbxassetid://126259032907535",
            ["alarm-smoke"] = "rbxassetid://96965448419685",
            ["album"] = "rbxassetid://127358331163602",
            ["align-center-horizontal"] = "rbxassetid://81570549209434",
            ["align-center-vertical"] = "rbxassetid://118470463752466",
            ["align-end-horizontal"] = "rbxassetid://139502909745427",
            ["align-end-vertical"] = "rbxassetid://96528869059554",
            ["align-horizontal-distribute-center"] = "rbxassetid://97220086126656",
            ["align-horizontal-distribute-end"] = "rbxassetid://106128590702022",
            ["align-horizontal-distribute-start"] = "rbxassetid://76074660002997",
            ["align-horizontal-justify-center"] = "rbxassetid://75732302772427",
            ["align-horizontal-justify-end"] = "rbxassetid://129167626402283",
            ["align-horizontal-justify-start"] = "rbxassetid://130161830325281",
            ["align-horizontal-space-around"] = "rbxassetid://91646106782950",
            ["align-horizontal-space-between"] = "rbxassetid://103886093046990",
            ["align-start-horizontal"] = "rbxassetid://125674804697729",
            ["align-start-vertical"] = "rbxassetid://105020230154823",
            ["align-vertical-distribute-center"] = "rbxassetid://93791183635525",
            ["align-vertical-distribute-end"] = "rbxassetid://139354223511433",
            ["align-vertical-distribute-start"] = "rbxassetid://74961997822126",
            ["align-vertical-justify-center"] = "rbxassetid://134754696166569",
            ["align-vertical-justify-end"] = "rbxassetid://92569381441969",
            ["align-vertical-justify-start"] = "rbxassetid://99692844572718",
            ["align-vertical-space-around"] = "rbxassetid://96206012459190",
            ["align-vertical-space-between"] = "rbxassetid://124998077349706",
            ["ambulance"] = "rbxassetid://78599995190651",
            ["ampersand"] = "rbxassetid://75272915739209",
            ["ampersands"] = "rbxassetid://126947193455996",
            ["amphora"] = "rbxassetid://137370389604364",
            ["anchor"] = "rbxassetid://92181172123618",
            ["angry"] = "rbxassetid://74237056000103",
            ["annoyed"] = "rbxassetid://80064369052011",
            ["antenna"] = "rbxassetid://99628923540956",
            ["anvil"] = "rbxassetid://100203029845919",
            ["aperture"] = "rbxassetid://83396154449972",
            ["app-window-mac"] = "rbxassetid://79587216113811",
            ["app-window"] = "rbxassetid://93142176757189",
            ["apple"] = "rbxassetid://104349242902442",
            ["archive-restore"] = "rbxassetid://78956681942188",
            ["archive-x"] = "rbxassetid://75830115088395",
            ["archive"] = "rbxassetid://122180020814574",
            ["armchair"] = "rbxassetid://105384358373973",
            ["arrow-big-down-dash"] = "rbxassetid://137987229582002",
            ["arrow-big-down"] = "rbxassetid://81081164158885",
            ["arrow-big-left-dash"] = "rbxassetid://97827621354677",
            ["arrow-big-left"] = "rbxassetid://85973092492641",
            ["arrow-big-right-dash"] = "rbxassetid://117825834972403",
            ["arrow-big-right"] = "rbxassetid://82960676755590",
            ["arrow-big-up-dash"] = "rbxassetid://99260194327483",
            ["arrow-big-up"] = "rbxassetid://93136954756149",
            ["arrow-down-0-1"] = "rbxassetid://120961896217875",
            ["arrow-down-1-0"] = "rbxassetid://93474255891850",
            ["arrow-down-a-z"] = "rbxassetid://99554596207900",
            ["arrow-down-from-line"] = "rbxassetid://132045845807798",
            ["arrow-down-left"] = "rbxassetid://102899325237364",
            ["arrow-down-narrow-wide"] = "rbxassetid://129105261655061",
            ["arrow-down-right"] = "rbxassetid://123109928624974",
            ["arrow-down-to-dot"] = "rbxassetid://101675355931221",
            ["arrow-down-to-line"] = "rbxassetid://87050478931254",
            ["arrow-down-up"] = "rbxassetid://85780258549577",
            ["arrow-down-wide-narrow"] = "rbxassetid://88461733425991",
            ["arrow-down-z-a"] = "rbxassetid://76115279362232",
            ["arrow-down"] = "rbxassetid://98764963621439",
            ["arrow-left-from-line"] = "rbxassetid://87857914437603",
            ["arrow-left-right"] = "rbxassetid://131324733048447",
            ["arrow-left-to-line"] = "rbxassetid://118645136026970",
            ["arrow-left"] = "rbxassetid://102531941843733",
            ["arrow-right-from-line"] = "rbxassetid://74073639809355",
            ["arrow-right-left"] = "rbxassetid://77015754304300",
            ["arrow-right-to-line"] = "rbxassetid://78632510329852",
            ["arrow-right"] = "rbxassetid://113692007244654",
            ["arrow-up-0-1"] = "rbxassetid://105257823943016",
            ["arrow-up-1-0"] = "rbxassetid://134175521693798",
            ["arrow-up-a-z"] = "rbxassetid://77763416595160",
            ["arrow-up-down"] = "rbxassetid://81019887641527",
            ["arrow-up-from-dot"] = "rbxassetid://124408496673275",
            ["arrow-up-from-line"] = "rbxassetid://95777664626453",
            ["arrow-up-left"] = "rbxassetid://123490598231261",
            ["arrow-up-narrow-wide"] = "rbxassetid://73006024672636",
            ["arrow-up-right"] = "rbxassetid://129280608535523",
            ["arrow-up-to-line"] = "rbxassetid://108818207813537",
            ["arrow-up-wide-narrow"] = "rbxassetid://87437426951568",
            ["arrow-up-z-a"] = "rbxassetid://107546173611884",
            ["arrow-up"] = "rbxassetid://89282378235317",
            ["arrows-up-from-line"] = "rbxassetid://133710016938621",
            ["asterisk"] = "rbxassetid://88552752106723",
            ["at-sign"] = "rbxassetid://79059152889146",
            ["atom"] = "rbxassetid://73167696981648",
            ["audio-lines"] = "rbxassetid://70930641819242",
            ["audio-waveform"] = "rbxassetid://86462036665209",
            ["award"] = "rbxassetid://132740088158419",
            ["axe"] = "rbxassetid://132405197863294",
            ["axis-3d"] = "rbxassetid://122438676546804",
            ["baby"] = "rbxassetid://93472926933440",
            ["backpack"] = "rbxassetid://140420225386018",
            ["badge-alert"] = "rbxassetid://101829200081951",
            ["badge-cent"] = "rbxassetid://133345018873154",
            ["badge-check"] = "rbxassetid://76078495178149",
            ["badge-dollar-sign"] = "rbxassetid://127139803581141",
            ["badge-euro"] = "rbxassetid://120016477674659",
            ["badge-indian-rupee"] = "rbxassetid://75659682309981",
            ["badge-info"] = "rbxassetid://131995373201472",
            ["badge-japanese-yen"] = "rbxassetid://99081574588615",
            ["badge-minus"] = "rbxassetid://140321561183881",
            ["badge-percent"] = "rbxassetid://121359224294885",
            ["badge-plus"] = "rbxassetid://100325578561866",
            ["badge-pound-sterling"] = "rbxassetid://119688217279444",
            ["badge-question-mark"] = "rbxassetid://121464963737502",
            ["badge-russian-ruble"] = "rbxassetid://108839463659864",
            ["badge-swiss-franc"] = "rbxassetid://91447608372740",
            ["badge-turkish-lira"] = "rbxassetid://137839965873529",
            ["badge-x"] = "rbxassetid://122931434733842",
            ["badge"] = "rbxassetid://116620312917084",
            ["baggage-claim"] = "rbxassetid://86922213051957",
            ["ban"] = "rbxassetid://90767043015246",
            ["banana"] = "rbxassetid://140713420056179",
            ["bandage"] = "rbxassetid://129660129590770",
            ["banknote-arrow-down"] = "rbxassetid://139366449345199",
            ["banknote-arrow-up"] = "rbxassetid://133758343082529",
            ["banknote-x"] = "rbxassetid://95348701438065",
            ["banknote"] = "rbxassetid://104840231536668",
            ["barcode"] = "rbxassetid://118473018143689",
            ["barrel"] = "rbxassetid://130647115622774",
            ["baseline"] = "rbxassetid://124677132511270",
            ["bath"] = "rbxassetid://76031400297942",
            ["battery-charging"] = "rbxassetid://80139357470047",
            ["battery-full"] = "rbxassetid://70906718268972",
            ["battery-low"] = "rbxassetid://139659256984314",
            ["battery-medium"] = "rbxassetid://105934079398915",
            ["battery-plus"] = "rbxassetid://91931341486966",
            ["battery-warning"] = "rbxassetid://115230083817257",
            ["battery"] = "rbxassetid://70765800346189",
            ["beaker"] = "rbxassetid://80902539995520",
            ["bean-off"] = "rbxassetid://98164436608714",
            ["bean"] = "rbxassetid://89491967076869",
            ["bed-double"] = "rbxassetid://73820193212911",
            ["bed-single"] = "rbxassetid://113423940880634",
            ["bed"] = "rbxassetid://97726529032925",
            ["beef"] = "rbxassetid://105850162318915",
            ["beer-off"] = "rbxassetid://120333134736361",
            ["beer"] = "rbxassetid://116404978807744",
            ["bell-dot"] = "rbxassetid://93161277118810",
            ["bell-electric"] = "rbxassetid://100277767266983",
            ["bell-minus"] = "rbxassetid://126334890449727",
            ["bell-off"] = "rbxassetid://78560046118930",
            ["bell-plus"] = "rbxassetid://77014333795836",
            ["bell-ring"] = "rbxassetid://94612128913941",
            ["bell"] = "rbxassetid://97392696311902",
            ["between-horizontal-end"] = "rbxassetid://81602774794322",
            ["between-horizontal-start"] = "rbxassetid://76112384929846",
            ["between-vertical-end"] = "rbxassetid://72817612571631",
            ["between-vertical-start"] = "rbxassetid://85278312190301",
            ["biceps-flexed"] = "rbxassetid://82004462003936",
            ["bike"] = "rbxassetid://102930322246035",
            ["binary"] = "rbxassetid://91751953950088",
            ["binoculars"] = "rbxassetid://101460003267896",
            ["biohazard"] = "rbxassetid://95956532900432",
            ["bird"] = "rbxassetid://132284145117371",
            ["birdhouse"] = "rbxassetid://83999157401433",
            ["bitcoin"] = "rbxassetid://95459240442938",
            ["blend"] = "rbxassetid://111679612185257",
            ["blinds"] = "rbxassetid://71164165283925",
            ["blocks"] = "rbxassetid://72212693357737",
            ["bluetooth-connected"] = "rbxassetid://96315134002985",
            ["bluetooth-off"] = "rbxassetid://80600044218117",
            ["bluetooth-searching"] = "rbxassetid://100673019606426",
            ["bluetooth"] = "rbxassetid://90506573139443",
            ["bold"] = "rbxassetid://116141470019166",
            ["bolt"] = "rbxassetid://102881251417484",
            ["bomb"] = "rbxassetid://139223800924636",
            ["bone"] = "rbxassetid://111242153474115",
            ["book-a"] = "rbxassetid://104067275658465",
            ["book-alert"] = "rbxassetid://124159928044853",
            ["book-audio"] = "rbxassetid://109208148317037",
            ["book-check"] = "rbxassetid://115999656081696",
            ["book-copy"] = "rbxassetid://108543407492005",
            ["book-dashed"] = "rbxassetid://127430784795958",
            ["book-down"] = "rbxassetid://101011730128222",
            ["book-headphones"] = "rbxassetid://108670200799574",
            ["book-heart"] = "rbxassetid://112788845135284",
            ["book-image"] = "rbxassetid://80808285757226",
            ["book-key"] = "rbxassetid://116024426170705",
            ["book-lock"] = "rbxassetid://118765061220571",
            ["book-marked"] = "rbxassetid://73211024251780",
            ["book-minus"] = "rbxassetid://112724962046282",
            ["book-open-check"] = "rbxassetid://130848362492667",
            ["book-open-text"] = "rbxassetid://100629528672195",
            ["book-open"] = "rbxassetid://129845326810392",
            ["book-plus"] = "rbxassetid://140267785051233",
            ["book-text"] = "rbxassetid://94011772484232",
            ["book-type"] = "rbxassetid://97817304725443",
            ["book-up-2"] = "rbxassetid://130161620853665",
            ["book-up"] = "rbxassetid://98640174079190",
            ["book-user"] = "rbxassetid://128489189240523",
            ["book-x"] = "rbxassetid://118754548186537",
            ["book"] = "rbxassetid://125383279695672",
            ["bookmark-check"] = "rbxassetid://93940443347986",
            ["bookmark-minus"] = "rbxassetid://96807096039910",
            ["bookmark-plus"] = "rbxassetid://121469724491615",
            ["bookmark-x"] = "rbxassetid://112272342584706",
            ["bookmark"] = "rbxassetid://121093149326239",
            ["boom-box"] = "rbxassetid://99901322535868",
            ["bot-message-square"] = "rbxassetid://96145330292478",
            ["bot-off"] = "rbxassetid://140417690560013",
            ["bot"] = "rbxassetid://80451686744860",
            ["bottle-wine"] = "rbxassetid://131675403196921",
            ["bow-arrow"] = "rbxassetid://124089655150375",
            ["box"] = "rbxassetid://101768155599700",
            ["boxes"] = "rbxassetid://136372617578355",
            ["braces"] = "rbxassetid://117761094704041",
            ["brackets"] = "rbxassetid://74368995728099",
            ["brain-circuit"] = "rbxassetid://70547962410202",
            ["brain-cog"] = "rbxassetid://132039205501538",
            ["brain"] = "rbxassetid://92424107303177",
            ["brick-wall-fire"] = "rbxassetid://92980588705520",
            ["brick-wall-shield"] = "rbxassetid://75954432775071",
            ["brick-wall"] = "rbxassetid://112878522258821",
            ["briefcase-business"] = "rbxassetid://129135125207283",
            ["briefcase-conveyor-belt"] = "rbxassetid://108665725653714",
            ["briefcase-medical"] = "rbxassetid://119917756334087",
            ["briefcase"] = "rbxassetid://96754188164225",
            ["bring-to-front"] = "rbxassetid://132975903553748",
            ["brush-cleaning"] = "rbxassetid://71728977448805",
            ["brush"] = "rbxassetid://127035535799640",
            ["bubbles"] = "rbxassetid://106183424168227",
            ["bug-off"] = "rbxassetid://88020025049245",
            ["bug-play"] = "rbxassetid://80107955888092",
            ["bug"] = "rbxassetid://83626408925438",
            ["building-2"] = "rbxassetid://77873775611951",
            ["building"] = "rbxassetid://110616258983082",
            ["bus-front"] = "rbxassetid://89863432456045",
            ["bus"] = "rbxassetid://133798469717463",
            ["cable-car"] = "rbxassetid://128643682205596",
            ["cable"] = "rbxassetid://128449944504901",
            ["cake-slice"] = "rbxassetid://136769828413242",
            ["cake"] = "rbxassetid://103131590503275",
            ["calculator"] = "rbxassetid://74915716529646",
            ["calendar-1"] = "rbxassetid://98458364171044",
            ["calendar-arrow-down"] = "rbxassetid://108415736543437",
            ["calendar-arrow-up"] = "rbxassetid://70574654109118",
            ["calendar-check-2"] = "rbxassetid://120231170248276",
            ["calendar-check"] = "rbxassetid://71551019465748",
            ["calendar-clock"] = "rbxassetid://119132152594595",
            ["calendar-cog"] = "rbxassetid://122402172360287",
            ["calendar-days"] = "rbxassetid://99072017568595",
            ["calendar-fold"] = "rbxassetid://117368871270394",
            ["calendar-heart"] = "rbxassetid://88839008103676",
            ["calendar-minus-2"] = "rbxassetid://98846170279891",
            ["calendar-minus"] = "rbxassetid://137354318924383",
            ["calendar-off"] = "rbxassetid://109726151749217",
            ["calendar-plus-2"] = "rbxassetid://112264562093883",
            ["calendar-plus"] = "rbxassetid://125266115249843",
            ["calendar-range"] = "rbxassetid://103641849247576",
            ["calendar-search"] = "rbxassetid://92010083223634",
            ["calendar-sync"] = "rbxassetid://78082218499697",
            ["calendar-x-2"] = "rbxassetid://107518051061147",
            ["calendar-x"] = "rbxassetid://106703374806500",
            ["calendar"] = "rbxassetid://114792700814035",
            ["camera-off"] = "rbxassetid://81057636835256",
            ["camera"] = "rbxassetid://79950339943067",
            ["candy-cane"] = "rbxassetid://71689468772492",
            ["candy-off"] = "rbxassetid://110232752314832",
            ["candy"] = "rbxassetid://107812129154678",
            ["cannabis"] = "rbxassetid://98792006538601",
            ["captions-off"] = "rbxassetid://105223545364193",
            ["captions"] = "rbxassetid://104960225031445",
            ["car-front"] = "rbxassetid://87380942739063",
            ["car-taxi-front"] = "rbxassetid://122455403384057",
            ["car"] = "rbxassetid://121065933462582",
            ["caravan"] = "rbxassetid://120070979471783",
            ["card-sim"] = "rbxassetid://134490550095771",
            ["carrot"] = "rbxassetid://119118221444304",
            ["case-lower"] = "rbxassetid://129303130603241",
            ["case-sensitive"] = "rbxassetid://125410273293056",
            ["case-upper"] = "rbxassetid://111633433531325",
            ["cassette-tape"] = "rbxassetid://137065788934157",
            ["cast"] = "rbxassetid://98202245922071",
            ["castle"] = "rbxassetid://119275077187784",
            ["cat"] = "rbxassetid://124252153404931",
            ["cctv"] = "rbxassetid://99979894766624",
            ["chart-area"] = "rbxassetid://123446436762366",
            ["chart-bar-big"] = "rbxassetid://72336824986044",
            ["chart-bar-decreasing"] = "rbxassetid://107217459044963",
            ["chart-bar-increasing"] = "rbxassetid://88268905998571",
            ["chart-bar-stacked"] = "rbxassetid://98478751113024",
            ["chart-bar"] = "rbxassetid://105389816384108",
            ["chart-candlestick"] = "rbxassetid://125676898615697",
            ["chart-column-big"] = "rbxassetid://98598733210787",
            ["chart-column-decreasing"] = "rbxassetid://73586137373563",
            ["chart-column-increasing"] = "rbxassetid://120421615068601",
            ["chart-column-stacked"] = "rbxassetid://86031449675105",
            ["chart-column"] = "rbxassetid://97915995538580",
            ["chart-gantt"] = "rbxassetid://88811660555940",
            ["chart-line"] = "rbxassetid://101833156055618",
            ["chart-network"] = "rbxassetid://104027882693561",
            ["chart-no-axes-column-decreasing"] = "rbxassetid://123371717192542",
            ["chart-no-axes-column-increasing"] = "rbxassetid://140383830943049",
            ["chart-no-axes-column"] = "rbxassetid://94078751170351",
            ["chart-no-axes-combined"] = "rbxassetid://121424233161912",
            ["chart-no-axes-gantt"] = "rbxassetid://131936541106368",
            ["chart-pie"] = "rbxassetid://113412261630136",
            ["chart-scatter"] = "rbxassetid://108217585014571",
            ["chart-spline"] = "rbxassetid://90307460742494",
            ["check-check"] = "rbxassetid://95183312173858",
            ["check-line"] = "rbxassetid://115122343485290",
            ["check"] = "rbxassetid://93898873302694",
            ["chef-hat"] = "rbxassetid://121744015002573",
            ["cherry"] = "rbxassetid://139519182403183",
            ["chess-bishop"] = "rbxassetid://121701705580238",
            ["chess-king"] = "rbxassetid://90885687223462",
            ["chess-knight"] = "rbxassetid://96467707042169",
            ["chess-pawn"] = "rbxassetid://111318574652751",
            ["chess-queen"] = "rbxassetid://98304702099749",
            ["chess-rook"] = "rbxassetid://76223925830262",
            ["chevron-down"] = "rbxassetid://134243273101015",
            ["chevron-first"] = "rbxassetid://105243363790238",
            ["chevron-last"] = "rbxassetid://89268452603731",
            ["chevron-left"] = "rbxassetid://73780377692148",
            ["chevron-right"] = "rbxassetid://92473583511724",
            ["chevron-up"] = "rbxassetid://122444883127455",
            ["chevrons-down-up"] = "rbxassetid://139404716013205",
            ["chevrons-down"] = "rbxassetid://100524612205956",
            ["chevrons-left-right-ellipsis"] = "rbxassetid://125035817741526",
            ["chevrons-left-right"] = "rbxassetid://87910685945204",
            ["chevrons-left"] = "rbxassetid://82617201744347",
            ["chevrons-right-left"] = "rbxassetid://87149546686569",
            ["chevrons-right"] = "rbxassetid://139121276490483",
            ["chevrons-up-down"] = "rbxassetid://131833120209646",
            ["chevrons-up"] = "rbxassetid://100467452364672",
            ["chromium"] = "rbxassetid://128165143739006",
            ["church"] = "rbxassetid://113714744350666",
            ["cigarette-off"] = "rbxassetid://77797883078452",
            ["circle-alert"] = "rbxassetid://83898160590116",
            ["circle-arrow-down"] = "rbxassetid://95901860261344",
            ["circle-arrow-left"] = "rbxassetid://102148876968988",
            ["circle-arrow-out-down-left"] = "rbxassetid://140598097856694",
            ["circle-arrow-out-down-right"] = "rbxassetid://119952801379305",
            ["circle-arrow-out-up-left"] = "rbxassetid://132858212688303",
            ["circle-arrow-out-up-right"] = "rbxassetid://81783743753173",
            ["circle-arrow-right"] = "rbxassetid://70786767999559",
            ["circle-arrow-up"] = "rbxassetid://84395128546494",
            ["circle-check-big"] = "rbxassetid://93202927221730",
            ["circle-check"] = "rbxassetid://85262178816537",
            ["circle-chevron-down"] = "rbxassetid://137069490345718",
            ["circle-chevron-left"] = "rbxassetid://130250009740827",
            ["circle-chevron-right"] = "rbxassetid://125943696958495",
            ["circle-chevron-up"] = "rbxassetid://111223574026321",
            ["circle-dashed"] = "rbxassetid://126799443883746",
            ["circle-divide"] = "rbxassetid://106398997754208",
            ["circle-dollar-sign"] = "rbxassetid://91106238890387",
            ["circle-dot-dashed"] = "rbxassetid://111451232827180",
            ["circle-dot"] = "rbxassetid://82947033619201",
            ["circle-ellipsis"] = "rbxassetid://91687150884779",
            ["circle-equal"] = "rbxassetid://95133963751438",
            ["circle-fading-arrow-up"] = "rbxassetid://104648212910336",
            ["circle-fading-plus"] = "rbxassetid://91847890443490",
            ["circle-gauge"] = "rbxassetid://108157549473765",
            ["circle-minus"] = "rbxassetid://133556159576809",
            ["circle-off"] = "rbxassetid://97923456918886",
            ["circle-parking-off"] = "rbxassetid://128369410981252",
            ["circle-parking"] = "rbxassetid://124034962915196",
            ["circle-pause"] = "rbxassetid://139337739700879",
            ["circle-percent"] = "rbxassetid://133311912860256",
            ["circle-play"] = "rbxassetid://120408917249739",
            ["circle-plus"] = "rbxassetid://113157136350384",
            ["circle-pound-sterling"] = "rbxassetid://105476153083828",
            ["circle-power"] = "rbxassetid://140676030155098",
            ["circle-question-mark"] = "rbxassetid://97516698664325",
            ["circle-slash-2"] = "rbxassetid://136766902186549",
            ["circle-slash"] = "rbxassetid://125206439913049",
            ["circle-small"] = "rbxassetid://73685402843600",
            ["circle-star"] = "rbxassetid://120318414957104",
            ["circle-stop"] = "rbxassetid://87400503942659",
            ["circle-user-round"] = "rbxassetid://95489465399880",
            ["circle-user"] = "rbxassetid://136220511671311",
            ["circle-x"] = "rbxassetid://76821953846248",
            ["circle"] = "rbxassetid://130359823580534",
            ["circuit-board"] = "rbxassetid://107695264369312",
            ["citrus"] = "rbxassetid://139018222976433",
            ["clapperboard"] = "rbxassetid://132660667070200",
            ["clipboard-check"] = "rbxassetid://92649798577170",
            ["clipboard-clock"] = "rbxassetid://123957515687745",
            ["clipboard-copy"] = "rbxassetid://125851897718493",
            ["clipboard-list"] = "rbxassetid://96460215958908",
            ["clipboard-minus"] = "rbxassetid://107968008485671",
            ["clipboard-paste"] = "rbxassetid://74382068849983",
            ["clipboard-pen-line"] = "rbxassetid://77711589791615",
            ["clipboard-pen"] = "rbxassetid://75290966822953",
            ["clipboard-plus"] = "rbxassetid://134285318675662",
            ["clipboard-type"] = "rbxassetid://89949374318028",
            ["clipboard-x"] = "rbxassetid://102222456890103",
            ["clipboard"] = "rbxassetid://89601995828423",
            ["clock-1"] = "rbxassetid://129363225422045",
            ["clock-10"] = "rbxassetid://104332695855541",
            ["clock-11"] = "rbxassetid://119023205186105",
            ["clock-12"] = "rbxassetid://117789618723068",
            ["clock-2"] = "rbxassetid://134710777209413",
            ["clock-3"] = "rbxassetid://136385631189327",
            ["clock-4"] = "rbxassetid://121808839832144",
            ["clock-5"] = "rbxassetid://85082019959457",
            ["clock-6"] = "rbxassetid://71009733505593",
            ["clock-7"] = "rbxassetid://103111188546225",
            ["clock-8"] = "rbxassetid://110059272125337",
            ["clock-9"] = "rbxassetid://77610027126437",
            ["clock-alert"] = "rbxassetid://97157344465162",
            ["clock-arrow-down"] = "rbxassetid://92349314416042",
            ["clock-arrow-up"] = "rbxassetid://111484286332629",
            ["clock-check"] = "rbxassetid://85231630218857",
            ["clock-fading"] = "rbxassetid://93205297285245",
            ["clock-plus"] = "rbxassetid://93367709263150",
            ["clock"] = "rbxassetid://121808839832144",
            ["closed-caption"] = "rbxassetid://99832644030788",
            ["cloud-alert"] = "rbxassetid://91967273658626",
            ["cloud-check"] = "rbxassetid://97318598202432",
            ["cloud-cog"] = "rbxassetid://96497764065749",
            ["cloud-download"] = "rbxassetid://121435581993566",
            ["cloud-drizzle"] = "rbxassetid://139525315752605",
            ["cloud-fog"] = "rbxassetid://76650233148776",
            ["cloud-hail"] = "rbxassetid://72320462748242",
            ["cloud-lightning"] = "rbxassetid://133517088924849",
            ["cloud-moon-rain"] = "rbxassetid://127667837827018",
            ["cloud-moon"] = "rbxassetid://71938114737914",
            ["cloud-off"] = "rbxassetid://131907154501444",
            ["cloud-rain-wind"] = "rbxassetid://107414583736721",
            ["cloud-rain"] = "rbxassetid://105547081967408",
            ["cloud-snow"] = "rbxassetid://72307126270226",
            ["cloud-sun-rain"] = "rbxassetid://99041604425705",
            ["cloud-sun"] = "rbxassetid://86114208148727",
            ["cloud-upload"] = "rbxassetid://93307473217005",
            ["cloud"] = "rbxassetid://121226497050352",
            ["cloudy"] = "rbxassetid://105360479023346",
            ["clover"] = "rbxassetid://74925550436750",
            ["club"] = "rbxassetid://108490365816628",
            ["code-xml"] = "rbxassetid://130150477351734",
            ["code"] = "rbxassetid://107380207681249",
            ["codepen"] = "rbxassetid://135643965971885",
            ["codesandbox"] = "rbxassetid://106911852964823",
            ["coffee"] = "rbxassetid://106864403231093",
            ["cog"] = "rbxassetid://116544501716299",
            ["coins"] = "rbxassetid://116510979641930",
            ["columns-2"] = "rbxassetid://113004100221850",
            ["columns-3-cog"] = "rbxassetid://121589691981064",
            ["columns-3"] = "rbxassetid://115223357399375",
            ["columns-4"] = "rbxassetid://130807991968419",
            ["combine"] = "rbxassetid://79908476334048",
            ["command"] = "rbxassetid://93648221906330",
            ["compass"] = "rbxassetid://115123411028382",
            ["component"] = "rbxassetid://110027788875080",
            ["computer"] = "rbxassetid://77480056459407",
            ["concierge-bell"] = "rbxassetid://140384259310436",
            ["cone"] = "rbxassetid://97759550688437",
            ["construction"] = "rbxassetid://106539489968173",
            ["contact-round"] = "rbxassetid://71907624112229",
            ["contact"] = "rbxassetid://75868297719012",
            ["container"] = "rbxassetid://91507237573499",
            ["contrast"] = "rbxassetid://112796643981497",
            ["cookie"] = "rbxassetid://73159504540002",
            ["cooking-pot"] = "rbxassetid://94959783129799",
            ["copy-check"] = "rbxassetid://91177247988892",
            ["copy-minus"] = "rbxassetid://109524509933035",
            ["copy-plus"] = "rbxassetid://113618379616952",
            ["copy-slash"] = "rbxassetid://93805787810390",
            ["copy-x"] = "rbxassetid://106557557978061",
            ["copy"] = "rbxassetid://78979572434545",
            ["copyleft"] = "rbxassetid://78559055698593",
            ["copyright"] = "rbxassetid://129433635747111",
            ["corner-down-left"] = "rbxassetid://90473561177832",
            ["corner-down-right"] = "rbxassetid://86512767702085",
            ["corner-left-down"] = "rbxassetid://139876989150630",
            ["corner-left-up"] = "rbxassetid://126228268096099",
            ["corner-right-down"] = "rbxassetid://89237035551302",
            ["corner-right-up"] = "rbxassetid://112851237026705",
            ["corner-up-left"] = "rbxassetid://84669279763024",
            ["corner-up-right"] = "rbxassetid://115099889693145",
            ["cpu"] = "rbxassetid://77549309870247",
            ["creative-commons"] = "rbxassetid://90408210735312",
            ["credit-card"] = "rbxassetid://99163352872346",
            ["croissant"] = "rbxassetid://130710485559420",
            ["crop"] = "rbxassetid://116344601101413",
            ["cross"] = "rbxassetid://101833377863588",
            ["crosshair"] = "rbxassetid://134242818164054",
            ["crown"] = "rbxassetid://127843403295538",
            ["cuboid"] = "rbxassetid://75618807946111",
            ["cup-soda"] = "rbxassetid://121098640829562",
            ["currency"] = "rbxassetid://90551250119972",
            ["cylinder"] = "rbxassetid://90569677179169",
            ["dam"] = "rbxassetid://76874486231393",
            ["database-backup"] = "rbxassetid://103403210984699",
            ["database-zap"] = "rbxassetid://131199921258418",
            ["database"] = "rbxassetid://126791525623846",
            ["decimals-arrow-left"] = "rbxassetid://120198500638749",
            ["decimals-arrow-right"] = "rbxassetid://118263047146797",
            ["delete"] = "rbxassetid://126279426372342",
            ["dessert"] = "rbxassetid://71508133278830",
            ["diameter"] = "rbxassetid://97429051503783",
            ["diamond-minus"] = "rbxassetid://128989071438290",
            ["diamond-percent"] = "rbxassetid://107717860105959",
            ["diamond-plus"] = "rbxassetid://134701163723675",
            ["diamond"] = "rbxassetid://105846996304890",
            ["dice-1"] = "rbxassetid://112650149591038",
            ["dice-2"] = "rbxassetid://112278274566793",
            ["dice-3"] = "rbxassetid://118526270626312",
            ["dice-4"] = "rbxassetid://113365650364004",
            ["dice-5"] = "rbxassetid://72768312430593",
            ["dice-6"] = "rbxassetid://85376239182543",
            ["dices"] = "rbxassetid://81268120302865",
            ["diff"] = "rbxassetid://135052708609715",
            ["disc-2"] = "rbxassetid://91419420404185",
            ["disc-3"] = "rbxassetid://135470554736048",
            ["disc-album"] = "rbxassetid://74693460404344",
            ["disc"] = "rbxassetid://101908120120777",
            ["divide"] = "rbxassetid://136678191878278",
            ["dna-off"] = "rbxassetid://89612426361540",
            ["dna"] = "rbxassetid://74007982981741",
            ["dock"] = "rbxassetid://121997427160252",
            ["dog"] = "rbxassetid://71920105558570",
            ["dollar-sign"] = "rbxassetid://127320961224019",
            ["donut"] = "rbxassetid://72204922742657",
            ["door-closed-locked"] = "rbxassetid://74027613267551",
            ["door-closed"] = "rbxassetid://136249099949073",
            ["door-open"] = "rbxassetid://91306356501736",
            ["dot"] = "rbxassetid://137321056643916",
            ["download"] = "rbxassetid://134814648082393",
            ["drafting-compass"] = "rbxassetid://99701976182841",
            ["drama"] = "rbxassetid://110297795801577",
            ["dribbble"] = "rbxassetid://80231809663849",
            ["drill"] = "rbxassetid://108644821412796",
            ["drone"] = "rbxassetid://117299095794783",
            ["droplet-off"] = "rbxassetid://119365002225172",
            ["droplet"] = "rbxassetid://100597455015098",
            ["droplets"] = "rbxassetid://140111846025180",
            ["drum"] = "rbxassetid://136979060344890",
            ["drumstick"] = "rbxassetid://104662462521709",
            ["dumbbell"] = "rbxassetid://80277236776212",
            ["ear-off"] = "rbxassetid://87421916192807",
            ["ear"] = "rbxassetid://121894949934209",
            ["earth-lock"] = "rbxassetid://88814147073745",
            ["earth"] = "rbxassetid://76231597751076",
            ["eclipse"] = "rbxassetid://114829622118222",
            ["egg-fried"] = "rbxassetid://90622538210545",
            ["egg-off"] = "rbxassetid://92288321309285",
            ["egg"] = "rbxassetid://117851493400222",
            ["ellipsis-vertical"] = "rbxassetid://117978708573781",
            ["ellipsis"] = "rbxassetid://140019550645825",
            ["equal-approximately"] = "rbxassetid://105382689698323",
            ["equal-not"] = "rbxassetid://76864449458032",
            ["equal"] = "rbxassetid://123467780715624",
            ["eraser"] = "rbxassetid://133957773112410",
            ["ethernet-port"] = "rbxassetid://75391715149314",
            ["euro"] = "rbxassetid://72229646524456",
            ["ev-charger"] = "rbxassetid://97906158859623",
            ["expand"] = "rbxassetid://137492887754537",
            ["external-link"] = "rbxassetid://129331830773832",
            ["eye-closed"] = "rbxassetid://111063268625789",
            ["eye-off"] = "rbxassetid://135928786788378",
            ["eye"] = "rbxassetid://100033680381365",
            ["facebook"] = "rbxassetid://72098528632192",
            ["factory"] = "rbxassetid://102170024318039",
            ["fan"] = "rbxassetid://78391400440696",
            ["fast-forward"] = "rbxassetid://121615540167909",
            ["feather"] = "rbxassetid://91872927606406",
            ["fence"] = "rbxassetid://123451565578029",
            ["ferris-wheel"] = "rbxassetid://79729205796176",
            ["figma"] = "rbxassetid://134182122852301",
            ["file-archive"] = "rbxassetid://77018106869967",
            ["file-axis-3d"] = "rbxassetid://133912328009885",
            ["file-badge"] = "rbxassetid://74564895394477",
            ["file-box"] = "rbxassetid://119264004071690",
            ["file-braces-corner"] = "rbxassetid://77253337986109",
            ["file-braces"] = "rbxassetid://95314128621234",
            ["file-chart-column-increasing"] = "rbxassetid://134449481172067",
            ["file-chart-column"] = "rbxassetid://82048481252560",
            ["file-chart-line"] = "rbxassetid://71954360551345",
            ["file-chart-pie"] = "rbxassetid://81072193564497",
            ["file-check-corner"] = "rbxassetid://76295552859171",
            ["file-check"] = "rbxassetid://82604001452455",
            ["file-clock"] = "rbxassetid://102325208830990",
            ["file-code-corner"] = "rbxassetid://78293841184371",
            ["file-code"] = "rbxassetid://130978036895504",
            ["file-cog"] = "rbxassetid://101385347151368",
            ["file-diff"] = "rbxassetid://96147216772241",
            ["file-digit"] = "rbxassetid://89220220354580",
            ["file-down"] = "rbxassetid://120650154178290",
            ["file-exclamation-point"] = "rbxassetid://102821865889635",
            ["file-headphone"] = "rbxassetid://100533735901986",
            ["file-heart"] = "rbxassetid://132214916401696",
            ["file-image"] = "rbxassetid://123334057511782",
            ["file-input"] = "rbxassetid://124728604166044",
            ["file-key"] = "rbxassetid://118790255921100",
            ["file-lock"] = "rbxassetid://72170228691242",
            ["file-minus-corner"] = "rbxassetid://119263271735124",
            ["file-minus"] = "rbxassetid://111014798459222",
            ["file-music"] = "rbxassetid://134948051536671",
            ["file-output"] = "rbxassetid://92146832572911",
            ["file-pen-line"] = "rbxassetid://104622936345006",
            ["file-pen"] = "rbxassetid://79556179730240",
            ["file-play"] = "rbxassetid://89006821567838",
            ["file-plus-corner"] = "rbxassetid://76544604043974",
            ["file-plus"] = "rbxassetid://78881710800060",
            ["file-question-mark"] = "rbxassetid://127617422859576",
            ["file-scan"] = "rbxassetid://129480105228213",
            ["file-search-corner"] = "rbxassetid://90974165234008",
            ["file-search"] = "rbxassetid://97780235974933",
            ["file-signal"] = "rbxassetid://122070252538165",
            ["file-sliders"] = "rbxassetid://85787771732439",
            ["file-spreadsheet"] = "rbxassetid://134501869359270",
            ["file-stack"] = "rbxassetid://138929929862605",
            ["file-symlink"] = "rbxassetid://91865722036510",
            ["file-terminal"] = "rbxassetid://116757454755476",
            ["file-text"] = "rbxassetid://90496405707281",
            ["file-type-corner"] = "rbxassetid://124902230275209",
            ["file-type"] = "rbxassetid://115272552799361",
            ["file-up"] = "rbxassetid://131173039312748",
            ["file-user"] = "rbxassetid://99552018455009",
            ["file-video-camera"] = "rbxassetid://81719056173960",
            ["file-volume"] = "rbxassetid://111264764438958",
            ["file-x-corner"] = "rbxassetid://87554136773609",
            ["file-x"] = "rbxassetid://107333775515154",
            ["file"] = "rbxassetid://74748492079329",
            ["files"] = "rbxassetid://102806336233202",
            ["film"] = "rbxassetid://120978945609706",
            ["fingerprint"] = "rbxassetid://112173305232811",
            ["fire-extinguisher"] = "rbxassetid://111643493006960",
            ["fish-off"] = "rbxassetid://89756724887508",
            ["fish-symbol"] = "rbxassetid://118475177681618",
            ["fish"] = "rbxassetid://124360663785796",
            ["flag-off"] = "rbxassetid://112944528856799",
            ["flag-triangle-left"] = "rbxassetid://88045221285272",
            ["flag-triangle-right"] = "rbxassetid://108292480304566",
            ["flag"] = "rbxassetid://78183383236196",
            ["flame-kindling"] = "rbxassetid://139728976917928",
            ["flame"] = "rbxassetid://98218034436456",
            ["flashlight-off"] = "rbxassetid://79780362871740",
            ["flashlight"] = "rbxassetid://100286985600444",
            ["flask-conical-off"] = "rbxassetid://112597970025298",
            ["flask-conical"] = "rbxassetid://128406680901165",
            ["flask-round"] = "rbxassetid://127508287324940",
            ["flip-horizontal-2"] = "rbxassetid://103726993598186",
            ["flip-horizontal"] = "rbxassetid://122937530107837",
            ["flip-vertical-2"] = "rbxassetid://103836358956328",
            ["flip-vertical"] = "rbxassetid://108003917346888",
            ["flower-2"] = "rbxassetid://72934574245145",
            ["flower"] = "rbxassetid://86129438272762",
            ["focus"] = "rbxassetid://87493973153317",
            ["fold-horizontal"] = "rbxassetid://92835712442240",
            ["fold-vertical"] = "rbxassetid://108873727253656",
            ["folder-archive"] = "rbxassetid://97312009460206",
            ["folder-check"] = "rbxassetid://128492920904557",
            ["folder-clock"] = "rbxassetid://111964836738545",
            ["folder-closed"] = "rbxassetid://118286209350843",
            ["folder-code"] = "rbxassetid://70624096349370",
            ["folder-cog"] = "rbxassetid://85299519462846",
            ["folder-dot"] = "rbxassetid://138687772725278",
            ["folder-down"] = "rbxassetid://118044108459225",
            ["folder-git-2"] = "rbxassetid://101394054141166",
            ["folder-git"] = "rbxassetid://121885778095158",
            ["folder-heart"] = "rbxassetid://79104747211105",
            ["folder-input"] = "rbxassetid://90699920697871",
            ["folder-kanban"] = "rbxassetid://78313285104072",
            ["folder-key"] = "rbxassetid://85270407596791",
            ["folder-lock"] = "rbxassetid://119201572260567",
            ["folder-minus"] = "rbxassetid://85648718999010",
            ["folder-open-dot"] = "rbxassetid://74741494767354",
            ["folder-open"] = "rbxassetid://76018996254888",
            ["folder-output"] = "rbxassetid://101532447937612",
            ["folder-pen"] = "rbxassetid://112770491173911",
            ["folder-plus"] = "rbxassetid://91865663406119",
            ["folder-root"] = "rbxassetid://103333751154693",
            ["folder-search-2"] = "rbxassetid://71276453442655",
            ["folder-search"] = "rbxassetid://110568075123861",
            ["folder-symlink"] = "rbxassetid://127485747227189",
            ["folder-sync"] = "rbxassetid://91544602659796",
            ["folder-tree"] = "rbxassetid://85577554337861",
            ["folder-up"] = "rbxassetid://72008269765857",
            ["folder-x"] = "rbxassetid://91699618247635",
            ["folder"] = "rbxassetid://80846616596607",
            ["folders"] = "rbxassetid://110351216219061",
            ["footprints"] = "rbxassetid://139192589041315",
            ["forklift"] = "rbxassetid://72030930983101",
            ["forward"] = "rbxassetid://97545944739523",
            ["frame"] = "rbxassetid://109080612832751",
            ["framer"] = "rbxassetid://108384807262391",
            ["frown"] = "rbxassetid://124407301067982",
            ["fuel"] = "rbxassetid://106447647274511",
            ["fullscreen"] = "rbxassetid://77793665526178",
            ["funnel-plus"] = "rbxassetid://100780233821928",
            ["funnel-x"] = "rbxassetid://70984385812555",
            ["funnel"] = "rbxassetid://108829540827529",
            ["gallery-horizontal-end"] = "rbxassetid://74672430161161",
            ["gallery-horizontal"] = "rbxassetid://80004001442122",
            ["gallery-thumbnails"] = "rbxassetid://136219289862706",
            ["gallery-vertical-end"] = "rbxassetid://106461402088317",
            ["gallery-vertical"] = "rbxassetid://119299431466725",
            ["gamepad-2"] = "rbxassetid://92483947987410",
            ["gamepad-directional"] = "rbxassetid://84342305212226",
            ["gamepad"] = "rbxassetid://121607283959010",
            ["gauge"] = "rbxassetid://110273524101447",
            ["gavel"] = "rbxassetid://78952298198456",
            ["gem"] = "rbxassetid://112904952151156",
            ["georgian-lari"] = "rbxassetid://98084432591687",
            ["ghost"] = "rbxassetid://113822048130017",
            ["gift"] = "rbxassetid://109855212076373",
            ["git-branch-minus"] = "rbxassetid://97385010649411",
            ["git-branch-plus"] = "rbxassetid://125944221134316",
            ["git-branch"] = "rbxassetid://90490195516649",
            ["git-commit-horizontal"] = "rbxassetid://133646041800147",
            ["git-commit-vertical"] = "rbxassetid://122098032990350",
            ["git-compare-arrows"] = "rbxassetid://84874426520216",
            ["git-compare"] = "rbxassetid://91945124438792",
            ["git-fork"] = "rbxassetid://89954992404765",
            ["git-graph"] = "rbxassetid://86166832019304",
            ["git-merge"] = "rbxassetid://131833355158059",
            ["git-pull-request-arrow"] = "rbxassetid://94507974577439",
            ["git-pull-request-closed"] = "rbxassetid://78070600389091",
            ["git-pull-request-create-arrow"] = "rbxassetid://127422677061091",
            ["git-pull-request-create"] = "rbxassetid://105929577383926",
            ["git-pull-request-draft"] = "rbxassetid://76173459869943",
            ["git-pull-request"] = "rbxassetid://138463010991471",
            ["github"] = "rbxassetid://120349554354380",
            ["gitlab"] = "rbxassetid://114054627192933",
            ["glass-water"] = "rbxassetid://115526102400988",
            ["glasses"] = "rbxassetid://87936407455373",
            ["globe-lock"] = "rbxassetid://134065526704402",
            ["globe"] = "rbxassetid://114238209622913",
            ["goal"] = "rbxassetid://120517954878160",
            ["gpu"] = "rbxassetid://95577823614219",
            ["graduation-cap"] = "rbxassetid://93771896340220",
            ["grape"] = "rbxassetid://134760640415561",
            ["grid-2x2-check"] = "rbxassetid://138468840220821",
            ["grid-2x2-plus"] = "rbxassetid://91811610580247",
            ["grid-2x2-x"] = "rbxassetid://72407303981388",
            ["grid-2x2"] = "rbxassetid://99050491897640",
            ["grid-3x2"] = "rbxassetid://95528684210010",
            ["grid-3x3"] = "rbxassetid://70419024781206",
            ["grip-horizontal"] = "rbxassetid://136255899715930",
            ["grip-vertical"] = "rbxassetid://137183678565296",
            ["grip"] = "rbxassetid://109058783556768",
            ["group"] = "rbxassetid://107643418926671",
            ["guitar"] = "rbxassetid://75915531867926",
            ["ham"] = "rbxassetid://74465607934635",
            ["hamburger"] = "rbxassetid://93086916815495",
            ["hammer"] = "rbxassetid://83545120140895",
            ["hand-coins"] = "rbxassetid://126990543175462",
            ["hand-fist"] = "rbxassetid://83341608917591",
            ["hand-grab"] = "rbxassetid://88867162163985",
            ["hand-heart"] = "rbxassetid://117507367668412",
            ["hand-helping"] = "rbxassetid://89897738419446",
            ["hand-metal"] = "rbxassetid://113619498548713",
            ["hand-platter"] = "rbxassetid://88594727743168",
            ["hand"] = "rbxassetid://130703864968637",
            ["handbag"] = "rbxassetid://135675846264061",
            ["handshake"] = "rbxassetid://78442115255814",
            ["hard-drive-download"] = "rbxassetid://73913801230614",
            ["hard-drive-upload"] = "rbxassetid://85762133615118",
            ["hard-drive"] = "rbxassetid://88183305858463",
            ["hard-hat"] = "rbxassetid://128050846767382",
            ["hash"] = "rbxassetid://82890331678520",
            ["hat-glasses"] = "rbxassetid://101165538224815",
            ["haze"] = "rbxassetid://108857561768901",
            ["hdmi-port"] = "rbxassetid://103693661037020",
            ["heading-1"] = "rbxassetid://118129315662110",
            ["heading-2"] = "rbxassetid://110209069670094",
            ["heading-3"] = "rbxassetid://90267885237062",
            ["heading-4"] = "rbxassetid://129625620307602",
            ["heading-5"] = "rbxassetid://120386663181267",
            ["heading-6"] = "rbxassetid://90959079775093",
            ["heading"] = "rbxassetid://129254312067735",
            ["headphone-off"] = "rbxassetid://85038251615641",
            ["headphones"] = "rbxassetid://118833729589183",
            ["headset"] = "rbxassetid://129269236787694",
            ["heart-crack"] = "rbxassetid://110987638564119",
            ["heart-handshake"] = "rbxassetid://111483078692002",
            ["heart-minus"] = "rbxassetid://96827380163326",
            ["heart-off"] = "rbxassetid://89748414415617",
            ["heart-plus"] = "rbxassetid://94877796283249",
            ["heart-pulse"] = "rbxassetid://129352925579546",
            ["heart"] = "rbxassetid://116559368303288",
            ["heater"] = "rbxassetid://140478466880916",
            ["helicopter"] = "rbxassetid://111557171735930",
            ["hexagon"] = "rbxassetid://127592089339199",
            ["highlighter"] = "rbxassetid://77411555641113",
            ["history"] = "rbxassetid://123980022019922",
            ["hop-off"] = "rbxassetid://103386036934034",
            ["hop"] = "rbxassetid://82778923997672",
            ["hospital"] = "rbxassetid://105868763850707",
            ["hotel"] = "rbxassetid://132283390859718",
            ["hourglass"] = "rbxassetid://86160434939203",
            ["house-heart"] = "rbxassetid://136054771868597",
            ["house-plug"] = "rbxassetid://71438263712075",
            ["house-plus"] = "rbxassetid://118495165208309",
            ["house-wifi"] = "rbxassetid://126495519725698",
            ["house"] = "rbxassetid://98755624629571",
            ["ice-cream-bowl"] = "rbxassetid://124867218454386",
            ["ice-cream-cone"] = "rbxassetid://90751397288639",
            ["id-card-lanyard"] = "rbxassetid://90761480469224",
            ["id-card"] = "rbxassetid://75354294622640",
            ["image-down"] = "rbxassetid://78972295741235",
            ["image-minus"] = "rbxassetid://101066016918565",
            ["image-off"] = "rbxassetid://81934811700938",
            ["image-play"] = "rbxassetid://129501806784210",
            ["image-plus"] = "rbxassetid://70391970623917",
            ["image-up"] = "rbxassetid://126610009605241",
            ["image-upscale"] = "rbxassetid://106963545024679",
            ["images"] = "rbxassetid://79350649395557",
            ["import"] = "rbxassetid://116545008906029",
            ["inbox"] = "rbxassetid://112591360302868",
            ["indian-rupee"] = "rbxassetid://113038778381805",
            ["infinity"] = "rbxassetid://98083086936965",
            ["info"] = "rbxassetid://124560466474914",
            ["inspection-panel"] = "rbxassetid://70905313146088",
            ["instagram"] = "rbxassetid://119864798614855",
            ["italic"] = "rbxassetid://96220378864282",
            ["iteration-ccw"] = "rbxassetid://140221832794083",
            ["iteration-cw"] = "rbxassetid://95534489554662",
            ["japanese-yen"] = "rbxassetid://106362863465813",
            ["joystick"] = "rbxassetid://99416790224739",
            ["kanban"] = "rbxassetid://125934100055431",
            ["kayak"] = "rbxassetid://136107544609389",
            ["key-round"] = "rbxassetid://83619031955390",
            ["key-square"] = "rbxassetid://94621420033649",
            ["key"] = "rbxassetid://96510194465420",
            ["keyboard-music"] = "rbxassetid://121058541758636",
            ["keyboard-off"] = "rbxassetid://92466375369772",
            ["keyboard"] = "rbxassetid://121474456068237",
            ["lamp-ceiling"] = "rbxassetid://80032758469141",
            ["lamp-desk"] = "rbxassetid://85290686983238",
            ["lamp-floor"] = "rbxassetid://104585881375892",
            ["lamp-wall-down"] = "rbxassetid://91271394132073",
            ["lamp-wall-up"] = "rbxassetid://132141464337445",
            ["lamp"] = "rbxassetid://110730830653382",
            ["land-plot"] = "rbxassetid://96449039620294",
            ["landmark"] = "rbxassetid://76885079756393",
            ["languages"] = "rbxassetid://90816903776498",
            ["laptop-minimal-check"] = "rbxassetid://114352019833865",
            ["laptop-minimal"] = "rbxassetid://136705765566068",
            ["laptop"] = "rbxassetid://111387063244975",
            ["lasso-select"] = "rbxassetid://105609719912753",
            ["lasso"] = "rbxassetid://121072936884007",
            ["laugh"] = "rbxassetid://104491311361166",
            ["layers-2"] = "rbxassetid://70536710516357",
            ["layers"] = "rbxassetid://81973586053257",
            ["layout-dashboard"] = "rbxassetid://139929981863901",
            ["layout-grid"] = "rbxassetid://81344910161871",
            ["layout-list"] = "rbxassetid://87462136296578",
            ["layout-panel-left"] = "rbxassetid://125092469751491",
            ["layout-panel-top"] = "rbxassetid://91943941515944",
            ["layout-template"] = "rbxassetid://115564446417985",
            ["leaf"] = "rbxassetid://119951075637174",
            ["leafy-green"] = "rbxassetid://105146290493154",
            ["lectern"] = "rbxassetid://106166425183862",
            ["library-big"] = "rbxassetid://106794530191412",
            ["library"] = "rbxassetid://114334671982047",
            ["life-buoy"] = "rbxassetid://81168450671956",
            ["ligature"] = "rbxassetid://111397873269411",
            ["lightbulb-off"] = "rbxassetid://83795722296178",
            ["lightbulb"] = "rbxassetid://103871245626488",
            ["line-squiggle"] = "rbxassetid://109555164424447",
            ["link-2-off"] = "rbxassetid://76885956296867",
            ["link-2"] = "rbxassetid://86072351557466",
            ["link"] = "rbxassetid://131607023382430",
            ["linkedin"] = "rbxassetid://132842789255788",
            ["list-check"] = "rbxassetid://72374358471156",
            ["list-checks"] = "rbxassetid://99809353635593",
            ["list-chevrons-down-up"] = "rbxassetid://137409641500711",
            ["list-chevrons-up-down"] = "rbxassetid://81825351389084",
            ["list-collapse"] = "rbxassetid://124505247702401",
            ["list-end"] = "rbxassetid://77650610048119",
            ["list-filter-plus"] = "rbxassetid://96385120752336",
            ["list-filter"] = "rbxassetid://103321376129527",
            ["list-indent-decrease"] = "rbxassetid://137879979228193",
            ["list-indent-increase"] = "rbxassetid://79051053161201",
            ["list-minus"] = "rbxassetid://138507965142671",
            ["list-music"] = "rbxassetid://126380635781840",
            ["list-ordered"] = "rbxassetid://83212528113913",
            ["list-plus"] = "rbxassetid://112384738137814",
            ["list-restart"] = "rbxassetid://91703153577421",
            ["list-start"] = "rbxassetid://84828348299727",
            ["list-todo"] = "rbxassetid://132980603752108",
            ["list-tree"] = "rbxassetid://97685396239010",
            ["list-video"] = "rbxassetid://93648525452489",
            ["list-x"] = "rbxassetid://113025303988861",
            ["list"] = "rbxassetid://113179976918783",
            ["loader-circle"] = "rbxassetid://116535712789945",
            ["loader-pinwheel"] = "rbxassetid://108513357940900",
            ["loader"] = "rbxassetid://78408734580845",
            ["locate-fixed"] = "rbxassetid://137367361548433",
            ["locate-off"] = "rbxassetid://73729216338137",
            ["locate"] = "rbxassetid://84467676590391",
            ["lock-keyhole-open"] = "rbxassetid://110863509313073",
            ["lock-keyhole"] = "rbxassetid://78672912777756",
            ["lock-open"] = "rbxassetid://93597915325122",
            ["lock"] = "rbxassetid://134724289526879",
            ["log-in"] = "rbxassetid://103768533135201",
            ["log-out"] = "rbxassetid://84895399304975",
            ["logs"] = "rbxassetid://89772091251787",
            ["lollipop"] = "rbxassetid://84681611583044",
            ["luggage"] = "rbxassetid://76619236486400",
            ["magnet"] = "rbxassetid://135162361226972",
            ["mail-check"] = "rbxassetid://86921536259917",
            ["mail-minus"] = "rbxassetid://81989813236553",
            ["mail-open"] = "rbxassetid://122785416858638",
            ["mail-plus"] = "rbxassetid://104886401588341",
            ["mail-question-mark"] = "rbxassetid://126540170949819",
            ["mail-search"] = "rbxassetid://135616173775287",
            ["mail-warning"] = "rbxassetid://81495303676089",
            ["mail-x"] = "rbxassetid://74607841705644",
            ["mail"] = "rbxassetid://103945161245599",
            ["mailbox"] = "rbxassetid://82765503320335",
            ["mails"] = "rbxassetid://90673453450080",
            ["map-minus"] = "rbxassetid://129525760577747",
            ["map-pin-check-inside"] = "rbxassetid://107130529843809",
            ["map-pin-check"] = "rbxassetid://118110914690154",
            ["map-pin-house"] = "rbxassetid://80546885029816",
            ["map-pin-minus-inside"] = "rbxassetid://79005529692964",
            ["map-pin-minus"] = "rbxassetid://74518762643623",
            ["map-pin-off"] = "rbxassetid://82474689391020",
            ["map-pin-pen"] = "rbxassetid://113515395277504",
            ["map-pin-plus-inside"] = "rbxassetid://134639656514430",
            ["map-pin-plus"] = "rbxassetid://91875228967029",
            ["map-pin-x-inside"] = "rbxassetid://126235934252379",
            ["map-pin-x"] = "rbxassetid://101085273547316",
            ["map-pin"] = "rbxassetid://84279202219901",
            ["map-pinned"] = "rbxassetid://103963788475034",
            ["map-plus"] = "rbxassetid://129388826743495",
            ["map"] = "rbxassetid://95107167260947",
            ["mars-stroke"] = "rbxassetid://131973193186828",
            ["mars"] = "rbxassetid://111287112372511",
            ["martini"] = "rbxassetid://82977695401058",
            ["maximize-2"] = "rbxassetid://73085922906397",
            ["maximize"] = "rbxassetid://76045941763188",
            ["medal"] = "rbxassetid://79016002264450",
            ["megaphone-off"] = "rbxassetid://124280774193935",
            ["megaphone"] = "rbxassetid://118759541854879",
            ["meh"] = "rbxassetid://132197867028557",
            ["memory-stick"] = "rbxassetid://93212591343119",
            ["menu"] = "rbxassetid://77021539815611",
            ["merge"] = "rbxassetid://126201866476775",
            ["message-circle-code"] = "rbxassetid://112865244991651",
            ["message-circle-dashed"] = "rbxassetid://81525157881897",
            ["message-circle-heart"] = "rbxassetid://101990756073677",
            ["message-circle-more"] = "rbxassetid://92856823884663",
            ["message-circle-off"] = "rbxassetid://134955643890328",
            ["message-circle-plus"] = "rbxassetid://106562979649273",
            ["message-circle-question-mark"] = "rbxassetid://107700302759934",
            ["message-circle-reply"] = "rbxassetid://137071749508334",
            ["message-circle-warning"] = "rbxassetid://119020096067894",
            ["message-circle-x"] = "rbxassetid://126843387725536",
            ["message-circle"] = "rbxassetid://127255077587058",
            ["message-square-code"] = "rbxassetid://110968863152123",
            ["message-square-dashed"] = "rbxassetid://107653455516238",
            ["message-square-diff"] = "rbxassetid://75472190472625",
            ["message-square-dot"] = "rbxassetid://127806382463916",
            ["message-square-heart"] = "rbxassetid://75612811742074",
            ["message-square-lock"] = "rbxassetid://81268215619563",
            ["message-square-more"] = "rbxassetid://120139782405970",
            ["message-square-off"] = "rbxassetid://99961019005789",
            ["message-square-plus"] = "rbxassetid://76934450256199",
            ["message-square-quote"] = "rbxassetid://116670768629340",
            ["message-square-reply"] = "rbxassetid://130985622754637",
            ["message-square-share"] = "rbxassetid://131017005324026",
            ["message-square-text"] = "rbxassetid://94899503194205",
            ["message-square-warning"] = "rbxassetid://138432903962261",
            ["message-square-x"] = "rbxassetid://137285463279462",
            ["message-square"] = "rbxassetid://83881670383280",
            ["messages-square"] = "rbxassetid://97532166733358",
            ["mic-off"] = "rbxassetid://82123034444822",
            ["mic-vocal"] = "rbxassetid://99082286164362",
            ["mic"] = "rbxassetid://89640799126523",
            ["microchip"] = "rbxassetid://73937907669903",
            ["microscope"] = "rbxassetid://116875530102782",
            ["microwave"] = "rbxassetid://108411735353008",
            ["milestone"] = "rbxassetid://101618292325920",
            ["milk-off"] = "rbxassetid://72388480962742",
            ["milk"] = "rbxassetid://96221903896918",
            ["minimize-2"] = "rbxassetid://116269596042539",
            ["minimize"] = "rbxassetid://121304296213645",
            ["minus"] = "rbxassetid://118026365011536",
            ["monitor-check"] = "rbxassetid://86651948439229",
            ["monitor-cloud"] = "rbxassetid://85931096038318",
            ["monitor-cog"] = "rbxassetid://94345128715799",
            ["monitor-dot"] = "rbxassetid://130394010063680",
            ["monitor-down"] = "rbxassetid://97466933743423",
            ["monitor-off"] = "rbxassetid://74395526657953",
            ["monitor-pause"] = "rbxassetid://76002184067562",
            ["monitor-play"] = "rbxassetid://133018824306217",
            ["monitor-smartphone"] = "rbxassetid://84335680433378",
            ["monitor-speaker"] = "rbxassetid://81744810060380",
            ["monitor-stop"] = "rbxassetid://98708958984757",
            ["monitor-up"] = "rbxassetid://96035360858377",
            ["monitor-x"] = "rbxassetid://126265210441423",
            ["monitor"] = "rbxassetid://72664649203050",
            ["moon-star"] = "rbxassetid://82782200506348",
            ["moon"] = "rbxassetid://83380517901735",
            ["motorbike"] = "rbxassetid://94580787368233",
            ["mountain-snow"] = "rbxassetid://105315495740588",
            ["mountain"] = "rbxassetid://73269957566415",
            ["mouse-off"] = "rbxassetid://75267871697595",
            ["mouse-pointer-2-off"] = "rbxassetid://104701076865632",
            ["mouse-pointer-2"] = "rbxassetid://117093892862228",
            ["mouse-pointer-ban"] = "rbxassetid://106849413057133",
            ["mouse-pointer-click"] = "rbxassetid://107150227368485",
            ["mouse-pointer"] = "rbxassetid://72322454962935",
            ["mouse"] = "rbxassetid://73096068864710",
            ["move-3d"] = "rbxassetid://103365982054003",
            ["move-diagonal-2"] = "rbxassetid://117298577948096",
            ["move-diagonal"] = "rbxassetid://101433481954184",
            ["move-down-left"] = "rbxassetid://102819433534567",
            ["move-down-right"] = "rbxassetid://101479760041877",
            ["move-down"] = "rbxassetid://70510115135583",
            ["move-horizontal"] = "rbxassetid://88513523439149",
            ["move-left"] = "rbxassetid://137614740247980",
            ["move-right"] = "rbxassetid://132455779472989",
            ["move-up-left"] = "rbxassetid://139079815540148",
            ["move-up-right"] = "rbxassetid://105885140592646",
            ["move-up"] = "rbxassetid://84505444262658",
            ["move-vertical"] = "rbxassetid://86234730730899",
            ["move"] = "rbxassetid://116138709011735",
            ["music-2"] = "rbxassetid://134397426600888",
            ["music-3"] = "rbxassetid://94466120066498",
            ["music-4"] = "rbxassetid://132459323665838",
            ["music"] = "rbxassetid://113343203848535",
            ["navigation-2-off"] = "rbxassetid://116569611780763",
            ["navigation-2"] = "rbxassetid://81889066747907",
            ["navigation-off"] = "rbxassetid://87003270290777",
            ["navigation"] = "rbxassetid://79308213542922",
            ["network"] = "rbxassetid://127410729922644",
            ["newspaper"] = "rbxassetid://123479530460544",
            ["nfc"] = "rbxassetid://76822396542242",
            ["non-binary"] = "rbxassetid://78442360386235",
            ["notebook-pen"] = "rbxassetid://140380614761023",
            ["notebook-tabs"] = "rbxassetid://127371085570083",
            ["notebook-text"] = "rbxassetid://93061585217270",
            ["notebook"] = "rbxassetid://136132108664987",
            ["notepad-text-dashed"] = "rbxassetid://135793446376219",
            ["notepad-text"] = "rbxassetid://93404682958966",
            ["nut-off"] = "rbxassetid://78795397311573",
            ["nut"] = "rbxassetid://127146410705656",
            ["octagon-alert"] = "rbxassetid://140438367956051",
            ["octagon-minus"] = "rbxassetid://74720436795421",
            ["octagon-pause"] = "rbxassetid://103161463909039",
            ["octagon-x"] = "rbxassetid://90498161006311",
            ["octagon"] = "rbxassetid://120803515514852",
            ["omega"] = "rbxassetid://70414080018786",
            ["option"] = "rbxassetid://100776883894054",
            ["orbit"] = "rbxassetid://108926136860562",
            ["origami"] = "rbxassetid://136020626667101",
            ["package-2"] = "rbxassetid://70394974762575",
            ["package-check"] = "rbxassetid://102374216055130",
            ["package-minus"] = "rbxassetid://114492858789692",
            ["package-open"] = "rbxassetid://132890233237818",
            ["package-plus"] = "rbxassetid://129261988138366",
            ["package-search"] = "rbxassetid://95465120894145",
            ["package-x"] = "rbxassetid://70818501607442",
            ["package"] = "rbxassetid://97261141732706",
            ["paint-bucket"] = "rbxassetid://124275586663284",
            ["paint-roller"] = "rbxassetid://115248074358348",
            ["paintbrush-vertical"] = "rbxassetid://105151296591292",
            ["paintbrush"] = "rbxassetid://125572663700289",
            ["palette"] = "rbxassetid://86350350950064",
            ["panda"] = "rbxassetid://132509022802512",
            ["panel-bottom-close"] = "rbxassetid://74287004071159",
            ["panel-bottom-dashed"] = "rbxassetid://131084651621603",
            ["panel-bottom-open"] = "rbxassetid://107768659586540",
            ["panel-bottom"] = "rbxassetid://132127145048511",
            ["panel-left-close"] = "rbxassetid://126579818823552",
            ["panel-left-dashed"] = "rbxassetid://75536606374585",
            ["panel-left-open"] = "rbxassetid://111075816195767",
            ["panel-left-right-dashed"] = "rbxassetid://110100707973959",
            ["panel-left"] = "rbxassetid://97419752870313",
            ["panel-right-close"] = "rbxassetid://139528655524132",
            ["panel-right-dashed"] = "rbxassetid://94959793877311",
            ["panel-right-open"] = "rbxassetid://118114419142794",
            ["panel-right"] = "rbxassetid://116365035443156",
            ["panel-top-bottom-dashed"] = "rbxassetid://134737235653344",
            ["panel-top-close"] = "rbxassetid://83578325777808",
            ["panel-top-dashed"] = "rbxassetid://70522913169237",
            ["panel-top-open"] = "rbxassetid://137959875507454",
            ["panel-top"] = "rbxassetid://75838479462875",
            ["panels-left-bottom"] = "rbxassetid://72996856149149",
            ["panels-right-bottom"] = "rbxassetid://90659068960726",
            ["panels-top-left"] = "rbxassetid://79858853850600",
            ["paperclip"] = "rbxassetid://92088291163453",
            ["parentheses"] = "rbxassetid://78950955173096",
            ["parking-meter"] = "rbxassetid://84652733960568",
            ["party-popper"] = "rbxassetid://111626795712193",
            ["pause"] = "rbxassetid://74873705394436",
            ["paw-print"] = "rbxassetid://112218825427601",
            ["pc-case"] = "rbxassetid://122978648019101",
            ["pen-line"] = "rbxassetid://109108135755303",
            ["pen-off"] = "rbxassetid://84807123119438",
            ["pen-tool"] = "rbxassetid://106145404953445",
            ["pen"] = "rbxassetid://72037878096321",
            ["pencil-line"] = "rbxassetid://88392917053533",
            ["pencil-off"] = "rbxassetid://103330927652832",
            ["pencil-ruler"] = "rbxassetid://110120288284597",
            ["pencil"] = "rbxassetid://137986121120732",
            ["pentagon"] = "rbxassetid://79184802179890",
            ["percent"] = "rbxassetid://130155041032013",
            ["person-standing"] = "rbxassetid://125020872044147",
            ["philippine-peso"] = "rbxassetid://91173798254675",
            ["phone-call"] = "rbxassetid://70555587592860",
            ["phone-forwarded"] = "rbxassetid://113269614319737",
            ["phone-incoming"] = "rbxassetid://82863576359288",
            ["phone-missed"] = "rbxassetid://130156165198376",
            ["phone-off"] = "rbxassetid://133318623553383",
            ["phone-outgoing"] = "rbxassetid://104576478735825",
            ["phone"] = "rbxassetid://128804946640049",
            ["pi"] = "rbxassetid://74936036243146",
            ["piano"] = "rbxassetid://85008880789520",
            ["pickaxe"] = "rbxassetid://105888023317688",
            ["picture-in-picture-2"] = "rbxassetid://112803319544468",
            ["picture-in-picture"] = "rbxassetid://80579597835123",
            ["piggy-bank"] = "rbxassetid://79498575790721",
            ["pilcrow-left"] = "rbxassetid://103803000849583",
            ["pilcrow-right"] = "rbxassetid://104881733911870",
            ["pilcrow"] = "rbxassetid://139512780392871",
            ["pill-bottle"] = "rbxassetid://118394692404597",
            ["pill"] = "rbxassetid://73280534813448",
            ["pin-off"] = "rbxassetid://127696372451750",
            ["pin"] = "rbxassetid://120978111007514",
            ["pipette"] = "rbxassetid://133167932934404",
            ["pizza"] = "rbxassetid://126964453193501",
            ["plane-landing"] = "rbxassetid://122555692211889",
            ["plane-takeoff"] = "rbxassetid://117179478829575",
            ["plane"] = "rbxassetid://126985561580989",
            ["play"] = "rbxassetid://135609604299893",
            ["plug-2"] = "rbxassetid://97912386476366",
            ["plug-zap"] = "rbxassetid://74506269884055",
            ["plug"] = "rbxassetid://99782373064495",
            ["plus"] = "rbxassetid://111774323017047",
            ["pocket-knife"] = "rbxassetid://134075428063965",
            ["pocket"] = "rbxassetid://136686762542964",
            ["podcast"] = "rbxassetid://109577075549215",
            ["pointer-off"] = "rbxassetid://95488389312794",
            ["pointer"] = "rbxassetid://92615117311099",
            ["popcorn"] = "rbxassetid://139446511232750",
            ["popsicle"] = "rbxassetid://112696318077073",
            ["pound-sterling"] = "rbxassetid://127482649469130",
            ["power-off"] = "rbxassetid://118768311012214",
            ["power"] = "rbxassetid://96479131758775",
            ["presentation"] = "rbxassetid://106134583757890",
            ["printer-check"] = "rbxassetid://130273549443689",
            ["printer"] = "rbxassetid://76080649734247",
            ["projector"] = "rbxassetid://103281856385283",
            ["proportions"] = "rbxassetid://130046855997237",
            ["puzzle"] = "rbxassetid://136837798892463",
            ["pyramid"] = "rbxassetid://107811442374127",
            ["qr-code"] = "rbxassetid://105329945723350",
            ["quote"] = "rbxassetid://103271711590001",
            ["rabbit"] = "rbxassetid://98580518804206",
            ["radar"] = "rbxassetid://138528222906635",
            ["radiation"] = "rbxassetid://104499586848433",
            ["radical"] = "rbxassetid://132758286926047",
            ["radio-receiver"] = "rbxassetid://129598303378835",
            ["radio-tower"] = "rbxassetid://93958663130054",
            ["radio"] = "rbxassetid://85611589536956",
            ["radius"] = "rbxassetid://89814505307129",
            ["rail-symbol"] = "rbxassetid://134295386306962",
            ["rainbow"] = "rbxassetid://132488862841895",
            ["rat"] = "rbxassetid://127400975953159",
            ["ratio"] = "rbxassetid://126369423897295",
            ["receipt-cent"] = "rbxassetid://91557573925201",
            ["receipt-euro"] = "rbxassetid://94015722210295",
            ["receipt-indian-rupee"] = "rbxassetid://89718170439990",
            ["receipt-japanese-yen"] = "rbxassetid://132472560758851",
            ["receipt-pound-sterling"] = "rbxassetid://73934967569625",
            ["receipt-russian-ruble"] = "rbxassetid://105164576936853",
            ["receipt-swiss-franc"] = "rbxassetid://72503668620116",
            ["receipt-text"] = "rbxassetid://138483536013737",
            ["receipt-turkish-lira"] = "rbxassetid://91950765836342",
            ["receipt"] = "rbxassetid://77877895901792",
            ["rectangle-circle"] = "rbxassetid://100642423153903",
            ["rectangle-ellipsis"] = "rbxassetid://112919953980965",
            ["rectangle-goggles"] = "rbxassetid://98605436666727",
            ["rectangle-horizontal"] = "rbxassetid://90224199814966",
            ["rectangle-vertical"] = "rbxassetid://117277050590967",
            ["recycle"] = "rbxassetid://140417023381961",
            ["redo-2"] = "rbxassetid://70451039017914",
            ["redo-dot"] = "rbxassetid://94252981719732",
            ["redo"] = "rbxassetid://116150342119054",
            ["refresh-ccw-dot"] = "rbxassetid://106702246753270",
            ["refresh-ccw"] = "rbxassetid://117913330389477",
            ["refresh-cw-off"] = "rbxassetid://140179498843054",
            ["refresh-cw"] = "rbxassetid://138133190015277",
            ["refrigerator"] = "rbxassetid://102614042652753",
            ["regex"] = "rbxassetid://100727200791841",
            ["remove-formatting"] = "rbxassetid://112833162022628",
            ["repeat-1"] = "rbxassetid://130144534857095",
            ["repeat-2"] = "rbxassetid://85927537182704",
            ["repeat"] = "rbxassetid://121886242955173",
            ["replace-all"] = "rbxassetid://127862728198635",
            ["replace"] = "rbxassetid://128404082279430",
            ["reply-all"] = "rbxassetid://71723137343562",
            ["reply"] = "rbxassetid://109788633497028",
            ["rewind"] = "rbxassetid://95205297521988",
            ["ribbon"] = "rbxassetid://94265331526851",
            ["rocket"] = "rbxassetid://87412317685854",
            ["rocking-chair"] = "rbxassetid://110420269495360",
            ["roller-coaster"] = "rbxassetid://112426178972099",
            ["rose"] = "rbxassetid://126336840238769",
            ["rotate-3d"] = "rbxassetid://76300551576392",
            ["rotate-ccw-key"] = "rbxassetid://74976035240976",
            ["rotate-ccw-square"] = "rbxassetid://90515853170424",
            ["rotate-ccw"] = "rbxassetid://110116685948665",
            ["rotate-cw-square"] = "rbxassetid://77095448159303",
            ["rotate-cw"] = "rbxassetid://84183336178654",
            ["route-off"] = "rbxassetid://106350402024079",
            ["route"] = "rbxassetid://89968303228953",
            ["router"] = "rbxassetid://102130331994471",
            ["rows-2"] = "rbxassetid://112556185960101",
            ["rows-3"] = "rbxassetid://117215586961375",
            ["rows-4"] = "rbxassetid://125646021959055",
            ["rss"] = "rbxassetid://131789058984793",
            ["ruler-dimension-line"] = "rbxassetid://70673861371412",
            ["ruler"] = "rbxassetid://81432445547423",
            ["russian-ruble"] = "rbxassetid://126357936542156",
            ["sailboat"] = "rbxassetid://87110567187540",
            ["salad"] = "rbxassetid://128864507821603",
            ["sandwich"] = "rbxassetid://104573187458917",
            ["satellite-dish"] = "rbxassetid://136742443888305",
            ["satellite"] = "rbxassetid://134967053164645",
            ["saudi-riyal"] = "rbxassetid://102282769104635",
            ["save-all"] = "rbxassetid://116946975799440",
            ["save-off"] = "rbxassetid://87085435778560",
            ["save"] = "rbxassetid://126116963775616",
            ["scale-3d"] = "rbxassetid://72414199620352",
            ["scale"] = "rbxassetid://108203682317477",
            ["scaling"] = "rbxassetid://122360365318466",
            ["scan-barcode"] = "rbxassetid://96889457154761",
            ["scan-eye"] = "rbxassetid://99244790601968",
            ["scan-face"] = "rbxassetid://109959345069668",
            ["scan-heart"] = "rbxassetid://106280819776142",
            ["scan-line"] = "rbxassetid://126544908146540",
            ["scan-qr-code"] = "rbxassetid://105409149549927",
            ["scan-search"] = "rbxassetid://80009010551347",
            ["scan-text"] = "rbxassetid://73702396787766",
            ["scan"] = "rbxassetid://123104789658180",
            ["school"] = "rbxassetid://76351530290068",
            ["scissors-line-dashed"] = "rbxassetid://122237447974173",
            ["scissors"] = "rbxassetid://118665510911274",
            ["screen-share-off"] = "rbxassetid://107677572669805",
            ["screen-share"] = "rbxassetid://85137895705653",
            ["scroll-text"] = "rbxassetid://97321022666868",
            ["scroll"] = "rbxassetid://74072101474951",
            ["search-check"] = "rbxassetid://75442076191356",
            ["search-code"] = "rbxassetid://117114794592802",
            ["search-slash"] = "rbxassetid://96483932261041",
            ["search-x"] = "rbxassetid://137319957522951",
            ["search"] = "rbxassetid://121018724060431",
            ["section"] = "rbxassetid://91732188298948",
            ["send-horizontal"] = "rbxassetid://111734392411664",
            ["send-to-back"] = "rbxassetid://75340312862253",
            ["send"] = "rbxassetid://127751956873796",
            ["separator-horizontal"] = "rbxassetid://84864453699927",
            ["separator-vertical"] = "rbxassetid://84031801478581",
            ["server-cog"] = "rbxassetid://138470287250966",
            ["server-crash"] = "rbxassetid://132810618000212",
            ["server-off"] = "rbxassetid://114048751507723",
            ["server"] = "rbxassetid://92188766517878",
            ["settings-2"] = "rbxassetid://135684703553372",
            ["settings"] = "rbxassetid://80758916183665",
            ["shapes"] = "rbxassetid://129989433311409",
            ["share-2"] = "rbxassetid://71210767962065",
            ["share"] = "rbxassetid://87340985053299",
            ["sheet"] = "rbxassetid://134902122480171",
            ["shell"] = "rbxassetid://140212943563599",
            ["shield-alert"] = "rbxassetid://114995877719925",
            ["shield-ban"] = "rbxassetid://108765041044649",
            ["shield-check"] = "rbxassetid://87354736164608",
            ["shield-ellipsis"] = "rbxassetid://114794739892123",
            ["shield-half"] = "rbxassetid://117842634172647",
            ["shield-minus"] = "rbxassetid://89965059528921",
            ["shield-off"] = "rbxassetid://133426959132690",
            ["shield-plus"] = "rbxassetid://100664857995498",
            ["shield-question-mark"] = "rbxassetid://135722075265150",
            ["shield-user"] = "rbxassetid://124832775645347",
            ["shield-x"] = "rbxassetid://73370117343811",
            ["shield"] = "rbxassetid://110987169760162",
            ["ship-wheel"] = "rbxassetid://130797795829448",
            ["ship"] = "rbxassetid://83995100553930",
            ["shirt"] = "rbxassetid://106579555405966",
            ["shopping-bag"] = "rbxassetid://71885477293226",
            ["shopping-basket"] = "rbxassetid://138646411956433",
            ["shopping-cart"] = "rbxassetid://128420521375441",
            ["shovel"] = "rbxassetid://102465000512056",
            ["shower-head"] = "rbxassetid://75884944024117",
            ["shredder"] = "rbxassetid://122125164414463",
            ["shrimp"] = "rbxassetid://102625900815307",
            ["shrink"] = "rbxassetid://90953687918880",
            ["shrub"] = "rbxassetid://127326280714343",
            ["shuffle"] = "rbxassetid://132382786975101",
            ["sigma"] = "rbxassetid://126884244870899",
            ["signal-high"] = "rbxassetid://130436670012270",
            ["signal-low"] = "rbxassetid://73674683500458",
            ["signal-medium"] = "rbxassetid://125003021367019",
            ["signal-zero"] = "rbxassetid://130045332414754",
            ["signal"] = "rbxassetid://78424889355261",
            ["signature"] = "rbxassetid://114402748013000",
            ["signpost-big"] = "rbxassetid://115780185675001",
            ["signpost"] = "rbxassetid://106584743791433",
            ["siren"] = "rbxassetid://134210267818039",
            ["skip-back"] = "rbxassetid://70466132711334",
            ["skip-forward"] = "rbxassetid://124844823753990",
            ["skull"] = "rbxassetid://137726256442333",
            ["slack"] = "rbxassetid://96089719516736",
            ["slash"] = "rbxassetid://117792185664263",
            ["slice"] = "rbxassetid://95810504278179",
            ["sliders-horizontal"] = "rbxassetid://85538382643347",
            ["sliders-vertical"] = "rbxassetid://101190569086853",
            ["smartphone-charging"] = "rbxassetid://102837532613995",
            ["smartphone-nfc"] = "rbxassetid://82326425754446",
            ["smartphone"] = "rbxassetid://96623008834511",
            ["smile-plus"] = "rbxassetid://131981881472144",
            ["smile"] = "rbxassetid://105880397565283",
            ["snail"] = "rbxassetid://70904536548363",
            ["snowflake"] = "rbxassetid://101235206534566",
            ["soap-dispenser-droplet"] = "rbxassetid://77258480479465",
            ["sofa"] = "rbxassetid://114427687218324",
            ["solar-panel"] = "rbxassetid://132448188047921",
            ["soup"] = "rbxassetid://115092551871618",
            ["space"] = "rbxassetid://87072088914178",
            ["spade"] = "rbxassetid://131444449466462",
            ["sparkle"] = "rbxassetid://111044800239623",
            ["sparkles"] = "rbxassetid://138635884129147",
            ["speaker"] = "rbxassetid://96227183003618",
            ["speech"] = "rbxassetid://87013139446349",
            ["spell-check-2"] = "rbxassetid://81556731785534",
            ["spell-check"] = "rbxassetid://91913483031334",
            ["spline-pointer"] = "rbxassetid://84842840956804",
            ["spline"] = "rbxassetid://129406685807412",
            ["split"] = "rbxassetid://105112438805988",
            ["spool"] = "rbxassetid://124541981347743",
            ["spotlight"] = "rbxassetid://77571742539344",
            ["spray-can"] = "rbxassetid://128372039366326",
            ["sprout"] = "rbxassetid://100091687832508",
            ["square-activity"] = "rbxassetid://89496630185293",
            ["square-arrow-down-left"] = "rbxassetid://108194680296901",
            ["square-arrow-down-right"] = "rbxassetid://99403846801050",
            ["square-arrow-down"] = "rbxassetid://135962519626588",
            ["square-arrow-left"] = "rbxassetid://111671474549238",
            ["square-arrow-out-down-left"] = "rbxassetid://125714881756353",
            ["square-arrow-out-down-right"] = "rbxassetid://89971003001390",
            ["square-arrow-out-up-left"] = "rbxassetid://103759986579087",
            ["square-arrow-out-up-right"] = "rbxassetid://91221896066807",
            ["square-arrow-right"] = "rbxassetid://113920471701361",
            ["square-arrow-up-left"] = "rbxassetid://112424670290693",
            ["square-arrow-up-right"] = "rbxassetid://76602291406940",
            ["square-arrow-up"] = "rbxassetid://106998604646718",
            ["square-asterisk"] = "rbxassetid://89186832353625",
            ["square-bottom-dashed-scissors"] = "rbxassetid://79076980104803",
            ["square-chart-gantt"] = "rbxassetid://104034017316411",
            ["square-check-big"] = "rbxassetid://115320390907184",
            ["square-check"] = "rbxassetid://134682053539509",
            ["square-chevron-down"] = "rbxassetid://91032307924592",
            ["square-chevron-left"] = "rbxassetid://73143404829510",
            ["square-chevron-right"] = "rbxassetid://90612077729930",
            ["square-chevron-up"] = "rbxassetid://85565910197337",
            ["square-code"] = "rbxassetid://81604576616881",
            ["square-dashed-bottom-code"] = "rbxassetid://100354801563230",
            ["square-dashed-bottom"] = "rbxassetid://101102319625624",
            ["square-dashed-kanban"] = "rbxassetid://90388067649847",
            ["square-dashed-mouse-pointer"] = "rbxassetid://121016142178467",
            ["square-dashed-top-solid"] = "rbxassetid://117157577548540",
            ["square-dashed"] = "rbxassetid://136905537847606",
            ["square-divide"] = "rbxassetid://99894657101970",
            ["square-dot"] = "rbxassetid://116613421354866",
            ["square-equal"] = "rbxassetid://110283363706707",
            ["square-function"] = "rbxassetid://86075219551088",
            ["square-kanban"] = "rbxassetid://114537101260131",
            ["square-library"] = "rbxassetid://73810931222081",
            ["square-m"] = "rbxassetid://117662700410577",
            ["square-menu"] = "rbxassetid://104067089444415",
            ["square-minus"] = "rbxassetid://116764432015770",
            ["square-mouse-pointer"] = "rbxassetid://76141850603920",
            ["square-parking-off"] = "rbxassetid://100857293535141",
            ["square-parking"] = "rbxassetid://133116656122387",
            ["square-pause"] = "rbxassetid://86608552787615",
            ["square-pen"] = "rbxassetid://120239476110475",
            ["square-percent"] = "rbxassetid://87111930314567",
            ["square-pi"] = "rbxassetid://75383328781618",
            ["square-pilcrow"] = "rbxassetid://131854284699367",
            ["square-play"] = "rbxassetid://108186325238481",
            ["square-plus"] = "rbxassetid://114713264461873",
            ["square-power"] = "rbxassetid://129240437805187",
            ["square-radical"] = "rbxassetid://132645931868292",
            ["square-round-corner"] = "rbxassetid://104592745113567",
            ["square-scissors"] = "rbxassetid://110601255612411",
            ["square-sigma"] = "rbxassetid://113231244246816",
            ["square-slash"] = "rbxassetid://105477013908757",
            ["square-split-horizontal"] = "rbxassetid://76095370148660",
            ["square-split-vertical"] = "rbxassetid://88589192032058",
            ["square-square"] = "rbxassetid://136555087357875",
            ["square-stack"] = "rbxassetid://100463396619394",
            ["square-star"] = "rbxassetid://94506958703720",
            ["square-stop"] = "rbxassetid://80018708472943",
            ["square-terminal"] = "rbxassetid://83969264476798",
            ["square-user-round"] = "rbxassetid://86484997229302",
            ["square-user"] = "rbxassetid://70771214183445",
            ["square-x"] = "rbxassetid://125136183850190",
            ["square"] = "rbxassetid://86304921356806",
            ["squares-exclude"] = "rbxassetid://102345385822324",
            ["squares-intersect"] = "rbxassetid://120869602570119",
            ["squares-subtract"] = "rbxassetid://131484650948795",
            ["squares-unite"] = "rbxassetid://96673080107843",
            ["squircle-dashed"] = "rbxassetid://129936702532522",
            ["squircle"] = "rbxassetid://82426632573807",
            ["squirrel"] = "rbxassetid://112864252085343",
            ["stamp"] = "rbxassetid://92370779813368",
            ["star-half"] = "rbxassetid://117449275562979",
            ["star-off"] = "rbxassetid://75742832732503",
            ["star"] = "rbxassetid://136141469398409",
            ["step-back"] = "rbxassetid://108672750005121",
            ["step-forward"] = "rbxassetid://126131872136145",
            ["stethoscope"] = "rbxassetid://122331031702148",
            ["sticker"] = "rbxassetid://79938203791608",
            ["sticky-note"] = "rbxassetid://111894074643919",
            ["store"] = "rbxassetid://90338129673705",
            ["stretch-horizontal"] = "rbxassetid://87665042192343",
            ["stretch-vertical"] = "rbxassetid://95265463417122",
            ["strikethrough"] = "rbxassetid://103417324549613",
            ["subscript"] = "rbxassetid://74553514785183",
            ["sun-dim"] = "rbxassetid://129141645592715",
            ["sun-medium"] = "rbxassetid://130278807964710",
            ["sun-moon"] = "rbxassetid://75752898854559",
            ["sun-snow"] = "rbxassetid://112791898014579",
            ["sun"] = "rbxassetid://110150589884127",
            ["sunrise"] = "rbxassetid://134705665494098",
            ["sunset"] = "rbxassetid://75904872203588",
            ["superscript"] = "rbxassetid://96887696590118",
            ["swatch-book"] = "rbxassetid://126786244872453",
            ["swiss-franc"] = "rbxassetid://113497920041625",
            ["switch-camera"] = "rbxassetid://76841154349737",
            ["sword"] = "rbxassetid://124448418211665",
            ["swords"] = "rbxassetid://81872698913435",
            ["syringe"] = "rbxassetid://123891270479254",
            ["table-2"] = "rbxassetid://95751552281545",
            ["table-cells-merge"] = "rbxassetid://95363715175258",
            ["table-cells-split"] = "rbxassetid://114799086088649",
            ["table-columns-split"] = "rbxassetid://111011625447949",
            ["table-of-contents"] = "rbxassetid://135044763275414",
            ["table-properties"] = "rbxassetid://125062886015372",
            ["table-rows-split"] = "rbxassetid://96443733673997",
            ["table"] = "rbxassetid://109109148250737",
            ["tablet-smartphone"] = "rbxassetid://133680859813404",
            ["tablet"] = "rbxassetid://128403991264386",
            ["tablets"] = "rbxassetid://80835787970735",
            ["tag"] = "rbxassetid://129104970103940",
            ["tags"] = "rbxassetid://107179263080798",
            ["tally-1"] = "rbxassetid://115301298241643",
            ["tally-2"] = "rbxassetid://110363186864027",
            ["tally-3"] = "rbxassetid://97655344572540",
            ["tally-4"] = "rbxassetid://102633494371890",
            ["tally-5"] = "rbxassetid://88031817475886",
            ["tangent"] = "rbxassetid://123263132981724",
            ["target"] = "rbxassetid://87563802520297",
            ["telescope"] = "rbxassetid://91755049143647",
            ["tent-tree"] = "rbxassetid://76698322463977",
            ["tent"] = "rbxassetid://109779587826330",
            ["terminal"] = "rbxassetid://106783148545356",
            ["test-tube-diagonal"] = "rbxassetid://75662704378840",
            ["test-tube"] = "rbxassetid://98801015650164",
            ["test-tubes"] = "rbxassetid://92555361447433",
            ["text-align-center"] = "rbxassetid://84051028246390",
            ["text-align-end"] = "rbxassetid://130041738343555",
            ["text-align-justify"] = "rbxassetid://80279880143030",
            ["text-align-start"] = "rbxassetid://134489585487649",
            ["text-cursor-input"] = "rbxassetid://107551944047171",
            ["text-cursor"] = "rbxassetid://115984654447300",
            ["text-initial"] = "rbxassetid://129458097472087",
            ["text-quote"] = "rbxassetid://139278366448736",
            ["text-search"] = "rbxassetid://92345384671606",
            ["text-select"] = "rbxassetid://117087320884956",
            ["text-wrap"] = "rbxassetid://114804318314018",
            ["theater"] = "rbxassetid://108558145549163",
            ["thermometer-snowflake"] = "rbxassetid://121876188028425",
            ["thermometer-sun"] = "rbxassetid://106693240074310",
            ["thermometer"] = "rbxassetid://106546011492311",
            ["thumbs-down"] = "rbxassetid://87794009914015",
            ["thumbs-up"] = "rbxassetid://111137070767020",
            ["ticket-check"] = "rbxassetid://105428777212507",
            ["ticket-minus"] = "rbxassetid://78966299769328",
            ["ticket-percent"] = "rbxassetid://80834774406405",
            ["ticket-plus"] = "rbxassetid://110086734392189",
            ["ticket-slash"] = "rbxassetid://89045681172265",
            ["ticket-x"] = "rbxassetid://88674114109926",
            ["ticket"] = "rbxassetid://126527071492145",
            ["tickets-plane"] = "rbxassetid://100367018248695",
            ["tickets"] = "rbxassetid://135268612687833",
            ["timer-off"] = "rbxassetid://110916370767271",
            ["timer-reset"] = "rbxassetid://110052125369932",
            ["timer"] = "rbxassetid://85473888890506",
            ["toggle-left"] = "rbxassetid://85887872573050",
            ["toggle-right"] = "rbxassetid://90411952142550",
            ["toilet"] = "rbxassetid://80930782432931",
            ["tool-case"] = "rbxassetid://87533537832522",
            ["tornado"] = "rbxassetid://88358291515768",
            ["torus"] = "rbxassetid://70855707283051",
            ["touchpad-off"] = "rbxassetid://78784008075456",
            ["touchpad"] = "rbxassetid://74882354908014",
            ["tower-control"] = "rbxassetid://95937619060532",
            ["toy-brick"] = "rbxassetid://86293483924633",
            ["tractor"] = "rbxassetid://103376704722051",
            ["traffic-cone"] = "rbxassetid://74110220470369",
            ["train-front-tunnel"] = "rbxassetid://105194827005114",
            ["train-front"] = "rbxassetid://125237934215370",
            ["train-track"] = "rbxassetid://77451032453723",
            ["tram-front"] = "rbxassetid://93315182364998",
            ["transgender"] = "rbxassetid://135530817673639",
            ["trash-2"] = "rbxassetid://109843431391323",
            ["trash"] = "rbxassetid://106723740584310",
            ["tree-deciduous"] = "rbxassetid://123124389219004",
            ["tree-palm"] = "rbxassetid://103846705893963",
            ["tree-pine"] = "rbxassetid://124662547202594",
            ["trees"] = "rbxassetid://121203841375919",
            ["trello"] = "rbxassetid://130987241149527",
            ["trending-down"] = "rbxassetid://139309232226438",
            ["trending-up-down"] = "rbxassetid://85083293981691",
            ["trending-up"] = "rbxassetid://81819858538839",
            ["triangle-alert"] = "rbxassetid://125920361880643",
            ["triangle-dashed"] = "rbxassetid://124324079103935",
            ["triangle-right"] = "rbxassetid://116930791412791",
            ["triangle"] = "rbxassetid://126330486745540",
            ["trophy"] = "rbxassetid://131545003268773",
            ["truck-electric"] = "rbxassetid://111873446387359",
            ["truck"] = "rbxassetid://86662707764771",
            ["turkish-lira"] = "rbxassetid://114589876174070",
            ["turntable"] = "rbxassetid://129870346487856",
            ["turtle"] = "rbxassetid://118295081560334",
            ["tv-minimal-play"] = "rbxassetid://99201833426972",
            ["tv-minimal"] = "rbxassetid://100382201729427",
            ["tv"] = "rbxassetid://135687724791776",
            ["twitch"] = "rbxassetid://71383308134888",
            ["twitter"] = "rbxassetid://88791703276842",
            ["type-outline"] = "rbxassetid://80108627791690",
            ["type"] = "rbxassetid://133543553793564",
            ["umbrella-off"] = "rbxassetid://72395143739955",
            ["umbrella"] = "rbxassetid://127502210274589",
            ["underline"] = "rbxassetid://123709229216544",
            ["undo-2"] = "rbxassetid://113885292059932",
            ["undo-dot"] = "rbxassetid://132055277744844",
            ["undo"] = "rbxassetid://111258459077271",
            ["unfold-horizontal"] = "rbxassetid://117128358526398",
            ["unfold-vertical"] = "rbxassetid://116593025265499",
            ["ungroup"] = "rbxassetid://106674800451003",
            ["university"] = "rbxassetid://84652528263642",
            ["unlink-2"] = "rbxassetid://128131898892572",
            ["unlink"] = "rbxassetid://139835795227752",
            ["unplug"] = "rbxassetid://90171381619874",
            ["upload"] = "rbxassetid://138212042425501",
            ["usb"] = "rbxassetid://117230058949613",
            ["user-check"] = "rbxassetid://81775205032725",
            ["user-cog"] = "rbxassetid://92795491530865",
            ["user-lock"] = "rbxassetid://78892639693821",
            ["user-minus"] = "rbxassetid://126976941957511",
            ["user-pen"] = "rbxassetid://87445472574836",
            ["user-plus"] = "rbxassetid://118514469915884",
            ["user-round-check"] = "rbxassetid://118794737621941",
            ["user-round-cog"] = "rbxassetid://78239503290053",
            ["user-round-minus"] = "rbxassetid://98944176636447",
            ["user-round-pen"] = "rbxassetid://108155244324878",
            ["user-round-plus"] = "rbxassetid://113301899567470",
            ["user-round-search"] = "rbxassetid://71565774381870",
            ["user-round-x"] = "rbxassetid://122367980560930",
            ["user-round"] = "rbxassetid://136485052187963",
            ["user-search"] = "rbxassetid://101335649828115",
            ["user-star"] = "rbxassetid://98777846316000",
            ["user-x"] = "rbxassetid://139748155894754",
            ["user"] = "rbxassetid://81589895647169",
            ["users-round"] = "rbxassetid://103005444008339",
            ["users"] = "rbxassetid://115398113982385",
            ["utensils-crossed"] = "rbxassetid://109520762270383",
            ["utensils"] = "rbxassetid://139952569804235",
            ["utility-pole"] = "rbxassetid://101965541238242",
            ["variable"] = "rbxassetid://104743088438151",
            ["vault"] = "rbxassetid://108049164599845",
            ["vector-square"] = "rbxassetid://86713728565344",
            ["vegan"] = "rbxassetid://119489190688082",
            ["venetian-mask"] = "rbxassetid://102636443033920",
            ["venus-and-mars"] = "rbxassetid://120227752103771",
            ["venus"] = "rbxassetid://82891342220859",
            ["vibrate-off"] = "rbxassetid://113446447326246",
            ["vibrate"] = "rbxassetid://108330910738733",
            ["video-off"] = "rbxassetid://132239189859305",
            ["video"] = "rbxassetid://107587444636945",
            ["videotape"] = "rbxassetid://114816894323398",
            ["view"] = "rbxassetid://118717253976805",
            ["voicemail"] = "rbxassetid://134313454010227",
            ["volleyball"] = "rbxassetid://83889351124153",
            ["volume-1"] = "rbxassetid://98514588731639",
            ["volume-2"] = "rbxassetid://89344380902620",
            ["volume-off"] = "rbxassetid://103047478058767",
            ["volume-x"] = "rbxassetid://139252359189540",
            ["volume"] = "rbxassetid://103236289817396",
            ["vote"] = "rbxassetid://89409762851246",
            ["wallet-cards"] = "rbxassetid://129728715308337",
            ["wallet-minimal"] = "rbxassetid://137800448816116",
            ["wallet"] = "rbxassetid://132331555762628",
            ["wallpaper"] = "rbxassetid://74682121235494",
            ["wand-sparkles"] = "rbxassetid://82546429942392",
            ["wand"] = "rbxassetid://114580617777835",
            ["warehouse"] = "rbxassetid://78388887451080",
            ["washing-machine"] = "rbxassetid://104194127573858",
            ["watch"] = "rbxassetid://130544621618405",
            ["waves-ladder"] = "rbxassetid://101808619355514",
            ["waves"] = "rbxassetid://96340135183647",
            ["waypoints"] = "rbxassetid://102450133666017",
            ["webcam"] = "rbxassetid://104148487911129",
            ["webhook-off"] = "rbxassetid://96370548093471",
            ["webhook"] = "rbxassetid://112812457747322",
            ["weight"] = "rbxassetid://103860559844854",
            ["wheat-off"] = "rbxassetid://133294844612307",
            ["wheat"] = "rbxassetid://85261952080359",
            ["whole-word"] = "rbxassetid://90111083954485",
            ["wifi-cog"] = "rbxassetid://110500263326209",
            ["wifi-high"] = "rbxassetid://81954601342139",
            ["wifi-low"] = "rbxassetid://138217335635913",
            ["wifi-off"] = "rbxassetid://74113634330106",
            ["wifi-pen"] = "rbxassetid://91290205064712",
            ["wifi-sync"] = "rbxassetid://84043971055177",
            ["wifi-zero"] = "rbxassetid://124286465246123",
            ["wifi"] = "rbxassetid://104669375183960",
            ["wind-arrow-down"] = "rbxassetid://127753987414870",
            ["wind"] = "rbxassetid://114551690399915",
            ["wine-off"] = "rbxassetid://108294164302317",
            ["wine"] = "rbxassetid://115743721332829",
            ["workflow"] = "rbxassetid://99186544029189",
            ["worm"] = "rbxassetid://115752311548091",
            ["wrench"] = "rbxassetid://112148279212860",
            ["x"] = "rbxassetid://110786993356448",
            ["youtube"] = "rbxassetid://123663668456341",
            ["zap-off"] = "rbxassetid://81385483183652",
            ["zap"] = "rbxassetid://130551565616516",
            ["zoom-in"] = "rbxassetid://127956924984803",
            ["zoom-out"] = "rbxassetid://108334162607319",
            ["balloon"] = "rbxassetid://97489111621526",
            ["beef-off"] = "rbxassetid://99869959725200",
            ["book-search"] = "rbxassetid://132585409504950",
            ["calendars"] = "rbxassetid://130944763042289",
            ["cannabis-off"] = "rbxassetid://101938500363812",
            ["cctv-off"] = "rbxassetid://75925370187295",
            ["cigarette"] = "rbxassetid://137149549886852",
            ["circle-pile"] = "rbxassetid://116353155251541",
            ["cloud-backup"] = "rbxassetid://111649579696132",
            ["cloud-sync"] = "rbxassetid://79393911188593",
            ["database-search"] = "rbxassetid://92017137080138",
            ["ellipse"] = "rbxassetid://71559658267482",
            ["fingerprint-pattern"] = "rbxassetid://80934710831288",
            ["fishing-hook"] = "rbxassetid://121038780855899",
            ["fishing-rod"] = "rbxassetid://71754848048049",
            ["form"] = "rbxassetid://72999643971000",
            ["git-merge-conflict"] = "rbxassetid://85677801675703",
            ["globe-off"] = "rbxassetid://77775243585824",
            ["globe-x"] = "rbxassetid://109268097029296",
            ["hd"] = "rbxassetid://71682790698278",
            ["image"] = "rbxassetid://112751259236831",
            ["layers-plus"] = "rbxassetid://77587765623057",
            ["lens-concave"] = "rbxassetid://94819631937027",
            ["lens-convex"] = "rbxassetid://74736504195474",
            ["line-dot-right-horizontal"] = "rbxassetid://104718593155221",
            ["line-style"] = "rbxassetid://90176717785772",
            ["map-pin-search"] = "rbxassetid://89065012915078",
            ["message-circle-check"] = "rbxassetid://132772297689418",
            ["message-square-check"] = "rbxassetid://125789987055668",
            ["metronome"] = "rbxassetid://101991829345965",
            ["mirror-rectangular"] = "rbxassetid://109046769760336",
            ["mirror-round"] = "rbxassetid://121534049429097",
            ["mouse-left"] = "rbxassetid://99144293708743",
            ["mouse-right"] = "rbxassetid://88331710212594",
            ["printer-x"] = "rbxassetid://103002721801548",
            ["radio-off"] = "rbxassetid://80359258046586",
            ["road"] = "rbxassetid://120251329173530",
            ["scooter"] = "rbxassetid://100035452787934",
            ["search-alert"] = "rbxassetid://127597984617505",
            ["shelving-unit"] = "rbxassetid://80116568514793",
            ["shield-cog-corner"] = "rbxassetid://111694066132698",
            ["shield-cog"] = "rbxassetid://129235695057857",
            ["sport-shoe"] = "rbxassetid://120495992692630",
            ["square-arrow-right-enter"] = "rbxassetid://138867831495334",
            ["square-arrow-right-exit"] = "rbxassetid://133688575845430",
            ["square-centerline-dashed-horizontal"] = "rbxassetid://77780104374341",
            ["square-centerline-dashed-vertical"] = "rbxassetid://107878435803525",
            ["stone"] = "rbxassetid://135161057497830",
            ["toolbox"] = "rbxassetid://85341033903792",
            ["towel-rack"] = "rbxassetid://125223915620991",
            ["user-key"] = "rbxassetid://105403041782190",
            ["user-round-key"] = "rbxassetid://124547549008939",
            ["van"] = "rbxassetid://122066377022942",
            ["waves-arrow-down"] = "rbxassetid://129215220911792",
            ["waves-arrow-up"] = "rbxassetid://102314705716217",
            ["weight-tilde"] = "rbxassetid://112081212176951",
            ["x-line-top"] = "rbxassetid://140592656289509",
            ["zodiac-aquarius"] = "rbxassetid://74560047770362",
            ["zodiac-aries"] = "rbxassetid://73255859670234",
            ["zodiac-cancer"] = "rbxassetid://131985162532947",
            ["zodiac-capricorn"] = "rbxassetid://97859568140652",
            ["zodiac-gemini"] = "rbxassetid://80997588122992",
            ["zodiac-leo"] = "rbxassetid://75509406718106",
            ["zodiac-libra"] = "rbxassetid://113222735060218",
            ["zodiac-ophiuchus"] = "rbxassetid://129180108892480",
            ["zodiac-pisces"] = "rbxassetid://95845819440327",
            ["zodiac-sagittarius"] = "rbxassetid://82651026742181",
            ["zodiac-scorpio"] = "rbxassetid://113640924054631",
            ["zodiac-taurus"] = "rbxassetid://123053219704400",
            ["zodiac-virgo"] = "rbxassetid://99462994613661",
        }
    end)()

    if type(af.SelectedTheme) == "string" and self:IsValidTheme(af.SelectedTheme) then
        self:SetTheme(af.SelectedTheme)
    else
        self:SetTheme(self.Default.Theme)
    end

    self.LOADED_UI_LIBRARY = true

    local ah = self.Default.UISize

    if af and type(af.UISize) == "table" then
        local ak, al = unpack(af.UISize)

        if type(ak) == "number" and type(al) == "number" then
            local am = I.AbsoluteSize
            ak = math.clamp(ak, 430, 1000)
            al = math.clamp(al, 200, 500)
            ah = UDim2.fromOffset(ak, al)
        end
    end

    local ak = E("Frame", "Window", I, {
        Position = UDim2.new(0.5, - ah.X.Offset / 2, 0.5, - ah.Y.Offset / 2),
        Active = true,
        Size = ah,
        ThemeTag = {
            BackgroundTransparency = "BackgroundTransparency"
        },
        Elements = {
            Corner = UDim.new(0, 20),
            Stroke = {
                Thickness = 1.25,
                ThemeTag = {
                    Color = "Colors.Border.Default"
                }
            },
            Gradient = {
                Rotation = 45,
                ThemeTag = {
                    Color = "Colors.Background"
                }
            }
        }
    })

    u(ak.Destroying, function()
        self:Destroy()
    end)

    u(I:GetAttributeChangedSignal "UID", function()
        self:Destroy()
        ak:Destroy()
    end)

    D.Draggable(ak, ad, 0.5)

    local al = E("Folder", "Components", ak)
    local am = E("Folder", "Dropdowns", I)

    local an = E("Frame", "TopBar", al, {
        Size = UDim2.new(1, 0, 0, 42),
        BackgroundTransparency = 1
    })

    local titleRow = E("Frame", "TitleRow", an, {
        Position = UDim2.new(0, 16, 0, 3),
        Size = UDim2.new(1, - 112, 0, 22),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        ZIndex = 5,
        Elements = {
            ListLayout = {
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Left,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Padding = UDim.new(0, 7),
                SortOrder = Enum.SortOrder.LayoutOrder
            }
        }
    })

    local ao = E("TextLabel", "Title", titleRow, {
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        AutomaticSize = Enum.AutomaticSize.X,
        Size = UDim2.new(0, 0, 0, 22),
        Text = ae.Title,
        TextSize = 14,
        BackgroundTransparency = 1,
        ZIndex = 6,
        LayoutOrder = 1,
        ThemeTag = {
            TextColor3 = "Colors.Text.Default",
            Font = "Font.Bold"
        }
    })

    local subtitleLabel = E("TextLabel", "SubTitle", an, {
        Position = UDim2.new(0, 16, 0, 26),
        Size = UDim2.new(1, - 112, 0, 10),
        BackgroundTransparency = 1,
        Text = ae.SubTitle,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = 8,
        TextTruncate = Enum.TextTruncate.AtEnd,
        ZIndex = 5,
        ThemeTag = {
            TextColor3 = "Colors.Text.Dark",
            Font = "Font.Normal"
        }
    })

    local ap = E("Folder", "Buttons", an, {
        Childs = {
            E("ImageButton", "Close", {
                Size = UDim2.fromOffset(22, 22),
                Position = UDim2.new(1, - 12, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 0.12,
                AutoButtonColor = false,
                Image = "rbxassetid://10747384394",
                ImageColor3 = Color3.fromRGB(255, 218, 235),
                Elements = {
                    Corner = UDim.new(0.5, 0),
                    Stroke = {Thickness = 1, ThemeTag = {Color = "Colors.Border.Default"}}
                },
                ThemeTag = {BackgroundColor3 = "Colors.Buttons.Default"}
            }),
            E("ImageButton", "Minimize", {
                Size = UDim2.fromOffset(22, 22),
                Position = UDim2.new(1, - 42, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 0.12,
                AutoButtonColor = false,
                Image = "rbxassetid://10734896206",
                ImageColor3 = Color3.fromRGB(255, 218, 235),
                Elements = {
                    Corner = UDim.new(0.5, 0),
                    Stroke = {Thickness = 1, ThemeTag = {Color = "Colors.Border.Default"}}
                },
                ThemeTag = {BackgroundColor3 = "Colors.Buttons.Default"}
            })
        }
    })

    local aq = ap.Minimize
    local ar = ap.Close

    local as = setmetatable(ae, {
        __index = R.Window
    })

    local at, au = aa(af, an)

    at.Parent = al
    au.Parent = al

    local av = table.freeze{
        ContainerHolder = au,
        TabsContainer = at,
        Components = al,
        MainFrame = ak
    }

    function as:GetElements()
        return av
    end

    local aw = E("Frame", "ControlWindowSize", ak, {
        Size = UDim2.new(0, 35, 0, 35),
        Position = ak.Size,
        AnchorPoint = Vector2.new(0.8, 0.8),
        BackgroundTransparency = 1,
        Active = true,
        Elements = {
            Corner = UDim.new(0, 12)
        },
        ThemeTag = {
            BackgroundColor3 = "Colors.OnPrimary"
        }
    })

    local ax = E("Frame", "ControlTabsSize", ak, {
        Size = UDim2.new(0, 16, 0.75, - 30),
        Position = UDim2.new(0, at.Size.X.Offset, 0.5, 15),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Active = true,
        Elements = {
            Corner = UDim.new(0, 12)
        },
        ThemeTag = {
            BackgroundColor3 = "Colors.OnPrimary"
        }
    })
    local ay = function(ay)
        local az = ay:GetAttribute "Resizing"
        ay:SetAttribute("Resizing", tick())

        if az and (tick() - az) <= 0.1 then
            return nil
        end

        J(ay, "BackgroundTransparency", 0.5, 0.3):Play()
        while tick() - ay:GetAttribute "Resizing" <= 0.1 do
            task.wait()
        end
        J(ay, "BackgroundTransparency", 1, 0.4):Play()
    end

    u(aw:GetPropertyChangedSignal "Position", function()
        ay(aw)
        local az = aw.Position
        ak.Size = az
        af.UISize = {az.X.Offset, az.Y.Offset}
    end)

    u(ax:GetPropertyChangedSignal "Position", function()
        ay(ax)
        local az = ax.Position
        at.Size = UDim2.new(0, az.X.Offset, 1, - an.Size.Y.Offset)
        au.Size = UDim2.new(1, - at.Size.X.Offset, 1, - an.Size.Y.Offset)
        af.TabSize = az.X.Offset
    end)

    D.Draggable(aw, ad, 0.68, function(az, aA, aB, aC)
        return UDim2.fromOffset(math.clamp(aA, 430, 1000), math.clamp(aC, 200, 500))
    end)

    D.Draggable(ax, ad, 0.68, function(aA, aB)
        return UDim2.new(0, math.clamp(aB, 135, 210), 0.5, 15)
    end)

    local aA = {
        Title = "Close Window?",
        Content = "You Want Close UI?",
        Options = {
            {
                Title = "Yes",
                Icon = "check",
                Primary = true,
                Callback = function()
                    task.delay(0.28, function()
                        if self and self.Destroy then
                            self:Destroy()
                        end
                    end)
                end
            },
            {
                Title = "No",
                Icon = "x"
            }
        }
    }

    u(aq.MouseEnter, function() aq.BackgroundTransparency = 0.65
    end)
    u(aq.MouseLeave, function() aq.BackgroundTransparency = 1.00
    end)

    u(ar.MouseEnter, function() ar.BackgroundTransparency = 0.65
    end)
    u(ar.MouseLeave, function() ar.BackgroundTransparency = 1.00
    end)

    as.SetUIScale = self.SetUIScale
    as.SUBTITLE_LABEL = subtitleLabel
    as.TITLE_LABEL = ao

    local aB = as:StartWindow{
        Resizers = {aw, ax},
        MinimizeButton = aq,
        Dropdowns = am,
        MainFrame = ak,
        TopBar = an,

        SubTitle = subtitleLabel,
        Title = ao,
        TitleRow = titleRow,

        UIScale = ad,
        Flags = ag
    }

    u(aq.Activated, function()
        as:MinimizeButton()
    end)

    u(ar.Activated, function()
        as:Dialog(aA)
    end)

    return as
end

return s
