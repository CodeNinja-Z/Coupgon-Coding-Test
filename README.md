# Coupgon-Coding-Test

Note: Please seed the database before running the app. It sets up the golf club and the owner. The first user is owner user, and the password for all users is the same, 'password123'.

Funtionalities Completed:

1. Seperate user roles as normal user and owner. 
   (1) The app has two portals after login for customer users and golf club owner respectively.
   (2) Please seed the database before running the app. The first user is set to be owner by default. The golf club will be created along
       with owner user, as well as other customer users and a few reservations.
   (3) The purpose of doing this is to give the capability to both owner and customers to edit/delete reservations.
       Setting the roles doesn't use any gem for the sake of saving time. The simpler way is used by adding role column in users table 
       since there's only one owner.

2. Tee times are separated by 20 minutes.

3. Only one user may book a given twenty-minute slot.

4. The golf club is open for bookings from 9am to 5pm every day.

5. Users have the mechanism to see if a time is already booked.

6. Users are able to cancel a booking.

7. Build simple front-end rendering using Bootstrap.
   (1) The column grids are not used for the purpose of saving time. Customized media queries are used as an alternative.
   (2) The book reservations section is a simple datetime field. I didn't integrate calendar gem for saving time. Since this test is not
       front-end oriented.
   
8. All models, controllers and feature are tested using Rspec, Capybara and FactoryGirl.
   Note: I came across a problem in the controller tests. My test users can't sign in by devise for all the 'post' and 'put' actions.
   So I had to leave out the #create and #update actions untested. The rest of the actions are tested.
   Models and feature are all covered by test.
   I've never met such problem in testing. I finished the whole app at Monday night except the extra hours spent trying to fix this problem
   at Tuesday night.I tried a few ways and searched a lot but didn't solve this problem in the end.
