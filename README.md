##Business Problem to Solve##
The ministry needs a new website for a book that the ministry wants to create curriculum for. The name of this book is "Ready to Wed", and it's written by Greg and Erin Smalley. You can find out a little bit about this book by looking at http://www.amazon.com/Ready-Wed-Start-Marriage-Youll/dp/1624054064/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr=.
##Requirements##
The work needs to provide the following:

- The site needs to present the information in a mobile and desktop friendly way.
- The site needs to display the 12 main points of the book (Provided in the appendix).
- The data needs to come through some sort of data layer. In other words, we don't want the text hard coded in the web pages. Show us that you understand how to use a DAL. You can use either a database (i.e. MongoDB, SQL Server, MySQL) or a JSON feed for the source of your data.
- The back end part of the site should showcase your knowledge of appropriate design patterns.
- Your work should showcase how well you understand Object Oriented Design principles.
- Your work should showcase your understanding of TDD and unit testing.
- The project should include instructions for running the website on a local environment.

###Bonus###
It would be really great if you can make the site incorporate some sort of administration interface that allows an administrative user to edit the 12 main points of the book.

##Delivery##
When you are finished, submit a pull request. If there is any configuration that needs to be done, please note that in your pull request.

##Appendix##
Here is JSON string that contains the 12 main points of the book:



    {
    "1":{
        "title":"Life Long Commitment",
          "summary":"Lifelong commitment begins with a decision that divorce is not an option and a determination to invest in your marriage every day."
    },

    "2":{
        "title":"Spending Enjoyable Time Together",
        "summary":"In the busyness of life, remember that love isn’t self-sufficient. Your marriage must be constantly fed and nurtured by spending regular time together."
    },

    "3":{
        "title":"Positive Communication",
        "summary":"Communication gives life to marriage when you spend time getting to know your spouse and allowing yourself to be deeply known by him or her."
    },

    "4":{
        "title":"Shared Spiritual Intimacy",
        "summary":"Couples who have a deep, shared faith and have Christ at the center of their marriage have a more satisfying relationship and deeper intimacy."
    },

    "5":{
        "title":"Healthy Individuals",
        "summary":"A healthy marriage is made of two healthy people. Commit to a lifetime of spiritual, emotional, physical and mental growth and development."
    },

    "6":{
        "title":"Mutually Satisfying Physical Intimacy",
        "summary":"Sex is God’s gift to a married couple as a way to experience the deepest, most profound intimacy possible—the two becoming one flesh."
    },

    "7":{
        "title":"Healthy Conflict Management",
        "summary":"Conflict is an inevitable part of marriage, but handled well, healthy conflict can become an opportunity for deeper intimacy and connection."
    },

    "8":{
        "title":"Shared Responsibility (Teamwork)",
        "summary":"Marriage means you are always on the same team. Make decisions and divide household responsibilities in a way that honors both of you."
    },

    "9":{
        "title":"Coping With Change, Stress and Crises",
        "summary":"You will face challenges on your journey together. Always fight for your marriage and trust that God will turn your pain to blessing."
    },

    "10":{
        "title":"Cherish",
        "summary":"Created by God, your fiancé(e) is of infinite worth and value. Reflect often on the things that you love and cherish about your future spouse."
    },

    "11":{
        "title":"Nourish",
        "summary":"Love involves action and behavior. You need to nourish your relationship with your fiancé(e) in ways that speak love to him or her."
    },

    "12":{
        "title":"Community-Mindedness",
        "summary":"Connecting regularly with like-minded couples who are committed to the good of your relationship is vital to the success of your marriage."
    }
    }

    # Contents:

    This pull request contains instructions on setting up your environment to run the application locally as well as instruction on seeding the database.

    ## Setup Environment for Mac OS X

    ** If you already installed RVM and Ruby, then skip to `Install Ruby 2.3.0` **

    -  Install [Ruby Version Manager](https://rvm.io/) (RVM)
    -   Check to see if you already have GCC installed by typing the following at the command prompt:
    ```shell
    gcc --version
    ```
    If you see a version number, then you're good to go. If the `gcc` command isn't found, you may get a dialog asking if you'd like to install Apple's Command Line Tools for Xcode. Follow the prompts to "Install" the Command Line Tools.
    - Check to see that you have git installed with
    ```shell
    git --version
    ```
    If you see a version number, then you have finished step 3. If not, try this link to install git: [git-osx-installer](http://code.google.com/p/git-osx-installer/downloads/list?can=3)
    -  Install RVM by typing in the Terminal prompt:
    ```shell
    curl -L https://get.rvm.io | bash -s stable
    ```
    -  Confirm proper loading, open a new Terminal session and type:
    ```shell
    rvm --version
    ```
    There should be a version number with no errors.
    -  Install Ruby 2.3.0, type:
    ```shell
    rvm install 2.3.0
    ```
    -  Close your Terminal session and open a new Terminal:
    ```shell
    rvm --default use 2.3.0
    ```
    -  Verify Ruby 2.3.0 by typing:
    ```shell
    ruby -v
    ```
    you should see something similar too:
    ```shell
    ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin15]
    ```
    -  Install Rails:
    ```shell
    gem install rails --version 4.9.1 --no-ri --no-rdoc
    ```
    -  Verify correct Rails version, type:
    ```shell
    rails -v
    ```
    and it should return:
    ```shell
    Rails 4.1.9
    ```

    ## Setup Environment for Windows

    To install Ruby, Rails, and other supporting software on Windows use the [RailsInstaller](http://railsinstaller.org/)

    -  On the [RailsInstaller](http://railsinstaller.org/), click the big green "Windows Ruby 2.2" button to download the installer.
    -  Once the executable installer has downloaded, use _Windows Explorer_ to navigate to where you saved the **.exe** file and double-click it to start the installation process.
    -  After stepping through a couple standard installer screens, you'll be prompted for the installation destination. By default, RailsInstaller will be installed in your **C:\RailsInstaller** directory. We'll assume you go with the default destination.
    -  When the installation is complete, a command prompt window will open and prompt for your name and email. Then you'll end up in the **C:\Sites** directory. You should see a window with a blinking cursor and a prompt that looks something like this:
    ```shell
    C:\Sites>
    ```
    -  Open a new command prompt by selecting the _Start_ menu, typing **cmd** into the search box, and pressing **Enter**. You should see a new command window with a blinking cursor and a prompt that looks something like this:
    ```shell
    C:\Users\Tim>
    ```
    -  Verify that Ruby 2.1 was successfully installed by typing
    ```shell
    ruby -v
    ```
    Ruby should reply with something like this, though your exact patch number, date, and revision may be slightly different:
    ```shell
    ruby 2.2.4p230 (2015-12-16 revision 53160) [i386-mingw32]
    ```
    -  Next, install Rails 4.9.1 by typing:
    ```shell
    gem install rails --version 4.9.1 --no-ri --no-rdoc
    ```
    -  Verify Rails version:
    ```shell
    rails -v
    ```
    Rails should reply with
    ```shell
    Rails 4.9.1
    ```

    ## Bundling and seeding data

    -  After installing environment, type:
    ```shell
    bundle install
    ```
    -  Next load the JSON data (the book chapters found at `db/ready_to_wed.json`):
    ```shell
    rake db:setup
    ```

    ## Run testing suite

    -  Specs should all be green but check with:
    ```shell
    bundle exec rspec
    ```

    ## Run on localhost

    -  Spinning up localhost is default to 3000:
    ```shell
    rails s
    ```

    ## Admin login or User login

    -  Admin can create, edit, or delete the chapter's number, title, and content. After clicking `Sign In` in the navigation header, then use the following username and password:
    ```ruby
    username: admin
    password: supersecret
    ```
    For a regular User (no CRUD abilities for Book Chapters):
    ```ruby
    username: user
    password: supersecret
    ```



      
