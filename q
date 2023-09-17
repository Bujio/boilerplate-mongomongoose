[33mcommit fb56a1cd2841729733d801d91455b54d5c84ee7d[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Bujio <javier.vivas@icloud.com>
Date:   Sun Sep 17 13:49:00 2023 +0200

    modify findPeopleByName

[1mdiff --git a/myApp.js b/myApp.js[m
[1mindex 7c71c61..3232a74 100644[m
[1m--- a/myApp.js[m
[1m+++ b/myApp.js[m
[36m@@ -34,7 +34,10 @@[m [mconst createManyPeople = (arrayOfPeople, done) => {[m
 };[m
 [m
 const findPeopleByName = (personName, done) => {[m
[31m-  done(null /*, data*/);[m
[32m+[m[32m  Person.find({ name: personName }, (err, personFound) => {[m
[32m+[m[32m    if (err) return console.log(err);[m
[32m+[m[32m    done(null, personFound);[m
[32m+[m[32m  });[m
 };[m
 [m
 const findOneByFood = (food, done) => {[m
