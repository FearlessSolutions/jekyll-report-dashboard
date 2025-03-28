# jekyll-report-dashboard

This is a theme created for use with the [Publish Playwright](https://github.com/FearlessSolutions/publish-playwright) demo to create a GitHub Pages reporting dashboard that is automatically updated using GitHub Actions. This theme is based heavily on [minima](https://github.com/jekyll/minima), but uses [tailwind css](https://tailwindcss.com/) for styling.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-report-dashboard"
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install jekyll-report-dashboard
```

## Configuration

Add the following configurations to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-report-dashboard

# `coverage` values are used by the code coverage summary to determine how the 
# coverage value should be color coded. 
coverage:
  # Define the minimum amount of test coverage that is acceptable for passing
  # values equal to or greater than this will be colored green
  pass: 
    lines: 90
    functions: 85
    statements: 90
    branches: 80
  # Define the minimum amount of test coverage that is considered a failure
  # values equal to or less than this will be colored red
  fail:
    lines: 70
    functions: 65
    statements: 70
    branches: 60
  # values that fall between pass and fail will be colored yellow
    
# `nav_pages` values are used to define which pages will appear in the top navigation
# the pages will appear in the order listed below
nav_pages:
  - coverage.markdown
  - playwright-reports.markdown
  - releases.markdown

# `defaults` values are used by jekyll to set default configuration based on scope
# this setting applies the `release-note` layout to all posts in the `_posts/release` directory
defaults:
  - scope:
      path: "_posts/releases/*"
      type: "posts"
    values:
      layout: "release-note"
```

## Usage

Because this theme requires postcss processing with tailwind, it does not work like standard gem-based themes. You will need to import the source code into your project after you install the gem. To copy in the gem code execute:

```sh
rsync -aivP $(bundle info --path jekyll-report-dashboard)/ .
```

If there are updates to the gem that you would like to incorporate, update the gem and run the sync command again:

>[!warning]
>If you have made changes to the theme code files locally, this will **OVERWRITE** those changes. Carefully review
>the changes in git before merging them into your project.

```sh
bundle update
rsync -aivP $(bundle info --path jekyll-report-dashboard)/ .
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/FearlessSolutions/jekyll-report-dashboard. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
