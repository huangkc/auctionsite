This is a simplified version of a blind auction site. 

#### All Users Can

- browse available items

#### Unregistered Users Can

- register for a new account

#### Registered Users Can

- Sign in
- Sign out
- List new items
- Place bids on items
- Have a profile showing their listing and bidding activity

### Login/Logout

#### Login

_Given:_

* There is a previously registered user
* User is not currently logged in:

1. On the home page, create a link to login.
1. When a user clicks on this link they should be taken to a page with a form to
   enter their credentials.
1. If the credentials match, the user should be taken back to the homepage and the
   login link should be replaced with a logout link.
1. If the credentials do not match, the user should see the login form and an
   error message stating the credentials were not valid.

#### Logout

Given there is a previously registered user and they are currently logged in:

1. On the home page, create a link to logout.
1. When the user clicks on the logout link they should be taken to the home page
   and the links "Register" and "Login" should both be visible.

### CRUD

The user's profile page is where users are able to manage their listed items.
We'll start off by giving them the ability to add an item and then work through
the remaining CRUD actions.

#### Creating Items

_Given:_

* The registered user is signed in:

1. On the home page create a link to the user's profile page.
1. When the user clicks on the profile link they should be taken to their profile page.
1. Create a link on this page to add an item to the auction site. The item
   should include things like a name and/or title, description, when the user
   would like the auction to start and when it should stop.


After submitting an item, the user should be back on their profile page.

#### Reading Items

_Given:_

* The registered user is signed in
* There exist previously-created items

1. Create a section on the profile page to display all the items. This section
   should _not_ include the long form description of the item.

#### Updating Items

_Given:_

* The registered user is signed in
* There exist previously-created items; some owned by the logged-in user,
  others not

1. On the profile page, create an edit link associated to each of the items the
   user has created. This link should only be visible if the user logged in is the
   user that created the item.
1. When the user clicks the edit link associated to the item, they should be
   taken to a page to edit that item's details. After submitting this information
   the user should be taken back to their profile page and see the item's updates
   should be reflected on the page.

#### Deleting Items

_Given_

* The registered user is signed in
* There exist previously-created items; some owned by the logged-in user,
  others not

1. On the profile page, create a delete link associated to each of the items
   the user has created. Just like in the update section, this link should only be
   visible if the user logged in is the user that created the item.
1. When the user clicks the delete link, the user profile page should reload and
   the item should no longer be visible.

### Bidding

#### Viewing Active Items

_Given_

* The registered user is signed in
* There exist previously-created items; some owned by the logged-in user,
  others not
* There exist items which are active

Create a section on the home page to list the items that are currently
available and active. To clarify, active means the items have start date on or
before today and the end date is on or after today.

#### Creating a Bid

_Given_

* The registered user is signed in
* There exist previously-created items; some owned by the logged-in user,
  others not
* There exist items which are active

1. Make the name or title of the listed items in the home page a link. When the
user clicks on a link for an item, they should be on a page that is displaying
the details of the item. This will include the long form description and add a
section on the page to display the current number of bidders.
1. Add a form to the item detail page that will allow the user to enter a bid
amount. The submit button for the form should say "Place Bid".
1. When the user submits the bidding form, the page should reload. Where the
form was located, there should be the text "Thank you for your bid. Good luck!"
and the number of bidders section should be incremented by 1.

#### Login or Register to Bid

_Given:_

* The current user is not logged in
* The user is on the item details page for a previously-created item

In place of the bidding form, a user should see the text "To place a bid please
login or register." Both login and register should be links taking the user to
their respective pages.

### Bid on Items on the Profile Page

#### Bid on Items

_Given:_

* The registered user is logged in
* Registered user has previously placed bids on several items
* User is currently on their profile page

Create a section to display the items the user has bid on.

#### Won Items

_Given:_

* The registered user is logged in
* The registered user placed the highest bid on several items that are no longer active
* The registered user is currently on their profile page

Create a section to display the items they have won. This is items that are no
longer active (end date is before today) and the bid placed on the item is the
highest of all the bidders.

