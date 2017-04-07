# Alex Kradin CareDash Challenge

## Instructions

* fork and clone this repository
* install dependencies with `bundle install`
* run server with `rails server`
* navigate to `localhost:3000`

##Description

A code challenge that turns the provided mockup into a functional and responsive
web page. The web page also fully supports adding and logging in with existing
users (provided they have been created on the local database). In order to log
out, simply close the window


##Achievments

The challenge suggested hard-coding in some credentials for the authentication
portion of the page. Having never built an auth system from scratch I figured
I would try this out. More on this in the challenges section.

The page is fairly responsive without using any CSS frameworks such as
Bootstrap

This app does not use too much `erb` but I was able to see it's benefits
if building a full-stack Rails app

##Challenges
I have only built Rails APIs in the past. Furthermore, the auth portion had already
been provided. Since the instructions I was following gave no alternative to having
sign up and sign in at separate routes and the moclups had that all on one page,
 I came up with the solution to have `/sign-up` be the root of the app and have
a link in the Sign Up form to `/login`. Then I built up the page around these
forms so functionally, other than the forms themselves, they are the exact same.

Implementing auth itself provided challenges and opportunities to debug. Since
the routing system essentially stays in the same place, flash messages and
consistnely checking the server were beneficial in solving any bugs that came
about, the biggest of which was the sign-in form refreshing the page.
When I checked the server I found it was accepting empty inputs, upon changing
the `POST` route to `sessions#create`, the issue was resolved.


##Credits
All logos and icons are from caredash.com. [Cover photo credit here.]
(https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Boston_from_BU_Bridge_WADE.jpg/1099px-Boston_from_BU_Bridge_WADE.jpg)
