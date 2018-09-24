# Installing in MACOS

## Install Xcode

[Download](https://developer.apple.com/xcode/downloads/) and install the latest version of Xcode.
if xcode too big for you can you install Command Line Tools.

```
xcode-select --install
```

## Install Homebrew

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Mysql

    ```
    $ brew install mysql
    ```

## Install RVM & Ruby

1. RVM

    ```
    $ curl -L get.rvm.io | bash -s stable
    $ source ~/.bash_profile
    ```

    Then run this command and follow the instructions

    ```
    rvm requirements
    ```

2. Ruby 2.3.0

    ```
    $ rvm install 2.3.0
    ```

## Setup Git

1. Register to Github.com. Ask for BL repo access to @xinuc or @achmadzaki

2. Install Git

    ```
    $ brew install git
    ```

3. Configure Git

    ```
    $ git config --global user.name "Your Name Here"
    $ git config --global user.email "your-github-email@example.com"
    ```

4. Generate Public Key

    ```
    $ ssh-keygen # then, just press enter
    ```

5. Add key to Github

    ```
    $ cat ~/.ssh/id_rsa.pub # copy the content to github
    ```

## Setup

1. Clone

    ```
    $ git clone https://github.com/fadhlimaulidri/rubyonrails.git
    $ cd rubyonrails
    ```

2. Create Gemset

    ```
    $ rvm 2.3.0@rubyonrails --create
    ```

3. Install Bundler

    ```
    $ gem install bundler
    ```

4. Install Gems

    ```
    $ bundle install
    ```

5. Copy `env` file

    ```
    $ cp env.sample .env
    ```

  Then make any changes if required.

6. Start MySQL as a service

    ```
    $ brew services start mysql
    ```
    
7. Prepare Databases

    ```
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed
    ```
    
## Run

    ```
    $ rails start
    ```

## Access 
 ```
 http://localhost:3000
 ```
