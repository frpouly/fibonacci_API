# Logbook

I have one week to complete the project, at the moment I am writing those lines, we are the 11th of December and have until the 18th to send it.

## Friday

The first thing I need to do is to create my GitHub repository. After that (and updated my Rubymine license), I began looking around the web to find more informations about Ruby APIs.
I found a first interesting article : [https://www.synbioz.com/blog/tech/api-ruby-rails-gem-grape]().
I also found on GitHub may interesting and already done APIs to calculate the Fibonacci sequence, however I preferred not to look at them in the first time, but it was kind of cool to know that it exists if needed in the future and to compare, once my API will be done, if my performances are OK or not.

I wanted, from the beginning, to implement tests, and maybe a CI pipeline in GitHub, so I also looked information about this.

I chose from the beginning to do it in Ruby, mainly because I did a few projects using Ruby, I think it is a great language and mostly because it is used by Perfect Memory.

This night, I also decided which git workflow I will be using ([Git Feature branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)).

Most of the researches I made to find out how to make an API using Ruby, I ended up on articles about Rails, and sometimes about Sinatra. I have already made 2 projects using Rails, and I know that a lot of its features will not be useful, and as it is a whole framework, it can be heavy for this project. Sinatra is much more lightweight than Rails, and easier, so I decided to use it.
[Sinatra's GitHub repository](https://github.com/sinatra/sinatra)

Finally this day I also created a new project on GitHub to decompose the project and have a good vision of the things to do.

## Saturday

I updated the API to return the number at the end of the Fibonacci sequence when the user asks the route '/api/v1/fibonacci/:number'.

It is a very basic version, and it will be upgraded after.

Afterthat, I will try to create a CI pipeline for my application [https://joachim8675309.medium.com/jenkins-ci-pipeline-with-ruby-62017469c7c9](https://joachim8675309.medium.com/jenkins-ci-pipeline-with-ruby-62017469c7c9)

It took quite a while, as I also had to deploy a Jenkins server on my machine, but at the end, my pipeline was working fine.

![logbook_images/ci_pipeline.png](logbook_images/ci_pipeline.png)

I also wanted to add a trigger to automatically run the tests each time I would push or merge something into the branches main or dev, unfortunately, this could be done with github's webhooks, but to use it my Jenkins should be online, which is not the case at the moment.




