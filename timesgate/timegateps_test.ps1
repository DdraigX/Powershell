$postParams = @{“Command”:”Channel/GetAllConf”}
Invoke-WebRequest -Uri http://example.com/foobar -Method POST -Body $postParams