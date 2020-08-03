$PA_Campaign_Data = "C:\Users\SeanD\PlayCode\PA\Campaign\Data"
$PA_Campaign_Storage = "C:\Users\SeanD\PlayCode\PA\Campaign\Storage"
$PA_Campaign_SampleData = "C:\Users\SeanD\PlayCode\PA\Campaign\SampleData"
$FilesToSearchFor = "\campaign_mega*.csv"

$FullSourceData = $PA_Campaign_Data + $FilesToSearchFor
$FullCampaign_Storage = $PA_Campaign_Storage + $FilesToSearchFor

#Move Current Data to SampleDate
get-childitem -path $FullSourceData | Move-Item -Destination $PA_Campaign_SampleData
#Move Storage to Development 
get-childitem -path $FullCampaign_Storage | Move-Item -Destination $PA_Campaign_Data
#FPS1
#FPS2