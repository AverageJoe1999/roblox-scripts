if KRNL_LOADED then

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "GUI HUB Loaded!";
        Text = "Script should work fine since your using KRNL!";
    })
    
    
    end
    
    
    if syn_decompile then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "GUI Hub Loaded!";
        Text = "Full Support | Synapse X";
    })
    end
    
    if not syn_decompile then
    if not KRNL_LOADED then
    
    
    local function callback(Text)
     if Text == "Get Link" then
    setclipboard ("https://wearedevs.net/d/Krnl")
    wait(0.3)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "KRNL Download !";
        Text = "The download link has been copied to your clipboard , Paste it in your browser for download ";
    })
    
    elseif Text == ("Button2 text") then
     print ("Answer2")
     end
    end
    
    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
    --
    game.StarterGui:SetCore("SendNotification",  {
     Title = "Lime X Script Support";
     Text = "Since you are not using synapse , I recommend you use krnl. Would you like to copy download link?";
     Icon = "";
     Duration = 15;
     Button1 = "Get Link";
     Button2 = "Close";
     Callback = NotificationBindable;
    })
    
    
    end
    
    end
    
    -----------------MM2
    loadstring(game:HttpGet("https://pastebin.com/raw/0USBmBdr", true))()
    
    -----------BIG Paintball
    loadstring(game:HttpGet("https://pastebin.com/raw/Q1CseBz1", true))()
    
    
    ---------MEEPCITY
    loadstring(game:HttpGet("https://pastebin.com/raw/QtGXYiB0", true))()
    
    
    
    
    ----------TOH 
    loadstring(game:HttpGet("https://pastebin.com/raw/cSh036Jf", true))()
    
    ----------tohpro
    loadstring(game:HttpGet("https://pastebin.com/raw/ix8L94q2", true))()
    
    
    
    ---------kat
    loadstring(game:HttpGet("https://pastebin.com/raw/6rd91GZx", true))()
    
    ------arsenal 
    loadstring(game:HttpGet("https://textbin.net/raw/yafllrjsbn", true))()
    
    
    ------------dahood
    loadstring(game:HttpGet("https://pastebin.com/raw/0RDZZL48", true))()
    
    
    ----------vrhands
    loadstring(game:HttpGet("https://pastebin.com/raw/dEP1uvnu", true))()
    
    
    -----universaltest
    if game.PlaceId == 286090429 then
    print("Arsenal Detected!") elseif
    game.PlaceId == 621129760 then
    print("Kat Detected") elseif
    game.PlaceId == 3582763398 then
    print("Pro Tower Of Hell Detected") elseif
    game.PlaceId == 1962086868 then
    print("Tower of hell Detected") elseif
    game.PlaceId == 370731277 then
    print("Meep City Detected") elseif
    game.PlaceId == 4832438542 then
    print("Vr Hands") elseif
    game.PlaceId == 370731277 then
    print("Da Hood") elseif
    game.PlaceId == 2788229376 then
    print("BIG Paintball! Detected") elseif
    game.PlaceId == 142823291 then
    print ("MM2")elseif
    game.PlaceId == 2041312716 then
    loadstring(game:HttpGet("https://textbin.net/raw/s28q0yflpx", true))() else
    
    
    
    loadstring(game:HttpGet("https://paste.ee/r/wM6RO/0", true))()
    end