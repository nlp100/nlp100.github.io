# NLP 100 Exercise 2020

This is the canonical repository for NLP 100 Exercise 2020.

## Environment Setup

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

### macOS

If you don't have the basic developer toolkit installed, you need to run:

    xcode-select --install

(For macOS version < 10.15) The Ruby 2.6 has integrated into macOS 10.15. You may have to manually install the latest version of Ruby if you are using the previous version of macOS. Kindly run the following command to install it through [Homebrew](https://brew.sh/):
    
    # Skip this line if you have installed Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew install ruby

If you are using macOS built-in Ruby, run the following commands to install using local mode: (it may be risky to use global mode to install due to macOS SIP and potential permission problems)

    gem install --user-install bundler jekyll
    bundle install

Last but not least, remember to configure your shell environment. Please note that you may change `PATH=` and `.zshrc` according to your environment.
    
    # For built-in Ruby and zsh
    echo 'export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"' >> ~/.zshrc
    source ~/.zshrc

The rest steps are the same as the Ubuntu/Debian part.

### Windows

Install Ubuntu on Windows Subsystem for Linux, and follow the same procedure for Ubuntu.

## License

Refer to the [LICENSE](LICENSE) file for details.

## Contact

We welcome feedback/suggestions as issues and pull requests in the GitHub repository. If you would like to contact us about a matter aside from feedback/suggestions, please send an email to nlp100 at nlp.c.titech.ac.jp.