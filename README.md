# Volt-Analytics

**Readme is not complete**

Some time ago, I was commuting 4 days a week from Rochester to Ithaca, NY with a round trip of ~200 miles a day. I was trying to find the most efficient and optimal route to and from my daily destinations. I wanted to learn more about the technologies below and I thought this would be a cool way to do it. I also didn't like the way volt-stats displayed the data through their visualizations so I decided to do it myself.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you'll need

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

1. Create a credentials.py file in the root directory

Example for contents:

```
login = {
    'username' : 'KewlUsernameHere',
    'password' : 'SuperSecretPasswordHere'
}
```

## Running

Acquire the data:

```
make volt-data
```

Run Jupyter notebook:
```
make jupyter
```

## Built With

* [Docker](https://www.docker.com/)
* [Selenium](http://www.seleniumhq.org/)
* [ChromeDriver](http://chromedriver.chromium.org/)
* [Jupyter Notebooks](http://jupyter.org/)
* [Pandas](http://pandas.pydata.org/)
* [Volt Stats](https://www.voltstats.net/)
* [AWS S3](https://aws.amazon.com/s3/)
* [Reflect.io](https://reflect.io)


## Authors

* **[Derek Palmer](https://github.com/derek-palmer)**

## License

This project is licensed under the MIT License - see the [MIT License](https://derek-palmer.mit-license.org/) link for details
