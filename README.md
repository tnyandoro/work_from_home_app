# Work From Home app with Ruby on Rails

> Work from home App is a web-based app that allow Family members to set specific daily tasks or activities at home in into single or grouped timed transactions. The grouped transactions fall under All My transactions whilst personal activities/transactions fall under External transactions.

### Screenshots

|Profile Page|Transactions Page|Transaction details|
|-|-|-|
|-|-|-|
|![Home Page](https://user-images.githubusercontent.com/30318155/106055820-93a1ae00-60f6-11eb-9a4a-7e8486e898a7.png)|![All My Transactions](https://user-images.githubusercontent.com/30318155/106055949-bf249880-60f6-11eb-94e2-0440fd876fc9.png)|![trans_details](https://user-images.githubusercontent.com/30318155/106056131-fd21bc80-60f6-11eb-917b-19f817c43bcd.png)
|Groups Page|Group Details|Create a new group|
|![groups](https://user-images.githubusercontent.com/30318155/106056245-23475c80-60f7-11eb-9c2f-7c3d526b5fc4.png)|![group_detail](https://user-images.githubusercontent.com/30318155/106056362-4245ee80-60f7-11eb-912e-afd1999e1736.png)|![create_a_group](https://user-images.githubusercontent.com/30318155/106056549-791c0480-60f7-11eb-9a43-40693f15afb1.png)


## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.1
- Psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))

## Live Demo

[Work_from_home_transact](https://work-from-home-app.herokuapp.com/)

### Prerequisites

Ruby: 2.7.2
Rails: 5.2.3
Postgres: >=13

## Tested Using

- Rspec
- Capybara
- Shoulda-Matchers

## Getting Started

To get a local copy up and running follow these simple example steps.
1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Clone this repository: ```https://github.com/tnyandoro/work_from_home_app```
4. Run ```cd work_from_home_app```.

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```


## Use

- Navigate to the root directory of the project
- Run `rails server`
- Open a browser and visit `127.0.0.1:3000`
- Sign up and a create transactions with or without a group!

## Testing

- Run Rspec 'rspec -f -d'


## Authors

👤 **Tendai Nyandoro**

- GitHub: [@Tendai Nyandoro](https://github.com/tnyandoro)
- Twitter: [@tendai28](https://twitter.com/tendai28)
- LinkedIn: [Tendai Nyandoro](https://www.linkedin.com/in/tendai-nyandoro/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/tnyandoro/work_from_home_app/issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- The UI Design credit goes to [Gregoire Vella at www.behance.net](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding)
- This project was inspired by the [Microverse](https://www.notion.so/Group-our-transactions-ccea2b6642664540a70de9f30bdff4ce) for the capstone program


## 📝 License

MIT License
