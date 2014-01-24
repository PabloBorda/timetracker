Web Tool to track working hours. When login you see a big time counter, and an input to annotate what are you doing. Then tasks are commited.And you can browse them. I wrote this page in a single day, to track my developers. The idea is similar to paymo, but I released as opensource. And has no native client, only web by the time.

This tracker is written on top of the sinatra framework and mysql. 

To install this software:

- Install ruby 1.9.3
- Install the required gems:

gem install sinatra
gem install sinatra-staticassets
gem install sinatra-assetpack
gem install ratpack
gem install http
gem install sinatra-activerecord

And once all gems are installed, 


ruby tracker.rb 


If it does not start, install the extra gem it required. 


Restore the mysql database from the .sql dump file.


Thank you, and any contributions are welcome.



Pablo


