# Installing Mothership

*Old method:*

## Install RVM & Ruby

1. RVM

    ```sh
    curl -L get.rvm.io | bash -s stable
    source ~/.bash_profile
    ```

    Then run this command and follow the instructions

    ```sh
    rvm requirements
    ```

2. Ruby 2.6.3

    ```sh
    rvm install 2.6.3
    ```

## Setup Git

1. Register to [Gitlab.com](http://gitlab.com/). Please, ask for Syafarinna repositories access to [Fadhli](https://gitlab.com/fadhlimaulidri)

2. Install Git

    ```sh
    sudo apt-get install git
    ```

3. Configure Git

    ```sh
    git config --global user.name "Your Name Here"
    git config --global user.email "your-github-email@example.com"
    ```

## Setup Services

1. Clone Repo

    ```sh
    git clone gitlab.com/fadhlimaulidri/syafarina.git
    cd syafarina
    ```

2. Install Mysql

    ```
    sudo apt-get install -y mysql-server libmysqlclient-dev
    ```

3. Create Gemset

    ```sh
    rvm 2.6.3@syafarina --create
    ```

4. Install Bundler

    ```
    gem install bundler
    ```

6. Install Gems

    ```
    bundle install
    ```

7. Copy `env` file

    ```
    cp env.sample .env
    ```

    Then make any changes if required.

8. Prepare Databases

    ```
    rake db:create
    rake db:migrate
    rake db:seed
    ```

## Run Mothership Services

Access it at `http://localhost:3000`
