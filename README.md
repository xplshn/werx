### Werx

 - This is a straight port of werc.cat-v.org's style + the "vanity" css of cat-v.org that we all love.
 - Via the inclusion of @media, the site supports dark & light devices, as well as small screens. This can, of course, be completely removed. The CSS of cat-v.org can be used as the style.css of this theme, without any problems, just remember to hide the only new class I added, that is: .menu-toggle

### Usage
 - Create and initialize a git repo
 - Create ./www & ./www/contents/posts or ./www/contents/anything 
 - Create a [./www/config.toml](https://raw.githubusercontent.com/xplshn/alicelinux/refs/heads/master/www/config.toml) for your site
 - Create [.github/workflows/static.yaml](https://raw.githubusercontent.com/xplshn/alicelinux/refs/heads/master/.github/workflows/static.yaml), replace the line that says `gen.sh` with `hugo`
 - `git add . && git commit -s -m "[www]: create site"`

Once you've done this, you've got yourself and your readers a nice site, hosted for free, and updated whenever you push something. Now remember to add the UNLICENSE + optional ISC & MIT licenses to the repo, so that in case you do write something meaningful or useful, it can be used by others and benefits humanity.

###### NOTE: The usage of ./contents/posts makes the section "Recent Posts" appear on your home page, where as using any other folder name will simply add the section to the sidebar, without altering the "Recent Posts" section.

##### Acknoledgements:
- 9cursor, the asset comes from Plan 9 and is not part of the original WERC theme, but I think it is a nice touch.
- SerenityOS Emoji font, it is imported in baseof.html, because I wanted emojis to render correctly and to not break monospacing. + It looks nice!
- The creator of the original hugo theme, even if I've already removed all custom classes and now this has become a 1:1 port of werc, I used the original theme for a while, and it actually looked almost as good as cat-v.org
- The enlightened people over at the Cat-v.org Random Contrarian Insurgent Organization
- Plan 9 for reigniting my interest in computing and giving me hopes that there exists a viable alternative to all of this BS (unix, unix clones, copylefted crap, communist warez, paid warez, poorly written C++ games designed for Windows and ported to Linux via a gigantic compat layer, web "technology", javascript, xml, and anything derived from xml, that includes html, OOP, etc)

## License

Public domain, because so called ‘intellectual property’ is an oxymoron.

Alternatively if your prefer it or your country’s brain dead copyright law doesn’t recognize the public domain werx is made available under the terms of the ISC & MIT licenses. Choose whichever license fits your needs best.

###### THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
