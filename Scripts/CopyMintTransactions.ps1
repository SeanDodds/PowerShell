$MintBI_Transaction_Source_File = "C:\Users\Seand\PlayCode\PowerBI\Mint3\Transactions.csv"
#Find the most recent file begining with 'T' in downloads folder 
$MostRecentFile = Get-ChildItem "~\Downloads" -File | Where-Object {$_.Name -Match "^transactions.*"} | Sort-Object CreationTime | Select-Object -Last 1
#Copy and rename the file to the proper name for my power bi
$CopiedFile = Copy-Item  $MostRecentFile.FullName -Destination $MintBI_Transaction_Source_File -PassThru  
#Change FM1