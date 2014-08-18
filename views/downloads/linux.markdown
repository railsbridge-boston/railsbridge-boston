# Linux Downloads

If you use Linux on your laptop, and would prefer to install Ruby yourself
instead of using the virtual machine, you can download a few things ahead of
time.

### Installing Dependencies

For APT-based distributions:

    <pre>
    sudo apt-get update
    sudo apt-get install build-essential zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libncurses5-dev libffi-dev
    sudo apt-get install nodejs sqlite3 libsqlite3-dev wget
    </pre>

For Yum-based distributions:

    <pre>
    sudo yum update
    sudo yum install gcc automake zlib-devel libyaml-devel openssl-devel gdbm-devel readline-devel ncurses-devel libffi-devel
    sudo yum install nodejs sqlite sqlite-devel wget
    </pre>

For Arch-based distributions:

    <pre>
    sudo pacman -Sy
    sudo pacman -S gcc make zlib ncurses openssl readline libyaml gdbm libffi
    sudo pacman -S nodejs sqlite wget
    </pre>

These may need to be adjusted for the particular release you are using.
For other distributions, find the equivalent packages in your package
management system.

## Ruby Build Tools

You'll build Ruby with the same tools that we use to create the virtual
machine. To get them from GitHub:

    <pre>
    git clone https://github.com/postmodern/chruby
    git clone https://github.com/postmodern/ruby-install
    </pre>

Remember where you put these directories (in your home directory is fine).

You are now ready to [build Ruby at the Installfest](/installfest/linux_novm)!
