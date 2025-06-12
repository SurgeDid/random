local RunService = game:GetService("RunService")
local instCheck = {}

    local libary = {}

    local player = game.Players.LocalPlayer
    local localPlayer = game.Players.LocalPlayer
    local TweenService = game:GetService("TweenService")
    local mouse = localPlayer:GetMouse()

    function Tween(obj, speed, array, additional)
        local add = additional or {Enum.EasingStyle.Linear, Enum.EasingDirection.Out}
        local tween = TweenService:Create(obj, TweenInfo.new(speed, table.unpack(add)), array)
        tween:Play()
        
        tween.Completed:Wait()
    end

    function libary.createLib()

    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Sidebar = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Ver = Instance.new("TextLabel")
    local UIGradient = Instance.new("UIGradient")
    local Underline = Instance.new("Frame")
    local UIGradient_2 = Instance.new("UIGradient")
    local UICorner = Instance.new("UICorner")
    local ButtonHolder = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local UICorner_2 = Instance.new("UICorner")
    local UiCornerCover = Instance.new("Frame")
    local ParentFrames = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")

    local openclose = Instance.new("TextButton")
local UICorner55 = Instance.new("UICorner")


openclose.Parent = ScreenGui
openclose.AnchorPoint = Vector2.new(0.5, 0.5)
openclose.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
openclose.BorderColor3 = Color3.fromRGB(0, 0, 0)
openclose.BorderSizePixel = 0
openclose.Position = UDim2.new(0.5, 0, 0.1, 0)
openclose.Size = UDim2.new(0, 45, 0, 45)
openclose.Font = Enum.Font.SourceSansBold
openclose.Text = "A"
openclose.TextColor3 = Color3.fromRGB(15, 111, 255)
openclose.TextSize = 25

UICorner55.CornerRadius = UDim.new(1, 0)
UICorner55.Parent = openclose

openclose.MouseButton1Click:Connect(function()
     if not MainFrame.Visible then
        MainFrame.Visible = true
     else
        MainFrame.Visible = false
     end
end)




    local UIS = game:GetService('UserInputService')
    local frame = MainFrame
    local dragToggle = nil
    local dragSpeed = 0.25
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
    end)



    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.338842988, 0, 0.336977124, 0)
    MainFrame.Size = UDim2.new(0, 674, 0, 427)

    Sidebar.Name = "Sidebar"
    Sidebar.Parent = MainFrame
    Sidebar.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    Sidebar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Sidebar.BorderSizePixel = 0
    Sidebar.Size = UDim2.new(0, 167, 0, 427)
    Sidebar.ZIndex = 5

    Title.Name = "Title"
    Title.Parent = Sidebar
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.0718562901, 0, 0.0602678582, 0)
    Title.Size = UDim2.new(0, 142, 0, 24)
    Title.ZIndex = 6
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Azurix"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 25.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Ver.Name = "Ver"
    Ver.Parent = Sidebar
    Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ver.BackgroundTransparency = 1.000
    Ver.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Ver.BorderSizePixel = 0
    Ver.Position = UDim2.new(0.0898203626, 0, 0.113839284, 0)
    Ver.Size = UDim2.new(0, 136, 0, 16)
    Ver.ZIndex = 6
    Ver.Font = Enum.Font.GothamBold
    Ver.Text = "Bloxburg"
    Ver.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ver.TextScaled = true
    Ver.TextSize = 25.000
    Ver.TextWrapped = true
    Ver.TextXAlignment = Enum.TextXAlignment.Left

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
    UIGradient.Parent = Ver

    Underline.Name = "Underline"
    Underline.Parent = Sidebar
    Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Underline.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Underline.BorderSizePixel = 0
    Underline.Position = UDim2.new(0.0658682659, 0, 0.167410716, 0)
    Underline.Size = UDim2.new(0, 145, 0, 2)
    Underline.ZIndex = 6

    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
    UIGradient_2.Parent = Underline

    UICorner.Parent = Sidebar

    ButtonHolder.Name = "ButtonHolder"
    ButtonHolder.Parent = Sidebar
    ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonHolder.BackgroundTransparency = 1.000
    ButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonHolder.BorderSizePixel = 0
    ButtonHolder.Position = UDim2.new(0.0658682659, 0, 0.203747079, 0)
    ButtonHolder.Size = UDim2.new(0, 145, 0, 325)
    ButtonHolder.ZIndex = 8
    --notdone
    UIListLayout.Parent = ButtonHolder
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    UICorner_2.Parent = MainFrame

    UiCornerCover.Name = "UiCornerCover"
    UiCornerCover.Parent = MainFrame
    UiCornerCover.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    UiCornerCover.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UiCornerCover.BorderSizePixel = 0
    UiCornerCover.Position = UDim2.new(0.236694157, 0, 0, 0)
    UiCornerCover.Size = UDim2.new(0, 7, 0, 427)

    ParentFrames.Name = "ParentFrames"
    ParentFrames.Parent = MainFrame
    ParentFrames.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    ParentFrames.BackgroundTransparency = 1.000
    ParentFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ParentFrames.BorderSizePixel = 0
    ParentFrames.Position = UDim2.new(0.270029664, 0, 0.0351288058, 0)
    ParentFrames.Size = UDim2.new(0, 478, 0, 403)
    ParentFrames.ZIndex = 10

    UICorner_3.Parent = ParentFrames

    local lib = {}


    function lib:CreateNotification(title, text1, text2, duration, callback)
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Confirm = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")


