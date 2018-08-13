# Celery Man
### An interactive bash startup script inspired by Paul Rudd's [celery man skit](https://www.youtube.com/watch?v=MHWBEK8w_YY).
> Now *Tayne* I can get into.

![celery](https://i.kym-cdn.com/entries/icons/mobile/000/019/413/celerrr.jpg)

Built for a [Python](https://www.python.org/downloads/) and GitHub workflow with [PyCharm](https://www.jetbrains.com/pycharm/) or [Sublime Text](https://www.sublimetext.com/) in macOS. See the aliases `cm` and `s`, used to quickly open `.py` files for editing.

Requires [virtualenv](https://virtualenv.pypa.io/en/stable/) and [Google Chrome](https://www.google.com/chrome/).

## How It Works

If configured as `.bash_profile`, this script will run on startup.

It starts by asking for the user's name, then addresses the user by name!

When prompted to run a beta sequence, it will
- `cd` into a good spot,
- make a directory with today's date,
- turn it into a virtual environment,
- clone a repo, and
- open the whole directory in PyCharm (or Sublime Text). 

Concurrently there is a 10s loading soundtrack.

## Next Steps
- [ ] Learn more bash and halve the number of lines of code
- [ ] Set username as environment variable
- [ ] Add search for GitHub repositories
- [ ] Add ability to add new sequences
- [ ] Make all directories relative
