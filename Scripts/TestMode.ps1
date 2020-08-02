$PA_Campaign_Data = "C:\Users\SeanD\PlayCode\PA\Campaign\Data"
$PA_Campaign_Storage = "C:\Users\SeanD\PlayCode\PA\Campaign\Storage"
$PA_Campaign_SampleData = "C:\Users\SeanD\PlayCode\PA\Campaign\SampleData"
$FilesToSearchFor = "\campaign_mega*.csv"

$FullSourceData = $PA_Campaign_Data + $FilesToSearchFor
$FullSourceSampleData = $PA_Campaign_SampleData + $FilesToSearchFor

#Move Current Data to Storage
get-childitem -path $FullSourceData | Move-Item -Destination $PA_Campaign_Storage
#Move Sample Data to Production 
get-childitem -path $FullSourceSampleData | Move-Item -Destination $PA_Campaign_Data
