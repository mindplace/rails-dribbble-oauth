Todo:
* figure out how to save state temporarily: user info
* link to open issues
* get Dribbble screenshots
* write process portion

# rails-dribbble-oauth
A lightweight engine gem/plugin with no dependencies for authenticating users through Dribbble. Provides Dribble oauth calls to authenticate a given user, and receive back user's Dribbble information.

<hr>

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails-dribbble-oauth'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rails-dribbble-oauth
```

<hr>

## Usage
In order to authorize a user via Dribbble and/or get Dribbble information for that user, you'll need to register your application with Dribbble and input a specific callback link to be handled by the gem. You'll take the variables Dribbble will provide you and echo them into your environment. Then you'll build links to use this service, and finally you'll receive user info via your own `users#create` route.  

* Register your app with Dribbble and give correct callback link
* Echo environment variables from Dribbble

### Build your links in the following way:
```
<%= link_to "your_link", dribbble_oauth_request_path(user_id: @user.id) %>
```

### Get back user information from Dribbble

### Program flow:
Don't add any routes or controllers, that is the purpose of the gem.

User will be redirected to authorize your application to access their Dribbble information via this scree:

// add screenshot

The callback from Dribbble is also handled by the gem's routes and controller. Once the callback runs, the

<hr>

## Contributing
Please make PRs for any aspect of this service that you feel is lacking. You can also check out [open issues]. I appreciate any feedback, help, and contributions!

<hr>

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
