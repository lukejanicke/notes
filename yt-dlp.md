# yt-dlp

- [ ] Move commands to [Terminal Commands and Shortcuts](Terminal%20Commands%20and%20Shortcuts.md). Or not?

- [yt-dlp (GitHub)](https://github.com/yt-dlp/yt-dlp)

## Commands

Download the video from a URL.

```shell
youtube "<URL>"
```

List available formats for a video.

```shell
youtube -F "<URL>"
```

> [!note] FFMPEG
> To select and merge video and audio formats requires [FFmpeg](FFmpeg.md).

Download a video with the best available MP4 video and M4A audio.

```shell
youtube -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" "<URL>"
```

> [!note] WebM
> [WebM](https://www.webmproject.org) is a container format that typically uses VP8/VP9 for video and Vorbis/Opus for audio. However, the best MP4 may still use VP9 which QuickTime will not play. To download the best H.264/AVC to play on Mac (without third party software such as [mpv](mpv.md) or [IINA](https://iina.io)) look for the best video and audio using `avc1` and `mp4a` codecs. ID `137` typically represents 1080p AVC video and ID `140` typically represents 128k M4A audio.

Download a video with the video at ID `137` and audio at ID `140`.

```shell
youtube -f 137+140 "<URL>"
```

## Install

Install **yt-dlp** with [Homebrew](Homebrew.md).

```shell
brew install yt-dlp
```

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **yt-dlp** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshrc/yt-dlp.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/yt-dlp.fish
```
