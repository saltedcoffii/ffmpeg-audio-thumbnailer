# FFMPEG audio thumbnailer

FFMPEG audio thumbnailer (`ffmpeg-audio-thumbnailer`) is a simple audio file thumbnailer for file managers, such as nautilus, dolphin, thunar, and nemo.

## Installing on various Linux distributions

### Arch Linux, Manjaro Linux and derivatives

[ffmpeg-audio-thumbnailer](https://aur.archlinux.org/packages/ffmpeg-audio-thumbnailer/) is available in the AUR. The VCS version is [also available](https://aur.archlinux.org/packages/ffmpeg-audio-thumbnailer-git/).

Install using your favorite [AUR helper](https://wiki.archlinux.org/title/AUR_helpers), e.g.,

```
$ yay -S ffmpeg-audio-thumbnailer
```

You may also install manually using [makepkg](https://wiki.archlinux.org/title/Makepkg) to build from the AUR directly (not recommended).

```
# pacman -S --needed git base-devel
$ git clone https://aur.archlinux.org/ffmpeg-audio-thumbnailer.git --depth 1
$ cd ffmpeg-audio-thumbnailer
$ makepkg -s --asdeps
# pacman -U ffmpeg-audio-thumbnailer-*-any.pkg.tar.zst
```

Manjaro users: You can install using [pamac (aka Add/Remove Software)](https://wiki.manjaro.org/index.php?title=Pamac).

```
$ pamac build ffmpeg-audio-thumbnailer
```

### Other Linux distributions

This package should theoretically work on any Linux distribution with ffmpeg installed. If you'd like support added for your distribution, please open a [new issue](https://github.com/saltedcoffii/ffmpeg-audio-thumbnailer/issues/), after ensuring that nobody else has already requested that distro. If you are a maintainer for a distribution, please don't hesitate to add this package! Alternatively, build and install from the source directly (see below).

## Usage

After installation, file managers should automatically use the thumbnailer to give new files a thumbnail. To also give existing files a thumbnail, clear the thumbnail cache
```
$ rm -rf ~/.thumbnails
$ rm -rf ~/.cache/thumbnails
```

## Building from source

Dependencies:

  - `make` (at buildtime)
  - `ffmpeg` (at runtime)

To install the thumbnailer, run
```
# make PREFIX=/usr install
```

Remember that files installed with `make install` cannot be removed by a package manager. As far as I know, installing thumbnailers in the user's home directory is not supported.

To uninstall, run
```
# make PREFIX=/usr uninstall
```

## License and Legal

See [COPYING.md](https://github.com/saltedcoffii/ffmpeg-audio-thumbnailer/blob/master/COPYING) for details.

<a rel="license-software" href="https://www.gnu.org/licenses/gpl-3.0.en.html"><img alt="GNU General Public License" style="border-width:0" src="https://www.gnu.org/graphics/gplv3-127x51.png" height="31" />
