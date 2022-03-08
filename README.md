# README

Hello!
This is a ruby challenge for developers to try out during our interview process.

Please clone this to your machine from this repository.
**Please do not create a fork**, while you will use `git` on your machine as
part of this challenge, you will not be pushing your code to a public space.

Instructions on how to submit your work will be at the end of this readme.

Please do not spend more than 3 hours on this project.

## Getting Started

Please clone this repository and use [Visual Studio Code](https://code.visualstudio.com/) to open this project.
This project uses [Visual Studio Code Remote - Containers](https://code.visualstudio.com/docs/remote/containers) so that you can easily develop with the right ruby, rails, etc. all pre installed.
To use VSCode Remote Containers, you will need to have Docker installed.
We use [Docker Desktop](https://www.docker.com/products/docker-desktop) and it works well with VSCode for projects like this.

Check that the "Remote - Containers" plugin is installed.

![](/readme/plugin.png)

If it isn't then hit the install button and it should look like this

![](/readme/installed.png)

Installing it may require that VS Code gets restarted, look for a pop up in the bottom right for that indication.

### Project Setup

When you open this git repository in VSCode you should see the following pop up in the bottom right corner.

![](/readme/reopen.png)

Click "Reopen in Container"

In case it disappeared, you can open the command pallete (ctr+shift+p / cmd+shift+p) and type in reopen container.

![](/readme/reopen-menu.png)

This may take a few minutes as it downloads docker files preloaded with the right ruby and rails version.
It will then install dependencies necessary for this project.

It will pop open a terminal saying it has finished and press enter to make it go away.

_At the bottom of the screen, if the terminal dissapeared you can click and drag above the blue area to pull up the terminal like a drawer._

![](/readme/drawer.png)

You should see 
```
vscode ➜ /workspaces/blog (main ✗) $ 
```

Now it's time to set up the database by running a migration 
**This will take 20-30 minutes to generate data, go watch some doctor who or make a dinner**

Run 
```
bin/rails db:migrate
```

![](/readme/migration.png)

### Project Running

Now that the database is ready, you can start the server!

```
bin/rails server
```

![](/readme/running.png)

It will pop up automatically that the application is running on port 3000.
You'll be able to access it on [http://localhost:3000/]()

![](/readme/server.png)

At this point you're ready to dive into the ruby project!

-----

## Improvements

There's a few things that can be improved with this project!
It's a simulation of a blog where users can react to comments, much like hearts on twitter or thumbs up/down on youtube.

The index page [http://localhost:3000/]() has a list of "blog posts" or "Articles", you can click on them to navigate from the main page to a blog post.

Now if you look at the words they won't make sense. They are randomly chosen!
This could be lorem ipsum but that's hardly memorable at all.
**Changing the generation algorithm is out of scope, the db migration files will stay as is.**

On each blog post there are comments!
And like each blog, the comments are randomly generated.
Further, every comment can have a reaction.
See each reaction is individually recorded, much like twitter / youtube each one is tied the user who placed it.
_There are no users on this simulation, but pretend there are._

Reactions include 👍 👎 🧡 , but are stored as numeric types in the database.

![](/readme/comments.png)

### Some pages are slow

So I can visit [http://localhost:3000/articles/1]() on my machine and it takes a really long time.

![](/readme/slow.png)

A full second to render a page?
If I got on the top of _H A C K E R - N E W S_, my site would go down!

Can you cut that down to under 100ms?

Take a moment to look at other examples, github, facebook, whatever you can think of for this.

### JSON API is incomplete

Check this out, if I go to [http://localhost:3000/articles/1.json](), I can get json out!

```json
{
  "id": 1,
  "title": "why air old set part across",
  "body": "boy like boy set sure too able major your nothing send behind only problem today"
}
```

Problem is, there's no comments.
And even then, no reactions!

What can you do to add more to our JSON API?

Also there's no json for the index page.
Can you think of a way to add an index page handler with a response like:

```json
{
  "articles": [
    {
      "id": 1,
      "title": "why air old set part across"
    },
    {
      "id": 2,
      "title": "plan both good"
    }
  ]
}
```

### Administration

Without the complexness of adding users and such, can we get some forms, buttons, whatever in to manage this blog?

Some things I'd like to be able to do:
* Delete comments! (and all of their reactions)
* Add comments! Whoa
* Remove posts (and all of their comments and reactions)
* Add Posts
* Add reactions!

-----

## Submitting your work

TODO