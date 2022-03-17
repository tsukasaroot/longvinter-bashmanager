netsh advfirewall firewall add rule name="LongvinterServer UDP" dir=in action=allow protocol=UDP localport=7777,27015,27016
netsh advfirewall firewall add rule name="LongvinterServer UDP" dir=out action=allow protocol=UDP localport=7777,27015,27016

netsh advfirewall firewall add rule name="LongvinterServer TCP" dir=in action=allow protocol=TCP localport=27015,27016
netsh advfirewall firewall add rule name="LongvinterServer TCP" dir=out action=allow protocol=TCP localport=27015,27016