# domlight [![Build Status](https://travis-ci.org/h2non/domlight.svg?branch=master)](https://travis-ci.org/h2non/domlight) [![Version](https://img.shields.io/bower/v/domlight.svg)](https://github.com/h2non/domlight/releases) [![Gitter chat](https://badges.gitter.im/h2non/domlight.png)](https://gitter.im/h2non/domlight) [![Stories in Ready](https://badge.waffle.io/h2non/domlight.png?label=ready&title=Ready)](https://waffle.io/h2non/domlight)

A lightweight and dependency-free micro library to easily spotlight DOM elements

`domlight` was originally based on [Focusable](https://github.com/zzarcon/focusable), but it includes missing features such as multiple elements spotlight, several refactors and uses pure DOM API (no jQuery dependency)

## Showcase

![](https://raw.github.com/h2non/domlight/master/showcase/list.gif)

![](https://raw.github.com/h2non/domlight/master/showcase/header.gif)

![](https://raw.github.com/h2non/domlight/master/showcase/elements.gif)

## Installation

Install via [Bower](http://bower.io)
```bash
bower install domlight
```

Install via [Component](http://component.github.io)
```bash
component install h2non/domlight
```

Install via [npm](http://npmjs.org)
```bash
npm install domlight
```

Or loading the script remotely
```html
<script src="//cdn.rawgit.com/h2non/domlight/0.1.1/domlight.js"></script>
```

## Browser Support

![Chrome](https://raw.github.com/alrra/browser-logos/master/chrome/chrome_48x48.png) | ![Firefox](https://raw.github.com/alrra/browser-logos/master/firefox/firefox_48x48.png) | ![IE](https://raw.github.com/alrra/browser-logos/master/internet-explorer/internet-explorer_48x48.png) | ![Opera](https://raw.github.com/alrra/browser-logos/master/opera/opera_48x48.png) | ![Safari](https://raw.github.com/alrra/browser-logos/master/safari/safari_48x48.png)
--- | --- | --- | --- | --- |
+5 | +3.5 | +9 | +10 | +5 |

## API

###### Set spotlight using jQuery/Zepto selector

```javascript
Domlight($('#my-element'))
```

###### Set spotlight

```javascript
Domlight(document.querySelector('#my-element'), options)
```

###### Hide spotlight

```javascript
Domlight.hideAll()
```

###### Get focused DOM elements

```javascript
Domlight.getActiveElements()
```

###### Get options

```javascript
Domlight.getOptions()
```

##### Options

Property | Value | Default | Description
------------ | ------------- | ------------- | -------------
fadeDuration | Number | 700 | Duration of the overlay transition (milliseconds).
hideOnClick | Boolean | false | Hides the overlay when the user click into it.
hideOnESC | Boolean | false | Hides the overlay when the user press Esc.
findOnResize | Boolean | false | Refind the element in the DOM in case that the element don't still exists.

## Development

Clone this repository and switch into it
```bash
git clone https://github.com/h2non/domlight && cd domlight
```

Install development dependencies
```bash
npm install
```

Run tests
```bash
make test
```

Run the example demo and open [localhost:8000](http://localhost:8000)
```
make demo
```

## Contributing

0. Check [open issues](https://github.com/zzarcon/focusable/issues)

1. [Fork it](https://github.com/zzarcon/focusable/fork)

2. Create your feature branch (`git checkout -b my-new-feature`)

3. Commit your changes (`git commit -am 'feat(name): description'`)

4. Push to the branch (`git push origin my-new-feature`)

5. Create a new [Pull Request](https://github.com/zzarcon/focusable/compare/)

## Authors

- [Hector Zarcon](https://github.com/zzarcon) - Focusable author
- [Tomas Aparicio](https://github.com/h2non)

## License

MIT (c) 2015 - Tomas Aparicio and contributors
