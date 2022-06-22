# Import the required libraries
import os
import codecs
from bs4 import BeautifulSoup
import json

data = ['name', 'operational_status', 'tx_data_rate', 'rx_data_rate']

# Define the location of the directory
path = r"/home/radisys/log-analysis/olt-reboot"
name_list = os.listdir(path)
full_list = [os.path.join(path,i) for i in name_list]
time_sorted_list = sorted(full_list, key=os.path.getmtime)

for file in time_sorted_list:
   if file.endswith('.html'):
      file_path = file
      print(" ")
      print("file name >>>> "+file_path)
      f=codecs.open(file_path, 'r', 'utf-8')
      document= BeautifulSoup(f.read()).findAll('code')
      for ele in document:
          ele_1 = list(ele)[0]
          response = json.loads(ele_1)
          for each in data:
              for key, value in response['resource'][0].items():
                  if key == each:
                      print(key+":"+response['resource'][0][key], end=" ")
                  else:
                      continue
          print('\n')
