nmap_result = `sudo nmap -sn 192.168.1.0/24`
regex_host_ip = /Nmap scan report for (?<host>.*) \((?<ip>.*)\).*\n.*\nMAC Address: (?<mac>.*) \(/
regex_nb_host = /Nmap done: (?<nb_ip_scanned>\d+).*\((?<nb_hosts>\d+).* (?<time>\d+.\d+)/

o = nmap_result.scan(regex_host_ip)
t = regex_nb_host.match(nmap_result).to_a
t.shift

p o
p t




