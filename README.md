# Volt-Analytics

**Readme is not complete**

Some time ago, I was commuting 4 days a week from Rochester to Ithaca, NY with a round trip of ~200 miles a day. I was trying to find the most efficient and optimal route to and from my daily destinations. I wanted to learn more about the technologies below and I thought this would be a cool way to do it. I also didn't like the way volt-stats displayed the data through their visualizations so I decided to do it myself.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you'll need (installed on your local machine):

* Python
* Python Modules:
```
Credentials
Selenium
Chromedriver
```
* Google Chrome
* Docker

## Credentials:

* Create Credential file for Volt Stats
1. Create a credentials.py file in the root directory
2. Add in voltstats creds

Example for contents:

```
login = {
    'username' : 'KewlUsernameHere',
    'password' : 'SuperSecretPasswordHere'
}
```

* Create Credentials for Google Sheets - Instructions taken / modified from here: [Reading and writing to Google Spreadsheets using Python](https://erikrood.com/Posts/py_gsheets.html)

1. Head over to the Google API Console.
2. Create a new project by selecting My Project -> + button
3. Search for 'Google Sheets API', enable it.
4. Head over to 'Credentials' (sidebar), click 'Create Credentials' -> 'Service Account Key'
5. Select Compute Engine service default, JSON, hit create.
6. Open up the JSON file, share your spreadsheet with the "XXX-compute@developer.gserviceaccount.com" email listed.
7. Save the JSON file wherever you're hosting your project, you'll need to load it in through Python later.
8. Rename json file to `volt-metrics-creds.json` and copy to `/volume/`

## Running

Acquire the data:

```
make volt-data
```

Run Jupyter notebook:
```
make run_jupyter
```

## Built With

* [Docker](https://www.docker.com/)
* [Selenium](http://www.seleniumhq.org/)
* [ChromeDriver](http://chromedriver.chromium.org/)
* [Jupyter Notebooks](http://jupyter.org/)
* [Pandas](http://pandas.pydata.org/)
* [Volt Stats](https://www.voltstats.net/)
* [Google Sheets](https://docs.google.com/spreadsheets/)
* [Google Data Studio](https://datastudio.google.com)


## Authors

* **[Derek Palmer](https://github.com/derek-palmer)**

## License

This project is licensed under the MIT License - see the [MIT License](https://derek-palmer.mit-license.org/) link for details
