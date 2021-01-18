# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User Stories

```
As a time-pressed user,
So that I can quickly go to web sites I regularly visit,
I would like to see a list of bookmarks.
```

![Bookmark Manager domain model](./public/images/bookmark_manager_1.png)


## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```
### To run the BookmarkManager app:
```
Set up the database

Connect to `psql` and 
Create the `bookmark_manager` and `bookmark_manager_test` databases:

 ```
 CREATE DATABASE bookmark_manager_test;
 ```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

 ### To run the Bookmark Manager app:

 ```
 rackup -p 3000
 ```

 To view bookmarks, navigate to `localhost:3000/bookmarks`
 To view bookmarks, navigate to `localhost:3000/bookmarks`.
rackup -p 3000
```

### To run tests:

```
rspec
```