# REST APIs with Grape

If you want to build modular, versioned RESTful APIs in Ruby, then Grape is the
tool to look out for. With its strong conventions, it strives to be the perfect
solution for that small to medium size API you want to build.

## 1. Introduction

Welcome to "REST APIs with Grape"! In this lesson you'll learn about what we'll
do in this course.

## 2. Bootstrapping our Project

Now that you know what we'll do through the series of lessons, we'll start by
bootstrapping a project file structure to get started.

## 3. Uploading a File - Part 1

Let's start our first feature! We'll use Grape to upload a file. In this lesson
we'll begin with a simple test to get started with the framework.

## 4. Uploading a File - Part 2

Let's continue developing our first feature by implementing a model in our
system to represent the actual file we're uploading using Sequel.

## 5. Uploading a File - Part 3

Let's finish the file uploading feature by actually doing it. We'll use
Carrierwave to accomplish it.

## 6. Rendering JSON with Rabl

Now that we know how to upload a file using Grape, Sequel and Carrierwave,
we'll need to find a solid tool to render JSON. We'll use Rabl as it can be
integrated pretty tight with Grape.

## 7. Authentication - Part 1

In this new version of the app, we'll introduce HTTP authentication. In this
first part we'll build the support for signing users up.

### Show notes

* [SHA1 class](http://ruby-doc.org/stdlib-2.1.0/libdoc/digest/rdoc/Digest/SHA1.html)

## 8. Versions

One of the most useful features in Grape is the fact that you can host multiple
versions of your app in one single Rack application. We'll learn how to create
one different version of our application.

Later in the course we'll manage to join all different versions in a single
Rack container.

### Show notes

* [Different version modes for Grape](https://github.com/intridea/grape#versioning)

## 9. Authentication - Part 2

This is the final part on authentication as we'll be using HTTP Basic
Authentication to complete the users feature, completing our second feature,
out of a total of three.

## 10. Download a File with Custom Routes

Let's create our final big feature: download a file. We'll demonstrate the
concept of custom routing and redirecting requests.

## 11. Forcing HTTP Errors

In this lesson we'll introduce a minor fix that will improve on the file
download feature. If the wrong user attempts to download a particular file,
Grape will tell him otherwise. We'll use error handling to accomplish that.

## 12. Parameter Validation

One useful and often hard to accomplish feature is validation. Grape has
built in support for parameter validation and we'll use it to retrieve a single
file, an extra feature.

## 13. Logging, Helpers and Mounting Multiple Apps

Now that our application is complete, we can improve on it by introducing
logging and use helpers to assist on our development.

Finally, we'll assemble all versions into a single app, showing the true power
and flexibility of Grape.

* [Logging in Grape](http://github.com/intridea/grape#logging)
* [Helpers in Grape](http://github.com/intridea/grape#helpers)

## 14. Final tips

Thank you very much for taking the time in viewing this course on Grape.

If you have any feedback, visit the forums or ask us on Twitter via @tutsplus
or @josemotanet. See you soon!
