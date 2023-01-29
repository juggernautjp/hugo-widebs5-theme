
> **Note:** This README is cited from [Hugo-Module-Bootstrap](https://gitlab.com/writeonlyhugo/hugo-module-bootstrap)

This is a [Hugo module](https://gohugo.io/hugo-modules/) that packages the
[Bootstrap v5](https://getbootstrap.com/) SCSS and JavaScript source ready to be used in Hugo.

You need the Hugo extended version and [Go](https://golang.org/dl/) to use this component.

## Use

Add the component to your Hugo site's config:

```yaml
module:
  imports:
    - path: "gitlab.com/writeonlyhugo/hugo-module-bootstrap"
```

### SCSS

The Bootstrap SCSS will be mounted in `assets/bootstrap/scss`, so you can then
import either all:

```scss
@import "../bootstrap";
```

Or some bundle:

```scss
@import "../scss/bootstrap-grid.scss"
@import "../scss/bootstrap-reboot.scss"
@import "../scss/bootstrap-utilities.scss"
```

Or only what you need:

```scss
// Configuration
@import "../bootstrap/scss/functions";
@import "../bootstrap/scss/variables";
@import "../bootstrap/scss/maps";
@import "../bootstrap/scss/mixins";
@import "../bootstrap/scss/utilities";

// Layout & components
@import "../bootstrap/scss/root";
@import "../bootstrap/scss/reboot";
@import "../bootstrap/scss/type";
@import "../bootstrap/scss/images";
@import "../bootstrap/scss/containers";
@import "../bootstrap/scss/grid";
@import "../bootstrap/scss/tables";
@import "../bootstrap/scss/forms";
@import "../bootstrap/scss/buttons";
@import "../bootstrap/scss/transitions";
@import "../bootstrap/scss/dropdown";
@import "../bootstrap/scss/button-group";
@import "../bootstrap/scss/nav";
@import "../bootstrap/scss/navbar";
@import "../bootstrap/scss/card";
@import "../bootstrap/scss/accordion";
@import "../bootstrap/scss/breadcrumb";
@import "../bootstrap/scss/pagination";
@import "../bootstrap/scss/badge";
@import "../bootstrap/scss/alert";
@import "../bootstrap/scss/progress";
@import "../bootstrap/scss/list-group";
@import "../bootstrap/scss/close";
@import "../bootstrap/scss/toasts";
@import "../bootstrap/scss/modal";
@import "../bootstrap/scss/tooltip";
@import "../bootstrap/scss/popover";
@import "../bootstrap/scss/carousel";
@import "../bootstrap/scss/spinners";
@import "../bootstrap/scss/offcanvas";

// Helpers
@import "../bootstrap/scss/helpers";

// Utilities
@import "../bootstrap/scss/utilities/api";
```

The Hugo Pipes setup to process the above is:

```go
{{ $styles := resources.Get "scss/styles.scss" | resources.ToCSS }}
<link rel="stylesheet" href="{{ $styles.Permalink }}" media="screen">
```

### JavaScript

```js
import Alert from 'bootstrap/js/src/alert'
import Button from 'bootstrap/js/src/button'
import Carousel from 'bootstrap/js/src/carousel'
import Collapse from 'bootstrap/js/src/collapse'
import Dropdown from 'bootstrap/js/src/dropdown'
import Modal from 'bootstrap/js/src/modal'
import Offcanvas from 'bootstrap/js/src/offcanvas'
import Popover from 'bootstrap/js/src/popover'
import ScrollSpy from 'bootstrap/js/src/scrollspy'
import Tab from 'bootstrap/js/src/tab'
import Toast from 'bootstrap/js/src/toast'
import Tooltip from 'bootstrap/js/src/tooltip'
```

The Hugo Pipes setup to process the above is:

```go
{{ $indexJS := resources.Get "js/index.js" | js.Build }}
<script src="{{ $indexJS.Permalink }}"></script>
```
