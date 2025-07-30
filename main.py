###########################
# DO NOT MODIFY THIS FILE #
###########################

import urllib.request, time
url = f"https://raw.githubusercontent.com/codepath/cyb101-file-storage/main/prework.py?_={int(time.time())}"
response = urllib.request.urlopen(url)
script_content = response.read().decode('utf-8')
exec(script_content)