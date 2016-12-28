#路径说明

目录bundle是vim的插件，其路径应该是~/.vim/bundle，在使用git pull之后，需要在~/.vim目录中建立bundle软链。

目录sublime-text-3中存放的是sublime3的插件，其路径是~/.config/sublime-text-3，在使用git pull之后，需要在~/.config中建立sublime-text-3软链。

其他4个配置文件都有在放在~目录下，git pull之后都有需要在~目录下建立软链，软链名字前面需要增加‘.’。