# Import the required libraries
import os
import codecs
from bs4 import BeautifulSoup
import json

# Define the location of the directory
path =r"/home/radisys/log-analysis"

# Change the directory
os.chdir(path)

def read_files(file_path):
   with open(file_path, 'r') as file:
      print(file.read())

# Iterate over all the files in the directory
for file in os.listdir():
   if file.endswith('.html'):
      # Create the filepath of particular file
      file_path =f"{path}/{file}"
      print(" ")
      print("file name >>>> "+file_path)
      f=codecs.open(file_path, 'r', 'utf-8')
      document= BeautifulSoup(f.read()).findAll('code')
      for ele in document:
          ele_1 = list(ele)[0]
          response = json.loads(ele_1)
          rx_data_rate = (response['resource'][0]['rx_data_rate'])
          tx_data_rate = (response['resource'][0]['tx_data_rate'])
          oper_state = (response['resource'][0]['operational_status'])
          port_name = (response['resource'][0]['name'])
          print("port:"+port_name+" "+"oper_state:"+oper_state+" "+"tx_data_rate:"+tx_data_rate+" "+"rx_data_rate:"+rx_data_rate)
         # print(port_name)
