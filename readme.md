A Message to the future of ASIT

Hello! Congratulations on nearly completing a year of data sciences, this is a message from the 2017-2018 Oracle class, who worked on ASIT our 4th term. We coded all of the html, css, and php files, and worked on inserting a database. We coded in Sublime, using bootstrap, and used a free 14 day trial of Navicat for the database. 

We found a few problems with the ERD given to us by previous years(On the last page of the "Information About the Project" file), and we made the following changes:
We do not feel that the QA Linker and the Profile linker allow the database to function properly, and thus we have removed these entities and connected the PERSON entity directly to ANSWER, in a 1:M(every answer belongs to only one PERSON), and ANSWER directly to QUESTION in a M:1 (Each ANSWER belongs to only one QUESTION). These changes were made later, so some of the queries will need to be updated.

Additionally, we have not tested any of the queries, as we haven't been able to until after the database is up, which did not happen until the last few days of school. 

If you need to test php, use Xampp by going on the xampp-control.exe file(after you've downloaded it) and pressing start on apache. Make sure you have replaced the htdocs folder with one with all of your code in it, and then go on chrome and type localhost:8080 in the address bar, and the code should be able to run.

Bootstrap is a great way to aide with html, just go on their website and make sure their linkers are on the top of your html page(check the ones we have made for reference), and then the bootstrap css will kick in.

The TeacherStudents page should, eventually, show a teacher all of their students and allow them to select certain ones to send a learning style question to specific students. Right now, it queries to find all PERSONs with a person_type_id of 1(the id we have arbitrarily decided means Student), but does not have any selecting capabilities and no way to tell whether or not the student belongs to the teacher)

We looked into using cookies from the login page to be able to tell what user is logged in, but we have found that these are insecure and think that SESSIONS would be the way to go to do this.



If you need to contact anyone with any questions, here are our names:

Jack Denson jdenson2019@student.amsacs.org - made all of the teacher pages and all of their queries/php pages

Ryan Hennessey rhennessey2019@student.amsacs.org - set up github, the login page, and the database

Mahish Mahendarkar mmaahendarkar2019@student.amsacs.org - made all of the parent pages

Aditya Khanna akhanna2019@student.amsacs.org - made all of the student pages

Daniel Yu dyu2019@student.amsacs.org - made all of the admin pages
