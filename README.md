# Ramen

- **Author:** [Rose McKeon](http://rosemckeon.co.uk)
- **Version:** 0.1.1
- **Licence:** MIT
- **Repo:** [git@github.com:rozeykex/ramen.git](https://github.com/rozeykex/ramen.git)
- **Issues:** https://github.com/rozeykex/ramen/issues
- **Demo:** https://roses.shinyapps.io/ramen/

## More control over your Shiny App's style and dependencies

**Ramen is a Shiny app template which provides Bootstrap v4 Alpha and custom styles to use as the libs and theme for `bootstrapPage()`, as well as web developer tools and webfonts for further appearance modification.**

Ramen makes use of bower and npm to handle development dependencies, enabling Gulp, which is used to minify assets and compile SCSS into fast loading custom distribution files. All the final app files are stored neatly in `./app` to make deployment to shiny servers simple.

Some very basic R inputs and outputs are included via R modules, so it's clear how things work. An example action button is included too, so you can see how to isolate reactions and reduce server load.

## Installation

1. Inside a new empty project folder: `$ git clone --depth=1 git@github.com:rozeykex/ramen.git ./ && rm -rf .git`
2. `$ bower update`
3. `$ npm install`

## Usage 

1. Edit `./assets` 
2. Run `$ gulp` from the project root.
3. Files output to `./app/www` are made available to your App.

> `./assets/manifest.json` controls distribution output (see [Manifest help](https://github.com/austinpray/asset-builder/tree/master/help)).

### More gulp commands

- `$ gulp watch` compiles/minifies and exports live as you edit. A self refreshing dev url can be set via manifest.json.
- `$ gulp styles` compiles and exports style changes only.
- `$ gulp fonts` exports fonts only.
- `$ gulp scripts` exports scripts only.

See: `./gulpfile.js` tasks for more details.

### Useful links

- [Bootstrap](https://v4-alpha.getbootstrap.com/)
- [Bower](https://bower.io/)
- [Manifest](https://github.com/austinpray/asset-builder/tree/master/help)
- [Gulp](http://gulpjs.com/)

### Contribution

Please feel free to contribute via Github.