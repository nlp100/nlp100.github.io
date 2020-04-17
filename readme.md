NLP 100 Exercise 2020
=====================

This is the canonical repository for NLP 100 Exercise 2020.

Environment Setup
-----------------

(Windows and macOS instructions to come later)

For Ubuntu/Debian users, the following dependencies need to be installed.

    apt install ruby ruby-dev build-essential

When that has been installed, run the following commands:

    gem install bundler
    bundle install

Then you can run the development server with this command:

    jekyll serve

You should be able to access the development server through [http://127.0.0.1:4000](http://127.0.0.1:4000).

Note that the default port (4000) used by [Jekyll](https://jekyllrb.com/) is also used by other tools, such as [NoMachine](https://www.nomachine.com/) - if the command above silently exits, then you will need to specify a different port.

    jekyll serve --port 4001

For ChromeOS users, as Jekyll will be running inside a Crostini container, to access it from the host OS you will also need to bind it to all hosts, like below:

    jekyll serve --host 0.0.0.0

License
-------

Refer to the [LICENSE](LICENSE) file for details.

Contact
-------

We welcome feedback/suggestions as issues and pull requests in the GitHub repository. If you would like to contact us about a matter aside from feedback/suggestions, please send an email to nlp100 at nlp.c.titech.ac.jp.