Frame.Parent = MainFrame
Frame.ZIndex = 70
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.418397635, 0, 0.807962537, 0)
Frame.Size = UDim2.new(0, 374, 0, 69)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0410464704, 0, 0.0369004086, 0)
TextLabel.Size = UDim2.new(0, 233, 0, 28)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = tostring(title)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0410464704, 0, 0.600889325, 0)
TextLabel_2.Size = UDim2.new(0, 194, 0, 16)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = tostring(text1)
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 18.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0410464704, 0, 0.383498043, 0)
TextLabel_3.Size = UDim2.new(0, 194, 0, 16)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = tostring(text2)
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 18.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
--TextLabel_3.TextScaled = true

Confirm.Parent = Frame
Confirm.BackgroundTransparency = 1.000
Confirm.BorderSizePixel = 0
Confirm.Position = UDim2.new(0.911764681, 0, 0.521739125, 0)
Confirm.Size = UDim2.new(0, 25, 0, 25)
Confirm.Image = "rbxassetid://6031068421"
Confirm.ImageColor3 = Color3.fromRGB(157, 157, 157)

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.820855618, 0, 0.521739125, 0)
ImageLabel_2.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_2.Image = "rbxassetid://13352085735"
ImageLabel_2.ImageColor3 = Color3.fromRGB(157, 157, 157)


local function fadeOutAndDestroy()
    Tween(Frame, 0.4, {BackgroundTransparency = 1})
    Tween(TextLabel, 0.4, {TextTransparency = 1})
    Tween(TextLabel_2, 0.4, {TextTransparency = 1})
    Tween(TextLabel_3, 0.4, {TextTransparency = 1})
    Tween(Confirm, 0.4, {ImageTransparency = 1})
    Tween(ImageLabel_2, 0.4, {ImageTransparency = 1})
    task.wait(0.4)
    Frame:Destroy()
end

Frame.BackgroundTransparency = 1
TextLabel.TextTransparency = 1
TextLabel_2.TextTransparency = 1
TextLabel_3.TextTransparency = 1
Confirm.ImageTransparency = 1
ImageLabel_2.ImageTransparency = 1

Tween(Frame, 0.4, {BackgroundTransparency = 0})
Tween(TextLabel, 0.4, {TextTransparency = 0})
Tween(TextLabel_2, 0.4, {TextTransparency = 0})
Tween(TextLabel_3, 0.4, {TextTransparency = 0})
Tween(Confirm, 0.4, {ImageTransparency = 0})
Tween(ImageLabel_2, 0.4, {ImageTransparency = 0})



Confirm.MouseButton1Click:connect(function()
 callback(true)
 fadeOutAndDestroy()
end)

ImageLabel_2.MouseButton1Click:connect(function()
  callback(false)
  fadeOutAndDestroy()
end)

task.wait(duration)
fadeOutAndDestroy()
    end

     function lib:CreateNotification2(title, text1, duration)
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Confirm = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")


Frame.Parent = MainFrame
Frame.ZIndex = 70
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.418397635, 0, 0.807962537, 0)
Frame.Size = UDim2.new(0, 374, 0, 69)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0410464704, 0, 0.0369004086, 0)
TextLabel.Size = UDim2.new(0, 233, 0, 28)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = tostring(title)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0410464704, 0, 0.383498043, 0)
TextLabel_2.Size = UDim2.new(0, 194, 0, 16)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = tostring(text1)
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 18.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
--TextLabel_2.TextScaled = true

