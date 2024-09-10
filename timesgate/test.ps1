<#
Divoom API 
https://doc.divoom-gz.com/web/#/12?page_id=532

Device ID = 300131721
DeviceMac = 4827e2eced20
Hardware = 400
URL = http://xxxxx:80/post

#>
# Define the JSON data
$jsonData = @{


#Get Device Info


   
##Gets all settings 
   #"Command" = "Channel/GetAllConf"
   
   
##Brightness, Error doesn't adjust brightness makes it black.
   #"Command" = "Channel/SetBrightness"
   #"Brightness" = 10

##Screenswitch  --- Turns screen on or off
   #"Command" = "Channel/OnOffScreen"
   #"OnOff" = 1

##Get Device Weather
    #"Command" = "Device/GetWeatherInfo"

##Get Dial Type
   #"Command" = "Device/GetImgLikeList"

##Play Divoom GIF

#pedro: https://i.imgur.com/LlOSp3I.gif
#stormtrooper: https://i.imgur.com/Ly6ixvC.gif

    #"Command" = "Device/PlayGif"
    #"LcdArray" = 0, 0, 0, 1, 0
    #"FileName" = "https://i.imgur.com/Ly6ixvC.gif", "https://i.imgur.com/LlOSp3I.gif"

    #"Command" = "Draw/SendRemote"
    #"FileId" = " group1/M00/AB/B7/eEwpPV_9bSKEYUPSAAAAADy3Q801470760"
    #"LcdArray" = 0, 0, 0, 1, 0


##Draw text 

    "Command" = "Draw/SendHttpGif"
    "LcdArray" = 0, 0, 0, 1, 0
    "PicNum" = 2
    "PicWidth" = 64
    "PicOffset" = 0
    "PicID" = 1
    "PicSpeed" = 1
    "PicData" = "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"
#>
<#
    "Command" = "Draw/SendHttpText"
    "LcdIndex" = 4
    "TextId" = 1
    "x"  = 20
    "y" = 40
    "dir" = 0
    "font" = 4
    "TextWidth" = 56
    "speed" = 10
    "TextString" = "hello, Divoom"
    "color" = "#E19239"
    "align" = 1
#>

#"Command" = "Channel/GetIndex"

##Test Buzzer
<#
"Command" = "Device/PlayBuzzer"
"ActiveTimeInCycle" = 500
"OffTimeInCycle" = 500
"PlayTotalTime" = 3000
#>

} | ConvertTo-Json

# Set the API endpoint URL
$apiUrl = "http://xxxxx:80/post"
#$apiUrl = "https://app.divoom-gz.com/Device/GetImgLikeList"
#$apiUrl = "https://app.divoom-gz.com/Device/ReturnSameLANDevice"  ##Gets device ID information


# Create the HTTP request
$request = @{
    Uri         = $apiUrl
    Method      = "POST"
    ContentType = "application/json"
    Body        = $jsonData
}

# Send the request
$response = Invoke-RestMethod @request

# Display the response
$response