# Hugo.io - Werx Theme

Werx started as a fork of the **Classic** theme, written by [goodroot](https://goodroot.ca). I
used this as the base for Werx, which is a port of the [werc][http://werc.cat-v.org] default 
theme. 


### Instructions

1: Install Hugo.

```
brew install hugo
```

2: Create a new site.

```
hugo new site classic
```

3: Change to themes dir.

```
cd classic/themes
```

4: Clone the repo

```
git clone git@github.com:pard68/hugo-werx.git
```

5: Copy the `content/`, `static/css`, and `config.toml` from the `exampleSite` directory into the classic directory. The existing `content/`, `static/css`, and `config.toml` files will be over-written. 

6: Run `hugo server` within `werx/` and enjoy and customize to your hearts content!

### New Posts

To make new posts, simply use the command line:

```
hugo new post/good-to-great.md
```

### Header Colour

To adjust the header colour, head to `static/css/style.css` and change...

```
header {
    background: #613DC1;
}
```

... `background:` to any colour value you'd like!

For header font:

```
header a {
    color: #fff;
}
```

Change `color:` to a nice matching colour.

#### Screenshot

