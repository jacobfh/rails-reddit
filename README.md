# Rails-Reddit

Build a Rails application that works like [Reddit](https://www.reddit.com/), allowing users to post news links, vote for them, and comment on them.

## Requirements

- Each story (post) should have a link, an author, a timestamp, and a votes display.
- Posts have many comments, which are displayed on the post's show page.
- The home page should order by the most number of votes.
- Clicking on thumbs-up (or some other icon you choose) should increment a positive vote and then take you to the home page.
- Clicking on the title should take you to the post detail (show) page.
- On the post detail page, the associated comments should be displayed beneath the post.
- A user can sign in and view and manage their own posts.
- A user can post a comment when they are signed in.
- A user can sign out.
- Posts can be viewed by anyone, but only signed-in users can comment or vote.
- Styling should look intentional, but does not have to be elaborate. You can use Bootstrap or Shoelace for styling if you want.
- Deploy this application to Heroku.

## Extra features

If you finish the above, consider implementing any or all of the following:

- Allowing users to change their username, email, or password
- A page displaying all the posts that a signed-in user has up-voted
- Support for downvotes as well as upvotes
- Tests for your models
- Any other feature you feel would enhance the user experience

## Resources

- [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
- [Rails Routing from the Outside In](http://guides.rubyonrails.org/routing.html)
- [Action Controller Overview](http://guides.rubyonrails.org/action_controller_overview.html)
