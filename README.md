# RailsDecal Final Project

Title TravelBlog

Team Members: Vincent Budrovich, Gina Hwang

DemoLink: http://afternoon-chamber-1232.herokuapp.com/

###Idea 

A travel blog that will allow the travelers (Admins) to post personal posts as a group on the blog. All users can view individual posts, comment, and like both posts and comments. Each post also has a country tag, indicating where the poster was at the time.

###Models and Dscriptions

######User
- Has email and many comments and likes
- Some users are Admins and are able to create posts

######Post
- Has a title, content, and has many comments and likes
- Belongs to a user (who is an admin)

######Comment
- Has text, likes, and belongs to a user.

######Features
- Users can log in
- Users can view posts, post comments, like comments and posts (anyone can view the posts on the homepage)
- Admins can make posts in addition to the above

######Division of Labor
Vincent
  - made views, controllers, comments, posts

Gina
  - made users, admin, heroku fun