local function fadeOutAndDestroy()
    Tween(Frame, 0.4, {BackgroundTransparency = 1})
    Tween(TextLabel, 0.4, {TextTransparency = 1})
    Tween(TextLabel_2, 0.4, {TextTransparency = 1})
    Tween(TextLabel_3, 0.4, {TextTransparency = 1})
    Tween(Confirm, 0.4, {ImageTransparency = 1})
    Tween(ImageLabel_2, 0.4, {ImageTransparency = 1})
    task.wait(0.4)
    Frame:Destroy()
end

Frame.BackgroundTransparency = 1
TextLabel.TextTransparency = 1
TextLabel_2.TextTransparency = 1
TextLabel_3.TextTransparency = 1
Confirm.ImageTransparency = 1
ImageLabel_2.ImageTransparency = 1

Tween(Frame, 0.4, {BackgroundTransparency = 0})
Tween(TextLabel, 0.4, {TextTransparency = 0})
Tween(TextLabel_2, 0.4, {TextTransparency = 0})
Tween(TextLabel_3, 0.4, {TextTransparency = 0})
Tween(Confirm, 0.4, {ImageTransparency = 0})
Tween(ImageLabel_2, 0.4, {ImageTransparency = 0})


task.wait(duration)
fadeOutAndDestroy()
    end

    function lib:LoadPage(index)
        
        for i, v in next, ParentFrames:GetChildren() do
            local number = index
            number = number + 1
            if i == number then
                v.Visible = true
            end
        end
        local tabindex = 0
        for i, v in next, ButtonHolder:GetChildren() do
    if i == index + 1 then
        task.spawn(function()
            if v:IsA("Frame") then
                v.BackgroundColor3 = Color3.fromRGB(40, 122, 122)

                local toggle = v:FindFirstChild("Toggle")
                if toggle and toggle:IsA("Frame") then
                    toggle.BackgroundTransparency = 0
                end
            end
        end)
    end
end

    end

    function lib:CreateTab(text, imageID)

     

local Button = Instance.new("Frame")
local Toggle = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Image = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Click = Instance.new("TextButton")


Button.Name = "Button"
Button.Parent = ButtonHolder
Button.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 167, 0, 43)

Toggle.Name = "Toggle"
Toggle.Parent = Button
Toggle.BackgroundColor3 = Color3.fromRGB(84, 254, 255)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.BackgroundTransparency = 1.000
Toggle.Size = UDim2.new(0, 2, 0, 43)

UIListLayout.Parent = Toggle
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Image.Name = "Image"
Image.Parent = Button
Image.BackgroundTransparency = 1.000
Image.BorderSizePixel = 0
Image.Position = UDim2.new(0.0718562901, 0, 0.186046511, 0)
Image.Size = UDim2.new(0, 25, 0, 25)
Image.Image = "http://www.roblox.com/asset/?id=".. imageID ..""

