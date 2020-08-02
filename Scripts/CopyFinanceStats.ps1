$FinanceStats_Source_File = "C:\Users\Seand\PlayCode\PA\Margin Management\Site Stats.csv"
#Find the most recent file begining with 'T' in downloads folder 
$MostRecentFile = Get-ChildItem "~\Downloads" -File | Where-Object {$_.Name -Match "PA_Stats*.*"} | Sort-Object CreationTime | Select-Object -Last 1
#Copy and rename the file to the proper name for my power bi
$CopiedFile = Copy-Item  $MostRecentFile.FullName -Destination $FinanceStats_Source_File -PassThru

$CampaignStats_Source_File = "C:\Users\Seand\PlayCode\PA\Margin Management\Campaign.csv"
#Find the most recent file begining with 'T' in downloads folder 
$MostRecentFile = Get-ChildItem "~\Downloads" -File | Where-Object {$_.Name -Match "campaign*.*"} | Sort-Object CreationTime | Select-Object -Last 1
#Copy and rename the file to the proper name for my power bi
$CopiedFile = Copy-Item  $MostRecentFile.FullName -Destination $CampaignStats_Source_File -PassThru
