# Budget-App

> This is a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Live demo
[Live Demo Link]([https://budget-app-productions.up.railway.app/](https://budget-web-app-fb4b85a857d6.herokuapp.com/)

## Built With

- ![](https://img.shields.io/badge/Github-blueviolet)
- ![](https://img.shields.io/badge/Ruby-red)
- ![](https://img.shields.io/badge/Ruby*on*Rails-red)
- ![](https://img.shields.io/badge/PostgreSql-blue)
- ![](https://img.shields.io/badge/Tailwind-blue)


### Install & Setup

To setup and install this sample AlFa Blog project, follow the below steps:
- Clone this project by the command: 
  ```
  git clone https://github.com/Terbeche/Budget-app.git
  ```

- Then switch to the project folder by the bellow query:

  ```
  cd Budget-app
  ```

- Install the required dependecies with:
  ```
  bundle install
  ```
- Install npm dependencies with: 
  ```
  npm install
  ```
- Before running below commands update [config/database.yml](./config/database.yml) with your local `DB`credentials. Then run:
    ```
    rake db:create
    ```
    ```
    rake db:migrate
    ```
- To make the tailwindcss works run the below command:
    ```
    bundle exec rake assets:precompile
    ```

- With Ruby on Rails and PostgreSQL installed in your environment, you can run `rails server` to run the website.
### Tests

- Run `bundle install`
- Run `bundle exec rspec spec`

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- Postgresql

## Author

👤 **Terbeche Mostefa**

- GitHub: [@githubhandle](https://github.com/Terbeche)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mustapha-terbeche/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Terbeche/Budget-app/issues).


## Acknowledgments

- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE.md) licensed.