Title.Name = "Title"
Title.Parent = Button
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.257485032, 0, 0.209302321, 0)
Title.Size = UDim2.new(0, 110, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = tostring(text)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.5
Title.TextXAlignment = Enum.TextXAlignment.Left

Click.Name = "Click"
Click.Parent = Button
Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Click.BackgroundTransparency = 1.000
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.BorderSizePixel = 0
Click.Size = UDim2.new(0, 167, 0, 43)
Click.Font = Enum.Font.SourceSans
Click.Text = ""
Click.TextColor3 = Color3.fromRGB(0, 0, 0)
Click.TextSize = 14.000


    local TabFrame = Instance.new("ScrollingFrame")

    TabFrame.Parent = ParentFrames
    TabFrame.Active = true
    TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabFrame.BackgroundTransparency = 1.000
    TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabFrame.BorderSizePixel = 0
    TabFrame.Position = UDim2.new(-0.00800000038, 0, -0.00499999989, 0)
    TabFrame.Size = UDim2.new(0, 484, 0, 396)
    TabFrame.ScrollBarThickness = 3
    TabFrame.Visible = false  

        

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = TabFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.Padding = UDim.new(0, 5)

        local function updateCanvasSize()
            TabFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
        end
        
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
        
    
    updateCanvasSize()


    
        Click.MouseButton1Click:Connect(function()
        for _, btn in ipairs(ButtonHolder:GetChildren()) do
             if btn:IsA("Frame") then
                   btn.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
               end
           end

           for _, btn in ipairs(ButtonHolder:GetChildren()) do
    if btn:IsA("Frame") then
        local toggle = btn:FindFirstChild("Toggle")
        if toggle and toggle:IsA("Frame") then
            toggle.BackgroundTransparency = 1
        end
    end
end



            for _, child in ipairs(ParentFrames:GetChildren()) do
                if child:IsA("ScrollingFrame") then
                    child.Visible = false
                end
            end


       -- Click.Parent.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
        TabFrame.Visible = true
        Click.Parent.Toggle.BackgroundTransparency = 0
        Tween(Click.Parent, 0.4, {BackgroundColor3 = Color3.fromRGB(40, 122, 122)})
        end)

        local sections = {}

        function sections:CreateSection(TitleText)


    local Section = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local CompHolfder = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")


    Section.Name = "Section"
    Section.Parent = TabFrame
    Section.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Section.BorderSizePixel = 0
    Section.Position = UDim2.new(0, 5, 2.31193781e-07, 0)
    Section.Size = UDim2.new(0, 484, 0, 58)

    UICorner.Parent = Section

    TextLabel.Parent = Section
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.293388426, 0, -0.00999999978, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = TitleText
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 25.000

    CompHolfder.Name = "CompHolfder"
    CompHolfder.Parent = Section
    CompHolfder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CompHolfder.BackgroundTransparency = 1.000
    CompHolfder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CompHolfder.BorderSizePixel = 0

    CompHolfder.Position = UDim2.new(0, 5.5, 0, 45) 


    CompHolfder.Size = UDim2.new(0, 474, 0, 43)
    CompHolfder.Visible = true

    UIListLayout.Parent = CompHolfder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)


    local function updateCanvasSize()
        -- Adjust the size of the Section frame to fit the contents of CompHolder
        Section.Size = UDim2.new(0, 484, 0, TextLabel.AbsoluteSize.Y + CompHolfder.UIListLayout.AbsoluteContentSize.Y + 10) -- 10 for padding
        CompHolfder.Size = UDim2.new(0, 474, 0, CompHolfder.UIListLayout.AbsoluteContentSize.Y)
    end





    local components = {}

    function components:CreateLabel(Text, SecondText, Color)

    local Frame = Instance.new("Frame")
    local FirstText = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local SecText = Instance.new("TextLabel")


    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 0, -0.00999999978, 0)
    Frame.AnchorPoint = Vector2.new(0.5, 0) -- Anchor point set to the center
    Frame.Size = UDim2.new(0, 464, 0, 40)

    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = Frame
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    FirstText.Name = "FirstText"
    FirstText.Parent = Frame
    FirstText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FirstText.BackgroundTransparency = 1.000
    FirstText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FirstText.BorderSizePixel = 0
    FirstText.Position = UDim2.new(0.019396551, 0, 0.262121588, 0)
    FirstText.Size = UDim2.new(0, 213, 0, 19)
    FirstText.Font = Enum.Font.SourceSansBold
    FirstText.Text = Text
    FirstText.TextColor3 = Color3.fromRGB(255, 255, 255)
    FirstText.TextScaled = true
    FirstText.TextSize = 20.000
    FirstText.TextWrapped = true
    FirstText.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.Parent = Frame

    SecText.Name = "SecText"
    SecText.Parent = Frame
    SecText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SecText.BackgroundTransparency = 1.000
    SecText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SecText.BorderSizePixel = 0
    SecText.Position = UDim2.new(0.519396544, 0, 0.262121588, 0)
    SecText.Size = UDim2.new(0, 213, 0, 19)
    SecText.Font = Enum.Font.SourceSansBold
    SecText.Text = tostring(SecondText)
    SecText.TextColor3 = Color
    SecText.TextScaled = true
    SecText.TextSize = 20.000
    SecText.TextWrapped = true
    SecText.TextXAlignment = Enum.TextXAlignment.Right
    updateCanvasSize()
    local config = {}

    function config:Text1(newt)
        TextLabel.Text = newt
    end
    function config:Text2(newd)
        SecText.Text = newd
    end

    return config
    end

    function components:CreateToggle(togname, toggled, callback)

    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")

    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.00843881816, 0, 0.804511249, 0)
    Frame.Size = UDim2.new(0, 464, 0, 40)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.019396551, 0, 0.262121588, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 19)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = togname
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 20.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.Parent = Frame

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.918103456, 0, 0.146212012, 0)
    TextButton.Size = UDim2.new(0, 28, 0, 28)
    TextButton.Font = Enum.Font.GothamBold
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000

    UICorner_2.Parent = TextButton

    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = TextButton
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    local uistroke3 = Instance.new("UIStroke")
    uistroke3.Parent = Frame
    uistroke3.Color = Color3.fromRGB(63, 63, 63)
    uistroke3.Thickness = 1
    uistroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    Frame.MouseEnter:Connect(function()  

        uistroke3.Color = Color3.fromRGB(93, 93, 93)
    end)

    Frame.MouseLeave:Connect(function()  

        uistroke3.Color = Color3.fromRGB(63, 63, 63)
    end)

        if toggled then
            Tween(TextButton, 0.2, {BackgroundColor3 = Color3.fromRGB(85, 255, 255)})
        end

        TextButton.MouseButton1Click:Connect(function()
            toggled = not toggled
            task.spawn(function()
                callback(toggled)
            end)
            if toggled then
                Tween(TextButton, 0.2, {BackgroundColor3 = Color3.fromRGB(85, 255, 255)})
            end
            if not toggled then
                Tween(TextButton, 0.2, {BackgroundColor3 = Color3.fromRGB(130, 130, 130)})
            end
        end)
        
        updateCanvasSize()
    end

    function components:CreateTextBox(Texntame, placeholder, callback)

    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local TextBox = Instance.new("TextBox")
    local UICorner_2 = Instance.new("UICorner")

    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0206612833, 0, 0.546808302, 0)
    Frame.Size = UDim2.new(0, 464, 0, 79)



    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.019396551, 0, 0.160426766, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 19)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = tostring(Texntame)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 20.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.Parent = Frame

    TextBox.Parent = Frame
    TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.019396551, 0, 0.482463598, 0)
    TextBox.Size = UDim2.new(0, 445, 0, 31)
    TextBox.Font = Enum.Font.SourceSansBold
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 14.000
    TextBox.PlaceholderText = tostring(placeholder)

    UICorner_2.CornerRadius = UDim.new(0, 3)
    UICorner_2.Parent = TextBox


    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = Frame
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    local uistroke3 = Instance.new("UIStroke")
    uistroke3.Parent = TextBox
    uistroke3.Color = Color3.fromRGB(63, 63, 63)
    uistroke3.Thickness = 1
    uistroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    Frame.MouseEnter:Connect(function()  

        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(93, 93, 93)})
    end)

    Frame.MouseLeave:Connect(function()  

        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(63, 63, 63)})
    end)

        TextBox.FocusLost:Connect(function()
            task.spawn(function()
                callback(TextBox.Text)
            end)
        end)

        updateCanvasSize()
    end

    function components:CreateButton(Texntame, callback)

        local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")

    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.00843881816, 0, 0.804511249, 0)
    Frame.Size = UDim2.new(0, 464, 0, 40)

    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = Frame
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    Frame.MouseEnter:Connect(function()  
    --uistroke2.Color = Color3.fromRGB(93, 93, 93)
        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(93, 93, 93)})
    end)

    Frame.MouseLeave:Connect(function()  
    --	uistroke2.Color = Color3.fromRGB(63, 63, 63)
        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(63, 63, 63)})
    end)


    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.265, 0,0.237, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 19)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = tostring(Texntame)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 20.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Center

    UICorner.Parent = Frame

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Size = UDim2.new(0, 464, 0, 40)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000


        TextButton.MouseButton1Click:Connect(function()
            TextButton.TextSize = 18
            wait(1)
            TextButton.TextSize = 14
            callback()
        end)

        updateCanvasSize()
    end

    function components:CreateSlider(sldname, min, max, start, callback)


    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local Trigger = Instance.new("TextButton")
    local Behind = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local SliderIn = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UICorner_6 = Instance.new("UICorner")



    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0206612833, 0, 0.546808302, 0)
    Frame.Size = UDim2.new(0, 464, 0, 79)

    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = Frame
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    Frame.MouseEnter:Connect(function()  
        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(93, 93, 93)})
    end)

    Frame.MouseLeave:Connect(function()  
        Tween(uistroke2, 0.2, {Color = Color3.fromRGB(63, 63, 63)})
    end)


    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.019396551, 0, 0.160426766, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 19)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = sldname
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 20.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.Parent = Frame

    Behind.Name = "Trigger"
    Behind.Parent = Frame
    Behind.BackgroundColor3 = Color3.fromRGB(53, 159, 159)
    Behind.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Behind.BorderSizePixel = 0
    Behind.Position = UDim2.new(0.019396551, 0, 0.531645596, 0)
    Behind.Size = UDim2.new(0, 443, 0, 21)

    UICorner_6.Parent = Behind

    Trigger.Name = "Trigger"
    Trigger.Parent = Frame
    Trigger.BackgroundColor3 = Color3.fromRGB(53, 159, 159)
    Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Trigger.BorderSizePixel = 0
    Trigger.Position = UDim2.new(0.019396551, 0, 0.531645596, 0)
    Trigger.Size = UDim2.new(0, 443, 0, 21)
    Trigger.ZIndex = 5
    Trigger.Text = ""


    UICorner_2.Parent = Trigger

    SliderIn.Name = "SliderIn"
    SliderIn.Parent = Trigger
    SliderIn.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
    SliderIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderIn.BorderSizePixel = 0
    SliderIn.Position = UDim2.new(-0.000919522892, 0, 0.0078357514, 0)
    SliderIn.Size = UDim2.new(0, 0, 0, 21)


    local ValueText = Instance.new("TextLabel")
    ValueText.Name = "Value"
    ValueText.Parent = Frame
    ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ValueText.BackgroundTransparency = 1.000
    ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ValueText.BorderSizePixel = 0
    ValueText.Position = UDim2.new(0.512931049, 0, 0.160426661, 0)
    ValueText.Size = UDim2.new(0, 213, 0, 19)
    ValueText.Font = Enum.Font.SourceSansBold
    ValueText.Text = tostring("".. tostring(min).. "/".. tostring(max).. "")
    ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ValueText.TextScaled = true
    ValueText.TextSize = 100.000
    ValueText.TextWrapped = true
    ValueText.TextXAlignment = Enum.TextXAlignment.Right

    UICorner_3.Parent = SliderIn

        Trigger.MouseButton1Down:Connect(function()
            Value = math.floor((((tonumber(max) - tonumber(min)) / 443) * SliderIn.AbsoluteSize.X) + tonumber(min)) or 0
            callback(Value)
            SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 443), 0, 22)
            moveconnection = mouse.Move:Connect(function()
                ValueText.Text = "".. Value.. "/".. tostring(max).. ""
                Value = math.floor((((tonumber(max) - tonumber(min)) / 443) * SliderIn.AbsoluteSize.X) + tonumber(min))
                callback(Value)
                SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 443), 0, 22)
            end)
            releaseconnection = game.UserInputService.InputEnded:Connect(function(Mouse)
                if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 443) * SliderIn.AbsoluteSize.X) + tonumber(min))
                    ValueText.Text = "".. Value.. "/".. tostring(max).. ""					
                    callback(Value)
                    SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 443), 0, 22)
                    moveconnection:Disconnect()
                    releaseconnection:Disconnect()
                end
            end)
        end)
        updateCanvasSize()
    end

    function components:CreateDropdown(name, list, callback)

        local ClosedSize = UDim2.new(0, 464,0, 40)
        local OpenedSize = UDim2.new(0, 464,0, 40)

        local TextPosClosed = UDim2.new(0.248, 0,0.536, 0)
        local ImagePosClosed = UDim2.new(0.92, 0,0.221, 0)

        local TextPosOpended = UDim2.new(0.248, 0,0.219, 0)
        local ImagePosOpended = UDim2.new(0.918, 0,0.125, 0)

        local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local ImageButton = Instance.new("ImageButton")



    Frame.Parent = CompHolfder
    Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0105485236, 0, 0.82330817, 0)
    Frame.Size = UDim2.new(0, 464, 0, 40)
    Frame.ClipsDescendants = true -- Prevent overflow

    local uistroke2 = Instance.new("UIStroke")
    uistroke2.Parent = Frame
    uistroke2.Color = Color3.fromRGB(63, 63, 63)
    uistroke2.Thickness = 1
    uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    Frame.MouseEnter:Connect(function()  

        uistroke2.Color = Color3.fromRGB(93, 93, 93)
    end)

    Frame.MouseLeave:Connect(function()  

        uistroke2.Color = Color3.fromRGB(63, 63, 63)
    end)



    TextLabel.Parent = Frame
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.ClipsDescendants = true
    TextLabel.Position = UDim2.new(0.247999996, 0, 0.536000013, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 19)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = name
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 20.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.Parent = Frame

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Size = UDim2.new(0, 464, 0, 40)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000

    ImageButton.Parent = Frame
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.920000017, 0, 0.221000001, 0)
    ImageButton.Size = UDim2.new(0, 25, 0, 25)
    ImageButton.Image = "http://www.roblox.com/asset/?id=6031090991"


    -- Scrolling frame for buttons
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    ScrollingFrame.Parent = Frame
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.ZIndex = 43
    ScrollingFrame.ScrollBarThickness = 3
    ScrollingFrame.Visible = false
    ScrollingFrame.ClipsDescendants = true -- Prevent overflow
    ScrollingFrame.Size = UDim2.new(1, -20, 0, 79) -- Set the size to fit within the parent frame
    ScrollingFrame.Position = UDim2.new(0, 10, 0, 40) 

    UIListLayout.Parent = ScrollingFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 3)

    local function toggleDropdown()
        isOpening = not ScrollingFrame.Visible 
        
        local ClosedSize = UDim2.new(0, 464, 0, 40)
        local OpenedSize = UDim2.new(0, 464, 0, 80) 

        local function updateSizes()
            local sizeChange = isOpening and (OpenedSize.Y.Offset - ClosedSize.Y.Offset) or (ClosedSize.Y.Offset - OpenedSize.Y.Offset)
            local newSizeY = Section.Size.Y.Offset + sizeChange
            Section.Size = UDim2.new(Section.Size.X.Scale, Section.Size.X.Offset, Section.Size.Y.Scale, newSizeY)
        end
        
        local targetSize = isOpening and OpenedSize or ClosedSize
        TextLabel.Position = isOpening and TextPosOpended or TextPosClosed

        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        local sizeTweenGoals = {Size = targetSize}
        local sizeTween = TweenService:Create(Frame, tweenInfo, sizeTweenGoals)
        
        ScrollingFrame.Visible = isOpening
        sizeTween:Play()

            updateSizes() 
    end



    for i, option in ipairs(list) do
        local UICorner = Instance.new("UICorner")


    local OptionButton = Instance.new("TextButton")



    OptionButton.Parent = ScrollingFrame
    OptionButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    OptionButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OptionButton.BorderSizePixel = 0
    OptionButton.Position = UDim2.new(0.0169491526, 0, 0, 0)
    OptionButton.Size = UDim2.new(0, 399, 0, 18)
    OptionButton.Font = Enum.Font.SourceSansBold
    OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    OptionButton.TextSize = 20.000
    OptionButton.Text = option
    OptionButton.TextScaled = true
    OptionButton.Name = option

        updateCanvasSize()
        UICorner.Parent = OptionButton
        OptionButton.MouseButton1Click:Connect(function()
            callback(option)
            toggleDropdown()
        end)

        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #list * 44)
    end

    ImageButton.MouseButton1Click:Connect(toggleDropdown)


    local dropdownConfig = {}

    function dropdownConfig:UpdateName(newName)
        TextLabel.Text = newName
        updateCanvasSize()
    end

    function dropdownConfig:UpdateList(newList)
        for _, child in ipairs(ScrollingFrame:GetChildren()) do
            if child:IsA("TextButton") then
                child:Destroy()
                updateCanvasSize()
            end
        end
        
        for i, option in ipairs(newList) do
            local OptionButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")

            OptionButton.Parent = ScrollingFrame
            OptionButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
            OptionButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            OptionButton.BorderSizePixel = 0
            OptionButton.Position = UDim2.new(0.0169491526, 0, 0, 0)
            OptionButton.Size = UDim2.new(0, 399, 0, 18)
            OptionButton.Font = Enum.Font.SourceSansBold
            OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionButton.TextSize = 20.000
            OptionButton.Text = option
            OptionButton.Name = option
            OptionButton.TextScaled = true

            UICorner.Parent = OptionButton

            OptionButton.MouseButton1Click:Connect(function()
                callback(option) 
                toggleDropdown()
            end)
            updateCanvasSize()
        end

        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #newList * 44)
        updateCanvasSize()
    end
    updateCanvasSize()
    return dropdownConfig



    end

    updateCanvasSize()
    return components
        end

        return sections
    end

    return lib
    end
return libary
