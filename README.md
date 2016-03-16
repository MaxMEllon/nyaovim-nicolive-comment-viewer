# About

*nicolive comment viewer embeded on Nyaovim*

# Demo

![](https://raw.githubusercontent.com/MaxMEllon/demos/master/nyaovim-nicolive-comment-viewer/ss.gif)

# Installation

If you use vim-plug, all you need is adding below line to your init.vim

```vim
Plug 'MaxMEllon/nyaovim-nicolive-comment-viewer', {"do": "npm install -g nicolive@0.0.4"}
```

Please create `~/.config/nyaovim/account.json` and write to `~/.config/nyaovim/account.json`

```json
{
  "email" : "hogepoge@sample.com",
  "password" : "xxxxxxxxxx",
}
```

# Usage

| command | args | description  |
|---|---|---|
|`:CommentViewerOpen` | liveid (lvXXXXXXX, nsen/hotaru) | Open nicolive comment viewer window with connect to nicolive on liveid. |
|`:CommentViewerClose` | --- | Close nicolive comment viewer window |
|`:CommentViewerPost` | comment | Post comment to nicolive if nyaovim is connected to live |

# Sample configration

~/.config/nyaovim/nyaovimrc.html

```html
<dom-module id="nyaovim-app">
  <template>
    <style>
.horizontal {
  display: flex;
  width: 100%;
  height: 100%;
}
neovim-editor {
  width: 100%;
  height: 100%;
}
    </style>
    <div class="horizontal">
      <neovim-editor id="nyaovim-editor"
          argv$="[[argv]]"
          font-size="14"
          font="Ubuntu Mono,monospace"
          line-height="1.0"
      ></neovim-editor>
      <mini-browser width="700" editor="[[editor]]"></mini-browser>
      <comelon-view editor="[[editor]]"></comelon-view>
    </div>
  </template>
</dom-module>
```

# Dependency

  - [nicolive@0.0.4](https://www.npmjs.com/package/nicolive)

# LICENSE

  This software is released under the MIT License, see LICENSE.txt.
