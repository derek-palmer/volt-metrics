import os
import time
import credentials

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import selenium.webdriver.chrome.service as service

usernameStr = credentials.login['username']
passwordStr = credentials.login['password']

chromeOptions = Options()
dataDir = os.path.abspath(os.path.join(__file__ ,'../..')) + '/jupyter/volume/data'

dailyDownload = '//input[@type="submit" and @value="Download Daily Data"]'
readingDownload = '//input[@type="submit" and @value="Download Reading Data"]'


prefs = {'profile.default_content_setting_values.automatic_downloads': 1, 'download.default_directory' : dataDir}
chromeOptions.add_experimental_option("prefs", prefs)

driver = webdriver.Chrome(chrome_options=chromeOptions)

driver.get("https://www.voltstats.net/Account/Login") 

username = driver.find_element_by_id("Username")
password = driver.find_element_by_id("Password")

username.send_keys(usernameStr)
password.send_keys(passwordStr)

login_attempt = driver.find_element_by_xpath("//*[@type='submit']")
login_attempt.submit()

dailyDownload_attempt = driver.find_element_by_xpath(dailyDownload).click()
readingDownload_attempt = driver.find_element_by_xpath(readingDownload).click()
time.sleep(10)
driver.close()