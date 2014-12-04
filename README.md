Rails Beginner Cheat sheet
=========================

A cheat sheet for Rails beginners, taking care of a lot of basic stuff and information. Aimed at helping beginners to look up stuff.

You can view this cheat sheet in all its _beauty_ here: http://www.pragtob.info/rails-beginner-cheatsheet/

As opposed to other cheat sheets it isn't necessarily aimed at brevity, but comprehensibility. It also takes care of the very basics, like cd on the command line, that beginners sometimes forget or confuse.

Originally created for my RailsGirls project group, as it became apparent that it would be cool to be able to have a place to look up the common stuff.

How to contribute?
==================
Contributions are very welcome. Just go ahead and open a pull request. Be it corrections, new content or some styling (I haven't exactly mastered styling... yet).

Any contribution will be repaid with eternal gratitude!

Here's how you can make changes.

Fork the repository to your own GitHub account.

Download the project:

```
$ git clone git@github.com:MyGitHubAcoount/rails-beginner-cheatsheet.git
$ cd rails-beginner-cheatsheet
```

It is best to create a new branch to contribute (not necessary though):

```
$ git checkout -b my-new-branch
```


Make your changes.

Commit and push to the remote repository:

```
$ git commit -am "some helpful comment"
$ git push origin my-new-branch
```

Make a pull request (when you check the repository out online at github you should see a big green button to make a pull request shortly after you pushed the branch).

Get the site running locally
============================

To get the site running locally (for development/contribution or trying it out) enter the following commands on your command line in the folder of this repository (after you cloned etc. as described above):

```
bundle install
jekyll serve
```

This assumes you already have Ruby installed :)

Now you can visit http://0.0.0.0:4000/ to see the website locally! Yay you!

Generate a PDF
==============

The Rake task *create_pdf* will write a PDF file from an HTML document. Its default behavior is to create RailsBeginnerCheatSheet.pdf from ./_site/index.html. It runs Jekyll build to ensure the source file is up to date.

```
rake cheatsheet:create_pdf
```

The input, output, and formatting can be controlled with command line arguments. Ex:

```
rake cheatsheet:create_pdf -- --source='./_site/about.html' --dest='./about.pdf'
```

**Arguments**

Name          | Default Value                 | Description
--------------|-------------------------------|-------------------------------------
--source      | ./_site/index.html            | HTML file from which to create a PDF.
--dest        | ./RailsBeginnerCheatSheet.pdf | Path where output should be written.
--format      | Letter                        | Paper size format
--orientation | Landscape                     | Orientation of the PDF document.
