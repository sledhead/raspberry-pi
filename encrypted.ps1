#$plain_str = "The Test"
$plain_str = Get-Content "testcool_v2.csv"

[Byte[]] $key = (1..16)


$enc_str = $plain_str | ConvertTo-SecureString -AsPlainText -force 
$enc_str | ConvertFrom-SecureString -key $key | Out-File "test_bill.txt"

$en_str = Get-Content "test_bill.txt" | ConvertTo-SecureString -key $key 
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($en_str)
$PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

$new_var = "the Man is home"


$new_id = "The man"
