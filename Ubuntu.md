# Installing

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

2. Ruby 2.3.0

    ```sh
    rvm install 2.3.0
    ```

## Setup Git

1. Register to Github.com
2. Install Git

    ```sh
    sudo apt-get install git
    ```

3. Configure Git

    ```sh
    git config --global user.name "Your Name Here"
    git config --global user.email "your-github-email@example.com"
    ```

4. Generate Public Key

    ```sh
    ssh-keygen # then, just press enter
    ```

5. [Add key to Github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

    ```sh
    cat ~/.ssh/id_rsa.pub # copy the content to github
    ```

## Setup Services

1. Clone Repo

    If you need full history of the repository, please remove `--depth 1`.

    ```sh
    git clone github.com/fadhlimaulidri/rubyonrails.git
    cd rubyonrails
    ```

2. Install Mysql

    ```
    sudo apt-get install -y mysql-server libmysqlclient-dev
    ```

3. Create Gemset

    ```sh
    rvm 2.5.1@rubyonrails --create
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
    
## Run

Access it at `http://localhost:3000`
