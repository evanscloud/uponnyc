# UponNYC - Volunteering Opportunities in NYC

## Overview

UponNYC provides a simple way to search for volunteering opportunities in New York City. This application uses AngularJS for a seamless single page experience and Rails backend to provide data. With the help of [VolunteerMatch's](https://www.volunteermatch.org) Public API, this application is also providing current up-to-date opportunities that are available for registration.

New York City is home to one of the world's most largest and diverse urban populations. The goal is to provide an easy tool to bring people together and build empowering communities. If each individual provides even the smallest effort, the entire community will thrive as a whole. Together, we can make a change. Lend a hand and make a difference today.

I would like to thank [VolunteerMatch.org](https://www.volunteermatch.org) for use of there API and for creating a vision of bringing people together. They strive to do more when it comes to connecting and empowering individuals to help each other. If you have time, take a look at the initiatives they advocate. Please support them on there quest to continue making a difference.

## Installation

### Fork and clone repo
```
$ git clone git@github.com:evanscloud/uponnyc.git
```

### Switch to directory
```
$ cd uponnyc/
```

### Execute for dependencies
```
$ bundle install
```

### Seed database
```
$ rake db:migrate
```

### Startup the server
```
$ rails s
```

### Enter in browser to view
```
$  localhost:3000
```

## Bugs/Issues

If you encounter any bugs or issues, feel free to open an issue and/or DM me [@evanscloud](https://twitter.com/evanscloud).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evanscloud/uponnyc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

Copyright (c) 2016, Evan Ng

The application is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
