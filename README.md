<br />
<p align="center">
  <a href="https://github.com/nyatindopatrick/vyews">
    <img src="https://user-images.githubusercontent.com/48393059/86236005-015a1b80-bba2-11ea-95d5-4e4760477227.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">VYEWS</h3>

  <p align="center">
    Idea sharing app.
    <br /><br/>
    <a href="https://vyew.herokuapp.com"><strong>VIEW DEMO »</strong></a>
    <br />
    <br />
   
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

The project is about a platform for sharing ideas. An authenticated user is allowed to post a vyew (idea) and his/her followers downvote or upvote the idea. The user has to follow other users in order to see their vyews.

### Built With

The app has been built using the following tools:

- Rails
- Postgresql
- Cloudinary
- Bootstrap
- Sass

## Getting Started

To test the app locally, feel free to clone the repository and follow the instructions below.

### Installation

1. Get a free cloudinary API Key at [https://cloudinary.com](https://cloudinary.com)
2. Clone the repo

```sh
git clone https://github.com/nyatindopatrick/vyews.git
```

3. Install the gems

```sh
bundle install
```

4. copy your cloudinary.yml file downloaded from cloudinary website to `config/` folder

5) create the database by running

```sh
rails db:create
```

5. Migrate your database

```sh
rails db:migrate
```

5. Finally fire up your server and you'll be able to access the app on http://localhost:3000 in your browser.

```sh
rails s
```

### Testing 
1. To run tests for the app, open terminal, navigate to the project directory and just type the following command:
```sh
bundle exec rspec
```

## Roadmap

See the [open issues](https://github.com/nyatindopatrick/vyews/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

## 👤 Contact

Patrick Nyatindo - [@nyatindopatrick](https://twitter.com/nyatindopatrick) - nyatindopatrick@gmail.com

Project Link: [https://github.com/nyatindopatrick/vyews](https://github.com/nyatindopatrick/vyews)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- Microverse
- Heroku
- Bootstrap
- Font Awesome

[product-screenshot]: https://user-images.githubusercontent.com/48393059/86232973-6a8b6000-bb9d-11ea-8cbd-e8db3ca4c3b1.png
