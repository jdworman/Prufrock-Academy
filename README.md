# README
<%# 

<%# 
<%
  <%  Generates: <a href="#" onclick="new Ajax.Updater('posts', '/blog/destroy/3', {asynchronous:true, evalScripts:true});
  #            return false;">Delete this post</a>
  link_to_remote "Delete this post", :update => "posts",
    :url => { :action => "destroy", :id => post.id }

show.html.erb show profile info 
find instructor by params Id number
 %>

<%# index => 
    3 links

    link to instructor

    link to edit

    link to destroy
    create link outside loop %>    %>

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
